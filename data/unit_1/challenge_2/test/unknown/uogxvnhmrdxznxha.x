From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 10:21:18 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CELHL9027271
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 10:21:17 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DC4C1163854
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 14:21:16 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 5E9A3162AD3;
	Tue, 12 Jun 2007 14:20:05 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1Hy7E4-0008AY-8s; Tue, 12 Jun 2007 16:20:04 +0200
Received: by intern.SerNet.DE
	id 1Hy7E3-0002r4-UY; Tue, 12 Jun 2007 16:20:04 +0200
Received: by intern.SerNet.DE
	id 1Hy7E3-0002qv-B6; Tue, 12 Jun 2007 16:20:03 +0200
Date: Tue, 12 Jun 2007 16:22:29 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: jra@samba.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wzJLGUyc3ArbnUjN"
Content-Disposition: inline
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1Hy7E3-0002r4-UY@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@samba.org
Subject: Use delete_on_close for reply_unlink?
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Volker.Lendecke@SerNet.DE
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--wzJLGUyc3ArbnUjN
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, Jeremy!

The attached patch removes a little race condition for
people with real kernel oplock support, and reduces some
code paths. It changes reply_unlink to open_file_ntcreate,
set_delete_on_close and close_file.

The race condition happens if we break the oplock in
can_delete via open_file_ntcreate, we close the file,
someone else gets a batch oplock and we try to unlink.

It reduces code paths by calling SMB_VFS_UNLINK in 2 fewer
places.

Same would apply to rename_internal, but this seems a bit
more involved.

What do you think?

Volker

--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=look
Content-Transfer-Encoding: quoted-printable

Index: smbd/reply.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- smbd/reply.c	(Revision 23428)
+++ smbd/reply.c	(Arbeitskopie)
@@ -1830,11 +1830,11 @@
 }
=20
 /*******************************************************************
- Check if a user is allowed to delete a file.
-********************************************************************/
+ * unlink a file with all relevant access checks
+ *******************************************************************/
=20
-static NTSTATUS can_delete(connection_struct *conn, char *fname,
-			   uint32 dirtype, BOOL can_defer)
+static NTSTATUS do_unlink(connection_struct *conn, char *fname,
+			  uint32 dirtype, BOOL can_defer)
 {
 	SMB_STRUCT_STAT sbuf;
 	uint32 fattr;
@@ -1935,10 +1935,19 @@
 				    can_defer ? 0 : INTERNAL_OPEN_ONLY,
 				    NULL, &fsp);
=20
-	if (NT_STATUS_IS_OK(status)) {
-		close_file(fsp,NORMAL_CLOSE);
+	if (!NT_STATUS_IS_OK(status)) {
+		DEBUG(10, ("open_file_ntcreate failed: %s\n",
+			   nt_errstr(status)));
+		return status;
 	}
-	return status;
+
+	/* The set is across all open files on this dev/inode pair. */
+	if (!set_delete_on_close(fsp, True, &current_user.ut)) {
+		close_file(fsp, NORMAL_CLOSE);
+		return NT_STATUS_ACCESS_DENIED;
+	}
+
+	return close_file(fsp,NORMAL_CLOSE);
 }
=20
 /*************************************************************************=
***
@@ -1997,17 +2006,15 @@
 			return status;
 		}
=20
-		status =3D can_delete(conn,directory,dirtype,can_defer);
+		status =3D do_unlink(conn,directory,dirtype,can_defer);
 		if (!NT_STATUS_IS_OK(status)) {
 			return status;
 		}
=20
-		if (SMB_VFS_UNLINK(conn,directory) =3D=3D 0) {
-			count++;
-			notify_fname(conn, NOTIFY_ACTION_REMOVED,
-				     FILE_NOTIFY_CHANGE_FILE_NAME,
-				     directory);
-		}
+		count++;
+		notify_fname(conn, NOTIFY_ACTION_REMOVED,
+			     FILE_NOTIFY_CHANGE_FILE_NAME,
+			     directory);
 	} else {
 		struct smb_Dir *dir_hnd =3D NULL;
 		long offset =3D 0;
@@ -2066,19 +2073,17 @@
 				return status;
 			}
=20
-			status =3D can_delete(conn, fname, dirtype, can_defer);
+			status =3D do_unlink(conn, fname, dirtype, can_defer);
 			if (!NT_STATUS_IS_OK(status)) {
 				continue;
 			}
-			if (SMB_VFS_UNLINK(conn,fname) =3D=3D 0) {
-				count++;
-				DEBUG(3,("unlink_internals: succesful unlink "
-					 "[%s]\n",fname));
-				notify_fname(conn, NOTIFY_ACTION_REMOVED,
-					     FILE_NOTIFY_CHANGE_FILE_NAME,
-					     fname);
-			}
-			=09
+
+			count++;
+			DEBUG(3,("unlink_internals: succesful unlink [%s]\n",
+				 fname));
+			notify_fname(conn, NOTIFY_ACTION_REMOVED,
+				     FILE_NOTIFY_CHANGE_FILE_NAME,
+				     fname);
 		}
 		CloseDir(dir_hnd);
 	}

--6TrnltStXW4iwmi0--

--wzJLGUyc3ArbnUjN
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGbqwkpZr5CauZH5wRAs/KAJ9kNBRmrCN3Y8G7NWNmaFrypmlOpACfeEeH
LJ3RWV7CZsEuYwMTUQIW61Q=
=KPTt
-----END PGP SIGNATURE-----

--wzJLGUyc3ArbnUjN--

            

drI Dv<2
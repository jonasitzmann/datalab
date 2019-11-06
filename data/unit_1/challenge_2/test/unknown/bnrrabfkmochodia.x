From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jul  5 09:40:16 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65DeGL9026754
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 09:40:16 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9106216390B
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  5 Jul 2007 13:40:11 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 9329A162AC4
	for <samba-technical@samba.org>; Thu,  5 Jul 2007 13:39:22 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-technical@samba.org
	id 1I6RYH-0003Zw-RP; Thu, 05 Jul 2007 15:39:21 +0200
Received: by intern.SerNet.DE
	id 1I6RYH-0001YY-JC; Thu, 05 Jul 2007 15:39:21 +0200
Received: by intern.SerNet.DE
	id 1I6RYH-0001YU-9I; Thu, 05 Jul 2007 15:39:21 +0200
Date: Thu, 5 Jul 2007 15:39:37 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: samba-technical@samba.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qcHopEYAB45HaUaB"
Content-Disposition: inline
User-Agent: Mutt/1.5.13 (2006-08-11)
Message-Id: <E1I6RYH-0001YY-JC@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Add "struct smb_request"
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


--qcHopEYAB45HaUaB
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

Attached find a patch that reduces access to the global
inbuf a tiny bit. It adds a struct smb_request that contains
some of the fields from the SMB header, removing the need to
access inbuf directly. This right now is used only in the
open file code & friends, and creating that header is only
done when needed. This needs more work, but it is a start.

The second patch builds upon this and removes
get_current_mid(), another function that accesses the global
inbuf.

Commit?

Volker

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=look
Content-Transfer-Encoding: quoted-printable

=46rom a5b2401be2371c53448a196e467483d7678fa383 Mon Sep 17 00:00:00 2001
=46rom: Volker Lendecke <vl@sernet.de>
Date: Wed, 4 Jul 2007 23:53:43 +0200
Subject: [PATCH] Add "struct smb_request" to open calls to reduce global me=
mory references

---
 source/include/smb.h              |    7 +++
 source/printing/nt_printing.c     |   16 ++++----
 source/rpc_server/srv_srvsvc_nt.c |    8 ++--
 source/smbd/dir.c                 |    6 +-
 source/smbd/nttrans.c             |   53 ++++++++++++++----------
 source/smbd/open.c                |   66 ++++++++++++++++++++---------
 source/smbd/posix_acls.c          |    3 +-
 source/smbd/process.c             |   12 +++++
 source/smbd/reply.c               |   64 +++++++++++++++++++----------
 source/smbd/trans2.c              |   83 +++++++++++++++++++++++----------=
---
 10 files changed, 208 insertions(+), 110 deletions(-)

diff --git a/source/include/smb.h b/source/include/smb.h
index 9c7b32f..95889f8 100644
--- a/source/include/smb.h
+++ b/source/include/smb.h
@@ -682,6 +682,13 @@ struct current_user {
 	NT_USER_TOKEN *nt_user_token;
 };
=20
+struct smb_request {
+	uint16 flags2;
+	uint16 smbpid;
+	uint16 mid;
+	uint16 vuid;
+};
+
 /* Defines for the sent_oplock_break field above. */
 #define NO_BREAK_SENT 0
 #define BREAK_TO_NONE_SENT 1
diff --git a/source/printing/nt_printing.c b/source/printing/nt_printing.c
index 84dba9d..c0a9407 100644
--- a/source/printing/nt_printing.c
+++ b/source/printing/nt_printing.c
@@ -1291,7 +1291,7 @@ static int file_version_is_newer(connection_struct *c=
onn, fstring new_file, fstr
=20
 	driver_unix_convert(filepath,conn,NULL,&stat_buf);
=20
-	status =3D open_file_ntcreate(conn, filepath, &stat_buf,
+	status =3D open_file_ntcreate(conn, NULL, filepath, &stat_buf,
 				FILE_GENERIC_READ,
 				FILE_SHARE_READ|FILE_SHARE_WRITE,
 				FILE_OPEN,
@@ -1327,7 +1327,7 @@ static int file_version_is_newer(connection_struct *c=
onn, fstring new_file, fstr
 	pstrcpy(filepath, new_file);
 	driver_unix_convert(filepath,conn,NULL,&stat_buf);
=20
-	status =3D open_file_ntcreate(conn, filepath, &stat_buf,
+	status =3D open_file_ntcreate(conn, NULL, filepath, &stat_buf,
 				FILE_GENERIC_READ,
 				FILE_SHARE_READ|FILE_SHARE_WRITE,
 				FILE_OPEN,
@@ -1460,7 +1460,7 @@ static uint32 get_correct_cversion(const char *archit=
ecture, fstring driverpath_
 		goto error_exit;
 	}
=20
-	status =3D open_file_ntcreate(conn, driverpath, &st,
+	status =3D open_file_ntcreate(conn, NULL, driverpath, &st,
 				FILE_GENERIC_READ,
 				FILE_SHARE_READ|FILE_SHARE_WRITE,
 				FILE_OPEN,
@@ -4941,7 +4941,7 @@ static BOOL delete_driver_files( NT_PRINTER_DRIVER_IN=
FO_LEVEL_3 *info_3, struct
 			pstrcpy( file, s );
 			driver_unix_convert(file, conn, NULL, &st);
 			DEBUG(10,("deleting driverfile [%s]\n", s));
-			unlink_internals(conn, 0, file, False, False);
+			unlink_internals(conn, NULL, 0, file, False);
 		}
 	}
 	=09
@@ -4950,7 +4950,7 @@ static BOOL delete_driver_files( NT_PRINTER_DRIVER_IN=
FO_LEVEL_3 *info_3, struct
 			pstrcpy( file, s );
 			driver_unix_convert(file, conn, NULL, &st);
 			DEBUG(10,("deleting configfile [%s]\n", s));
-			unlink_internals(conn, 0, file, False, False);
+			unlink_internals(conn, NULL, 0, file, False);
 		}
 	}
 =09
@@ -4959,7 +4959,7 @@ static BOOL delete_driver_files( NT_PRINTER_DRIVER_IN=
FO_LEVEL_3 *info_3, struct
 			pstrcpy( file, s );
 			driver_unix_convert(file, conn, NULL, &st);
 			DEBUG(10,("deleting datafile [%s]\n", s));
-			unlink_internals(conn, 0, file, False, False);
+			unlink_internals(conn, NULL, 0, file, False);
 		}
 	}
 =09
@@ -4968,7 +4968,7 @@ static BOOL delete_driver_files( NT_PRINTER_DRIVER_IN=
FO_LEVEL_3 *info_3, struct
 			pstrcpy( file, s );
 			driver_unix_convert(file, conn, NULL, &st);
 			DEBUG(10,("deleting helpfile [%s]\n", s));
-			unlink_internals(conn, 0, file, False, False);
+			unlink_internals(conn, NULL, 0, file, False);
 		}
 	}
 =09
@@ -4984,7 +4984,7 @@ static BOOL delete_driver_files( NT_PRINTER_DRIVER_IN=
FO_LEVEL_3 *info_3, struct
 				pstrcpy( file, p );
 				driver_unix_convert(file, conn, NULL, &st);
 				DEBUG(10,("deleting dependent file [%s]\n", file));
-				unlink_internals(conn, 0, file, False, False);
+				unlink_internals(conn, NULL, 0, file, False);
 			}
 		=09
 			i++;
diff --git a/source/rpc_server/srv_srvsvc_nt.c b/source/rpc_server/srv_srvs=
vc_nt.c
index 0573599..1d370d3 100644
--- a/source/rpc_server/srv_srvsvc_nt.c
+++ b/source/rpc_server/srv_srvsvc_nt.c
@@ -2089,11 +2089,11 @@ WERROR _srvsvc_NetGetFileSecurity(pipes_struct *p, =
struct srvsvc_NetGetFileSecur
 		goto error_exit;
 	}
=20
-	nt_status =3D open_file_stat(conn, r->in.file, &st, &fsp);
+	nt_status =3D open_file_stat(conn, NULL, r->in.file, &st, &fsp);
 	if (!NT_STATUS_IS_OK(nt_status)) {
 		/* Perhaps it is a directory */
 		if (NT_STATUS_EQUAL(nt_status, NT_STATUS_FILE_IS_A_DIRECTORY))
-			nt_status =3D open_directory(conn, r->in.file, &st,
+			nt_status =3D open_directory(conn, NULL, r->in.file, &st,
 					READ_CONTROL_ACCESS,
 					FILE_SHARE_READ|FILE_SHARE_WRITE,
 					FILE_OPEN,
@@ -2194,12 +2194,12 @@ WERROR _srvsvc_NetSetFileSecurity(pipes_struct *p, =
struct srvsvc_NetSetFileSecur
 	}
=20
=20
-	nt_status =3D open_file_stat(conn, r->in.file, &st, &fsp);
+	nt_status =3D open_file_stat(conn, NULL, r->in.file, &st, &fsp);
=20
 	if (!NT_STATUS_IS_OK(nt_status)) {
 		/* Perhaps it is a directory */
 		if (NT_STATUS_EQUAL(nt_status, NT_STATUS_FILE_IS_A_DIRECTORY))
-			nt_status =3D open_directory(conn, r->in.file, &st,
+			nt_status =3D open_directory(conn, NULL, r->in.file, &st,
 						FILE_READ_ATTRIBUTES,
 						FILE_SHARE_READ|FILE_SHARE_WRITE,
 						FILE_OPEN,
diff --git a/source/smbd/dir.c b/source/smbd/dir.c
index db3e155..e7baf2b 100644
--- a/source/smbd/dir.c
+++ b/source/smbd/dir.c
@@ -879,7 +879,7 @@ static BOOL user_can_read_file(connection_struct *conn,=
 char *name, SMB_STRUCT_S
 	/* Pseudo-open the file (note - no fd's created). */
=20
 	if(S_ISDIR(pst->st_mode)) {
-		 status =3D open_directory(conn, name, pst,
+		 status =3D open_directory(conn, NULL, name, pst,
 			READ_CONTROL_ACCESS,
 			FILE_SHARE_READ|FILE_SHARE_WRITE,
 			FILE_OPEN,
@@ -887,7 +887,7 @@ static BOOL user_can_read_file(connection_struct *conn,=
 char *name, SMB_STRUCT_S
 			FILE_ATTRIBUTE_DIRECTORY,
 			NULL, &fsp);
 	} else {
-		status =3D open_file_stat(conn, name, pst, &fsp);
+		status =3D open_file_stat(conn, NULL, name, pst, &fsp);
 	}
=20
 	if (!NT_STATUS_IS_OK(status)) {
@@ -943,7 +943,7 @@ static BOOL user_can_write_file(connection_struct *conn=
, char *name, SMB_STRUCT_
 	if(S_ISDIR(pst->st_mode)) {
 		return True;
 	} else {
-		status =3D open_file_ntcreate(conn, name, pst,
+		status =3D open_file_ntcreate(conn, NULL, name, pst,
 			FILE_WRITE_ATTRIBUTES,
 			FILE_SHARE_READ|FILE_SHARE_WRITE,
 			FILE_OPEN,
diff --git a/source/smbd/nttrans.c b/source/smbd/nttrans.c
index 2c25971..7e17e3b 100644
--- a/source/smbd/nttrans.c
+++ b/source/smbd/nttrans.c
@@ -505,6 +505,7 @@ int reply_ntcreate_and_X(connection_struct *conn,
 	struct timespec m_timespec;
 	BOOL extended_oplock_granted =3D False;
 	NTSTATUS status;
+	struct smb_request req;
=20
 	START_PROFILE(SMBntcreateX);
=20
@@ -520,6 +521,8 @@ int reply_ntcreate_and_X(connection_struct *conn,
 			(unsigned int)create_options,
 			(unsigned int)root_dir_fid ));
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	/*
 	 * If it's an IPC, use the pipe handler.
 	 */
@@ -726,7 +729,7 @@ int reply_ntcreate_and_X(connection_struct *conn,
 		}
=20
 		oplock_request =3D 0;
-		status =3D open_directory(conn, fname, &sbuf,
+		status =3D open_directory(conn, &req, fname, &sbuf,
 					access_mask,
 					share_access,
 					create_disposition,
@@ -764,7 +767,7 @@ int reply_ntcreate_and_X(connection_struct *conn,
 		 * before issuing an oplock break request to
 		 * our client. JRA.  */
=20
-		status =3D open_file_ntcreate(conn,fname,&sbuf,
+		status =3D open_file_ntcreate(conn, &req, fname, &sbuf,
 					access_mask,
 					share_access,
 					create_disposition,
@@ -807,7 +810,8 @@ int reply_ntcreate_and_X(connection_struct *conn,
 				}
 =09
 				oplock_request =3D 0;
-				status =3D open_directory(conn, fname, &sbuf,
+				status =3D open_directory(conn, &req, fname,
+							&sbuf,
 							access_mask,
 							share_access,
 							create_disposition,
@@ -1199,6 +1203,7 @@ static int call_nt_transact_create(connection_struct =
*conn, char *inbuf, char *o
 	char *pdata =3D NULL;
 	NTSTATUS status;
 	size_t param_len;
+	struct smb_request req;
=20
 	DEBUG(5,("call_nt_transact_create\n"));
=20
@@ -1227,6 +1232,8 @@ static int call_nt_transact_create(connection_struct =
*conn, char *inbuf, char *o
 		return ERROR_NT(NT_STATUS_INVALID_PARAMETER);
 	}
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	flags =3D IVAL(params,0);
 	access_mask =3D IVAL(params,8);
 	file_attributes =3D IVAL(params,20);
@@ -1389,16 +1396,6 @@ static int call_nt_transact_create(connection_struct=
 *conn, char *inbuf, char *o
 		}
 	}
=20
-#if 0
-	/* We need to support SeSecurityPrivilege for this. */
-	if ((access_mask & SEC_RIGHT_SYSTEM_SECURITY)) &&=20
-			!user_has_privileges(current_user.nt_user_token,
-				&se_security)) {
-		restore_case_semantics(conn, file_attributes);
-		return ERROR_NT(NT_STATUS_PRIVILEGE_NOT_HELD);
-	}
-#endif
-
 	if (ea_len) {
 		pdata =3D data + sd_len;
=20
@@ -1430,7 +1427,7 @@ static int call_nt_transact_create(connection_struct =
*conn, char *inbuf, char *o
 		 */
=20
 		oplock_request =3D 0;
-		status =3D open_directory(conn, fname, &sbuf,
+		status =3D open_directory(conn, &req, fname, &sbuf,
 					access_mask,
 					share_access,
 					create_disposition,
@@ -1448,7 +1445,7 @@ static int call_nt_transact_create(connection_struct =
*conn, char *inbuf, char *o
 		 * Ordinary file case.
 		 */
=20
-		status =3D open_file_ntcreate(conn,fname,&sbuf,
+		status =3D open_file_ntcreate(conn,&req,fname,&sbuf,
 					access_mask,
 					share_access,
 					create_disposition,
@@ -1471,7 +1468,8 @@ static int call_nt_transact_create(connection_struct =
*conn, char *inbuf, char *o
 				}
 =09
 				oplock_request =3D 0;
-				status =3D open_directory(conn, fname, &sbuf,
+				status =3D open_directory(conn, &req, fname,
+							&sbuf,
 							access_mask,
 							share_access,
 							create_disposition,
@@ -1691,7 +1689,9 @@ int reply_ntcancel(connection_struct *conn,
  Copy a file.
 **************************************************************************=
**/
=20
-static NTSTATUS copy_internals(connection_struct *conn, char *oldname, cha=
r *newname, uint32 attrs)
+static NTSTATUS copy_internals(connection_struct *conn,
+			       struct smb_request *req,
+			       char *oldname, char *newname, uint32 attrs)
 {
 	SMB_STRUCT_STAT sbuf1, sbuf2;
 	pstring last_component_oldname;
@@ -1757,7 +1757,7 @@ static NTSTATUS copy_internals(connection_struct *con=
n, char *oldname, char *new
=20
 	DEBUG(10,("copy_internals: doing file copy %s to %s\n", oldname, newname)=
);
=20
-        status =3D open_file_ntcreate(conn,oldname,&sbuf1,
+        status =3D open_file_ntcreate(conn, req, oldname, &sbuf1,
 			FILE_READ_DATA, /* Read-only. */
 			FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
 			FILE_OPEN,
@@ -1770,7 +1770,7 @@ static NTSTATUS copy_internals(connection_struct *con=
n, char *oldname, char *new
 		return status;
 	}
=20
-        status =3D open_file_ntcreate(conn,newname,&sbuf2,
+        status =3D open_file_ntcreate(conn, req, newname, &sbuf2,
 			FILE_WRITE_DATA, /* Read-only. */
 			FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
 			FILE_CREATE,
@@ -1834,9 +1834,12 @@ int reply_ntrename(connection_struct *conn,
 	BOOL dest_has_wcard =3D False;
 	uint32 attrs =3D SVAL(inbuf,smb_vwv0);
 	uint16 rename_type =3D SVAL(inbuf,smb_vwv1);
+	struct smb_request req;
=20
 	START_PROFILE(SMBntrename);
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	p =3D smb_buf(inbuf) + 1;
 	p +=3D srvstr_get_path_wcard(inbuf, oldname, p, sizeof(oldname), 0, STR_T=
ERMINATE, &status, &src_has_wcard);
 	if (!NT_STATUS_IS_OK(status)) {
@@ -1884,7 +1887,9 @@ int reply_ntrename(connection_struct *conn,
 =09
 	switch(rename_type) {
 		case RENAME_FLAG_RENAME:
-			status =3D rename_internals(conn, oldname, newname, attrs, False, src_h=
as_wcard, dest_has_wcard);
+			status =3D rename_internals(conn, &req, oldname, newname,
+						  attrs, False, src_has_wcard,
+						  dest_has_wcard);
 			break;
 		case RENAME_FLAG_HARD_LINK:
 			if (src_has_wcard || dest_has_wcard) {
@@ -1899,7 +1904,8 @@ int reply_ntrename(connection_struct *conn,
 				/* No wildcards. */
 				status =3D NT_STATUS_OBJECT_PATH_SYNTAX_BAD;
 			} else {
-				status =3D copy_internals(conn, oldname, newname, attrs);
+				status =3D copy_internals(conn, &req, oldname,
+							newname, attrs);
 			}
 			break;
 		case RENAME_FLAG_MOVE_CLUSTER_INFORMATION:
@@ -2036,6 +2042,9 @@ static int call_nt_transact_rename(connection_struct =
*conn, char *inbuf, char *o
 	BOOL replace_if_exists =3D False;
 	BOOL dest_has_wcard =3D False;
 	NTSTATUS status;
+	struct smb_request req;
+
+	init_smb_request(&req, (uint8 *)inbuf);
=20
         if(parameter_count < 5) {
 		return ERROR_DOS(ERRDOS,ERRbadfunc);
@@ -2050,7 +2059,7 @@ static int call_nt_transact_rename(connection_struct =
*conn, char *inbuf, char *o
 		return ERROR_NT(status);
 	}
=20
-	status =3D rename_internals(conn, fsp->fsp_name,
+	status =3D rename_internals(conn, &req, fsp->fsp_name,
 				  new_name, 0, replace_if_exists, False, dest_has_wcard);
=20
 	if (!NT_STATUS_IS_OK(status)) {
diff --git a/source/smbd/open.c b/source/smbd/open.c
index 41fbce9..62a4fe0 100644
--- a/source/smbd/open.c
+++ b/source/smbd/open.c
@@ -25,7 +25,6 @@
 extern struct generic_mapping file_generic_mapping;
 extern struct current_user current_user;
 extern userdom_struct current_user_info;
-extern uint16 global_smbpid;
 extern BOOL global_client_failed_oplock_break;
=20
 struct deferred_open_record {
@@ -201,6 +200,7 @@ static void change_dir_owner_to_parent(connection_struc=
t *conn,
=20
 static NTSTATUS open_file(files_struct *fsp,
 			  connection_struct *conn,
+			  struct smb_request *req,
 			  const char *parent_dir,
 			  const char *name,
 			  const char *path,
@@ -359,8 +359,8 @@ static NTSTATUS open_file(files_struct *fsp,
=20
 	fsp->mode =3D psbuf->st_mode;
 	fsp->file_id =3D file_id_sbuf(psbuf);
-	fsp->vuid =3D current_user.vuid;
-	fsp->file_pid =3D global_smbpid;
+	fsp->vuid =3D req ? req->vuid : UID_FIELD_INVALID;
+	fsp->file_pid =3D req ? req->smbpid : 0;
 	fsp->can_lock =3D True;
 	fsp->can_read =3D (access_mask & (FILE_READ_DATA)) ? True : False;
 	if (!CAN_WRITE(conn)) {
@@ -871,6 +871,8 @@ static BOOL open_match_attributes(connection_struct *co=
nn,
 static files_struct *fcb_or_dos_open(connection_struct *conn,
 				     const char *fname,=20
 				     struct file_id id,
+				     uint16 file_pid,
+				     uint16 vuid,
 				     uint32 access_mask,
 				     uint32 share_access,
 				     uint32 create_options)
@@ -893,8 +895,8 @@ static files_struct *fcb_or_dos_open(connection_struct =
*conn,
 			  (unsigned int)fsp->access_mask ));
=20
 		if (fsp->fh->fd !=3D -1 &&
-		    fsp->vuid =3D=3D current_user.vuid &&
-		    fsp->file_pid =3D=3D global_smbpid &&
+		    fsp->vuid =3D=3D vuid &&
+		    fsp->file_pid =3D=3D file_pid &&
 		    (fsp->fh->private_options & (NTCREATEX_OPTIONS_PRIVATE_DENY_DOS |
 						 NTCREATEX_OPTIONS_PRIVATE_DENY_FCB)) &&
 		    (fsp->access_mask & FILE_WRITE_DATA) &&
@@ -1103,6 +1105,7 @@ static void schedule_defer_open(struct share_mode_loc=
k *lck, struct timeval requ
 **************************************************************************=
**/
=20
 NTSTATUS open_file_ntcreate(connection_struct *conn,
+			    struct smb_request *req,
 			    const char *fname,
 			    SMB_STRUCT_STAT *psbuf,
 			    uint32 access_mask,		/* access bits (FILE_READ_DATA etc.) */
@@ -1129,7 +1132,6 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 	int info;
 	uint32 existing_dos_attributes =3D 0;
 	struct pending_message_list *pml =3D NULL;
-	uint16 mid =3D get_current_mid();
 	struct timeval request_time =3D timeval_zero();
 	struct share_mode_lock *lck =3D NULL;
 	uint32 open_access_mask =3D access_mask;
@@ -1179,7 +1181,17 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 		   create_disposition, create_options, unx_mode,
 		   oplock_request));
=20
-	if ((pml =3D get_open_deferred_message(mid)) !=3D NULL) {
+	if ((req =3D=3D NULL) && ((oplock_request & INTERNAL_OPEN_ONLY) =3D=3D 0)=
) {
+		DEBUG(0, ("No smb request but not an internal only open!\n"));
+		return NT_STATUS_INTERNAL_ERROR;
+	}
+
+	/*
+	 * Only non-internal opens can be deferred at all
+	 */
+
+	if ((req !=3D NULL)
+	    && ((pml =3D get_open_deferred_message(req->mid)) !=3D NULL)) {
 		struct deferred_open_record *state =3D
 			(struct deferred_open_record *)pml->private_data.data;
=20
@@ -1194,12 +1206,12 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 		if (lck =3D=3D NULL) {
 			DEBUG(0, ("could not get share mode lock\n"));
 		} else {
-			del_deferred_open_entry(lck, mid);
+			del_deferred_open_entry(lck, req->mid);
 			TALLOC_FREE(lck);
 		}
=20
 		/* Ensure we don't reprocess this message. */
-		remove_deferred_open_smb_message(mid);
+		remove_deferred_open_smb_message(req->mid);
 	}
=20
 	status =3D check_name(conn, fname);
@@ -1477,9 +1489,19 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 			     NTCREATEX_OPTIONS_PRIVATE_DENY_FCB)) {
 				files_struct *fsp_dup;
=20
+				if (req =3D=3D NULL) {
+					DEBUG(0, ("DOS open without an SMB "
+						  "request!\n"));
+					TALLOC_FREE(lck);
+					file_free(fsp);
+					return NT_STATUS_INTERNAL_ERROR;
+				}
+
 				/* Use the client requested access mask here,
 				 * not the one we open with. */
 				fsp_dup =3D fcb_or_dos_open(conn, fname, id,
+							  req->smbpid,
+							  req->vuid,
 							  access_mask,
 							  share_access,
 							  create_options);
@@ -1601,7 +1623,7 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 	 * open_file strips any O_TRUNC flags itself.
 	 */
=20
-	fsp_open =3D open_file(fsp, conn, parent_dir, newname, fname, psbuf,
+	fsp_open =3D open_file(fsp, conn, req, parent_dir, newname, fname, psbuf,
 			     flags|flags2, unx_mode, access_mask,
 			     open_access_mask);
=20
@@ -1862,7 +1884,9 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
=20
 	/* If this is a successful open, we must remove any deferred open
 	 * records. */
-	del_deferred_open_entry(lck, mid);
+	if (req !=3D NULL) {
+		del_deferred_open_entry(lck, req->mid);
+	}
 	TALLOC_FREE(lck);
=20
 	conn->num_files_open++;
@@ -1892,8 +1916,8 @@ NTSTATUS open_file_fchmod(connection_struct *conn, co=
nst char *fname,
=20
 	/* note! we must use a non-zero desired access or we don't get
            a real file descriptor. Oh what a twisted web we weave. */
-	status =3D open_file(fsp, conn, NULL, NULL, fname, psbuf, O_WRONLY, 0,
-			   FILE_WRITE_DATA, FILE_WRITE_DATA);
+	status =3D open_file(fsp, conn, NULL, NULL, NULL, fname, psbuf, O_WRONLY,
+			   0, FILE_WRITE_DATA, FILE_WRITE_DATA);
=20
 	/*=20
 	 * This is not a user visible file open.
@@ -2005,6 +2029,7 @@ static NTSTATUS mkdir_internal(connection_struct *con=
n,
 **************************************************************************=
**/
=20
 NTSTATUS open_directory(connection_struct *conn,
+			struct smb_request *req,
 			const char *fname,
 			SMB_STRUCT_STAT *psbuf,
 			uint32 access_mask,
@@ -2121,8 +2146,8 @@ NTSTATUS open_directory(connection_struct *conn,
 =09
 	fsp->mode =3D psbuf->st_mode;
 	fsp->file_id =3D file_id_sbuf(psbuf);
-	fsp->vuid =3D current_user.vuid;
-	fsp->file_pid =3D global_smbpid;
+	fsp->vuid =3D req ? req->vuid : UID_FIELD_INVALID;
+	fsp->file_pid =3D req ? req->smbpid : 0;
 	fsp->can_lock =3D False;
 	fsp->can_read =3D False;
 	fsp->can_write =3D False;
@@ -2200,7 +2225,7 @@ NTSTATUS create_directory(connection_struct *conn, co=
nst char *directory)
=20
 	SET_STAT_INVALID(sbuf);
 =09
-	status =3D open_directory(conn, directory, &sbuf,
+	status =3D open_directory(conn, NULL, directory, &sbuf,
 				FILE_READ_ATTRIBUTES, /* Just a stat open */
 				FILE_SHARE_NONE, /* Ignored for stat opens */
 				FILE_CREATE,
@@ -2220,8 +2245,9 @@ NTSTATUS create_directory(connection_struct *conn, co=
nst char *directory)
  Open a pseudo-file (no locking checks - a 'stat' open).
 **************************************************************************=
**/
=20
-NTSTATUS open_file_stat(connection_struct *conn, const char *fname,
-			SMB_STRUCT_STAT *psbuf, files_struct **result)
+NTSTATUS open_file_stat(connection_struct *conn, struct smb_request *req,
+			const char *fname, SMB_STRUCT_STAT *psbuf,
+			files_struct **result)
 {
 	files_struct *fsp =3D NULL;
 	NTSTATUS status;
@@ -2248,8 +2274,8 @@ NTSTATUS open_file_stat(connection_struct *conn, cons=
t char *fname,
 =09
 	fsp->mode =3D psbuf->st_mode;
 	fsp->file_id =3D file_id_sbuf(psbuf);
-	fsp->vuid =3D current_user.vuid;
-	fsp->file_pid =3D global_smbpid;
+	fsp->vuid =3D req ? req->vuid : UID_FIELD_INVALID;
+	fsp->file_pid =3D req ? req->smbpid : 0;
 	fsp->can_lock =3D False;
 	fsp->can_read =3D False;
 	fsp->can_write =3D False;
diff --git a/source/smbd/posix_acls.c b/source/smbd/posix_acls.c
index c4c4b2e..947c30f 100644
--- a/source/smbd/posix_acls.c
+++ b/source/smbd/posix_acls.c
@@ -3195,13 +3195,14 @@ static NTSTATUS append_parent_acl(files_struct *fsp,
 			parent_name);
=20
 	status =3D open_directory(fsp->conn,
+				NULL,
 				parent_name,
 				&sbuf,
 				FILE_READ_ATTRIBUTES, /* Just a stat open */
 				FILE_SHARE_NONE, /* Ignored for stat opens */
 				FILE_OPEN,
 				0,
-				0,
+				INTERNAL_OPEN_ONLY,
 				&info,
 				&parent_fsp);
=20
diff --git a/source/smbd/process.c b/source/smbd/process.c
index 3b922af..dd623e6 100644
--- a/source/smbd/process.c
+++ b/source/smbd/process.c
@@ -57,6 +57,18 @@ uint16 get_current_mid(void)
 	return SVAL(InBuffer,smb_mid);
 }
=20
+/*
+ * Initialize a struct smb_request from an inbuf
+ */
+
+void init_smb_request(struct smb_request *req, const uint8 *inbuf)
+{
+	req->flags2 =3D SVAL(inbuf, smb_flg2);
+	req->smbpid =3D SVAL(inbuf, smb_pid);
+	req->mid    =3D SVAL(inbuf, smb_mid);
+	req->vuid   =3D SVAL(inbuf, smb_uid);
+}
+
 /*************************************************************************=
***
  structure to hold a linked list of queued messages.
  for processing.
diff --git a/source/smbd/reply.c b/source/smbd/reply.c
index 41665e1..76265ed 100644
--- a/source/smbd/reply.c
+++ b/source/smbd/reply.c
@@ -1263,7 +1263,11 @@ int reply_open(connection_struct *conn, char *inbuf,=
char *outbuf, int dum_size,
 	uint32 create_disposition;
 	uint32 create_options =3D 0;
 	NTSTATUS status;
+	struct smb_request req;
+
 	START_PROFILE(SMBopen);
+
+	init_smb_request(&req, (uint8 *)inbuf);
 =20
 	deny_mode =3D SVAL(inbuf,smb_vwv0);
=20
@@ -1300,7 +1304,7 @@ int reply_open(connection_struct *conn, char *inbuf,c=
har *outbuf, int dum_size,
 		return ERROR_NT(NT_STATUS_DOS(ERRDOS, ERRbadaccess));
 	}
=20
-	status =3D open_file_ntcreate(conn,fname,&sbuf,
+	status =3D open_file_ntcreate(conn, &req, fname, &sbuf,
 			access_mask,
 			share_mode,
 			create_disposition,
@@ -1383,9 +1387,12 @@ int reply_open_and_X(connection_struct *conn, char *=
inbuf,char *outbuf,int lengt
 	uint32 share_mode;
 	uint32 create_disposition;
 	uint32 create_options =3D 0;
+	struct smb_request req;
=20
 	START_PROFILE(SMBopenX);
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	/* If it's an IPC, pass off the pipe handler. */
 	if (IS_IPC(conn)) {
 		if (lp_nt_pipe_support()) {
@@ -1434,7 +1441,7 @@ int reply_open_and_X(connection_struct *conn, char *i=
nbuf,char *outbuf,int lengt
 		return ERROR_NT(NT_STATUS_DOS(ERRDOS, ERRbadaccess));
 	}
=20
-	status =3D open_file_ntcreate(conn,fname,&sbuf,
+	status =3D open_file_ntcreate(conn, &req, fname, &sbuf,
 			access_mask,
 			share_mode,
 			create_disposition,
@@ -1576,8 +1583,11 @@ int reply_mknew(connection_struct *conn, char *inbuf=
,char *outbuf, int dum_size,
 	uint32 share_mode =3D FILE_SHARE_READ|FILE_SHARE_WRITE;
 	uint32 create_disposition;
 	uint32 create_options =3D 0;
+	struct smb_request req;
=20
 	START_PROFILE(SMBcreate);
+
+	init_smb_request(&req, (uint8 *)inbuf);
 =20
 	com =3D SVAL(inbuf,smb_com);
=20
@@ -1623,7 +1633,7 @@ int reply_mknew(connection_struct *conn, char *inbuf,=
char *outbuf, int dum_size,
 	}
=20
 	/* Open file using ntcreate. */
-	status =3D open_file_ntcreate(conn,fname,&sbuf,
+	status =3D open_file_ntcreate(conn, &req, fname, &sbuf,
 				access_mask,
 				share_mode,
 				create_disposition,
@@ -1678,9 +1688,12 @@ int reply_ctemp(connection_struct *conn, char *inbuf=
,char *outbuf, int dum_size,
 	char *p, *s;
 	NTSTATUS status;
 	unsigned int namelen;
+	struct smb_request req;
=20
 	START_PROFILE(SMBctemp);
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	srvstr_get_path(inbuf, fname, smb_buf(inbuf)+1, sizeof(fname), 0, STR_TER=
MINATE, &status);
 	if (!NT_STATUS_IS_OK(status)) {
 		END_PROFILE(SMBctemp);
@@ -1722,7 +1735,7 @@ int reply_ctemp(connection_struct *conn, char *inbuf,=
char *outbuf, int dum_size,
 	SMB_VFS_STAT(conn,fname,&sbuf);
=20
 	/* We should fail if file does not exist. */
-	status =3D open_file_ntcreate(conn,fname,&sbuf,
+	status =3D open_file_ntcreate(conn, &req, fname, &sbuf,
 				FILE_GENERIC_READ | FILE_GENERIC_WRITE,
 				FILE_SHARE_READ|FILE_SHARE_WRITE,
 				FILE_OPEN,
@@ -1813,8 +1826,8 @@ static NTSTATUS can_rename(connection_struct *conn, f=
iles_struct *fsp,
  * unlink a file with all relevant access checks
  *******************************************************************/
=20
-static NTSTATUS do_unlink(connection_struct *conn, char *fname,
-			  uint32 dirtype, BOOL can_defer)
+static NTSTATUS do_unlink(connection_struct *conn, struct smb_request *req,
+			  char *fname, uint32 dirtype)
 {
 	SMB_STRUCT_STAT sbuf;
 	uint32 fattr;
@@ -1906,13 +1919,13 @@ static NTSTATUS do_unlink(connection_struct *conn, =
char *fname,
 	/* On open checks the open itself will check the share mode, so
 	   don't do it here as we'll get it wrong. */
=20
-	status =3D open_file_ntcreate(conn, fname, &sbuf,
+	status =3D open_file_ntcreate(conn, req, fname, &sbuf,
 				    DELETE_ACCESS,
 				    FILE_SHARE_NONE,
 				    FILE_OPEN,
 				    0,
 				    FILE_ATTRIBUTE_NORMAL,
-				    can_defer ? 0 : INTERNAL_OPEN_ONLY,
+				    req !=3D NULL ? 0 : INTERNAL_OPEN_ONLY,
 				    NULL, &fsp);
=20
 	if (!NT_STATUS_IS_OK(status)) {
@@ -1935,8 +1948,8 @@ static NTSTATUS do_unlink(connection_struct *conn, ch=
ar *fname,
  code.
 **************************************************************************=
**/
=20
-NTSTATUS unlink_internals(connection_struct *conn, uint32 dirtype,
-			  char *name, BOOL has_wild, BOOL can_defer)
+NTSTATUS unlink_internals(connection_struct *conn, struct smb_request *req,
+			  uint32 dirtype, char *name, BOOL has_wild)
 {
 	pstring directory;
 	pstring mask;
@@ -1986,7 +1999,7 @@ NTSTATUS unlink_internals(connection_struct *conn, ui=
nt32 dirtype,
 			return status;
 		}
=20
-		status =3D do_unlink(conn,directory,dirtype,can_defer);
+		status =3D do_unlink(conn, req, directory, dirtype);
 		if (!NT_STATUS_IS_OK(status)) {
 			return status;
 		}
@@ -2050,7 +2063,7 @@ NTSTATUS unlink_internals(connection_struct *conn, ui=
nt32 dirtype,
 				return status;
 			}
=20
-			status =3D do_unlink(conn, fname, dirtype, can_defer);
+			status =3D do_unlink(conn, req, fname, dirtype);
 			if (!NT_STATUS_IS_OK(status)) {
 				continue;
 			}
@@ -2081,9 +2094,12 @@ int reply_unlink(connection_struct *conn, char *inbu=
f,char *outbuf, int dum_size
 	uint32 dirtype;
 	NTSTATUS status;
 	BOOL path_contains_wcard =3D False;
+	struct smb_request req;
=20
 	START_PROFILE(SMBunlink);
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	dirtype =3D SVAL(inbuf,smb_vwv0);
 =09
 	srvstr_get_path_wcard(inbuf, name, smb_buf(inbuf) + 1, sizeof(name), 0, S=
TR_TERMINATE, &status, &path_contains_wcard);
@@ -2103,8 +2119,8 @@ int reply_unlink(connection_struct *conn, char *inbuf=
,char *outbuf, int dum_size
 =09
 	DEBUG(3,("reply_unlink : %s\n",name));
 =09
-	status =3D unlink_internals(conn, dirtype, name, path_contains_wcard,
-				  True);
+	status =3D unlink_internals(conn, &req, dirtype, name,
+				  path_contains_wcard);
 	if (!NT_STATUS_IS_OK(status)) {
 		if (open_was_deferred(SVAL(inbuf,smb_mid))) {
 			/* We have re-scheduled this call. */
@@ -4467,7 +4483,7 @@ NTSTATUS rename_internals_fsp(connection_struct *conn=
, files_struct *fsp, pstrin
  code.=20
 **************************************************************************=
**/
=20
-NTSTATUS rename_internals(connection_struct *conn,
+NTSTATUS rename_internals(connection_struct *conn, struct smb_request *req,
 				pstring name,
 				pstring newname,
 				uint32 attrs,
@@ -4578,12 +4594,12 @@ NTSTATUS rename_internals(connection_struct *conn,
 		SMB_VFS_STAT(conn, directory, &sbuf1);
=20
 		status =3D S_ISDIR(sbuf1.st_mode) ?
-			open_directory(conn, directory, &sbuf1,
+			open_directory(conn, req, directory, &sbuf1,
 				       DELETE_ACCESS,
 				       FILE_SHARE_READ|FILE_SHARE_WRITE,
 				       FILE_OPEN, 0, 0, NULL,
 				       &fsp)
-			: open_file_ntcreate(conn, directory, &sbuf1,
+			: open_file_ntcreate(conn, req, directory, &sbuf1,
 					     DELETE_ACCESS,
 					     FILE_SHARE_READ|FILE_SHARE_WRITE,
 					     FILE_OPEN, 0, 0, 0, NULL,
@@ -4674,12 +4690,12 @@ NTSTATUS rename_internals(connection_struct *conn,
 		SMB_VFS_STAT(conn, fname, &sbuf1);
=20
 		status =3D S_ISDIR(sbuf1.st_mode) ?
-			open_directory(conn, fname, &sbuf1,
+			open_directory(conn, req, fname, &sbuf1,
 				       DELETE_ACCESS,
 				       FILE_SHARE_READ|FILE_SHARE_WRITE,
 				       FILE_OPEN, 0, 0, NULL,
 				       &fsp)
-			: open_file_ntcreate(conn, fname, &sbuf1,
+			: open_file_ntcreate(conn, req, fname, &sbuf1,
 					     DELETE_ACCESS,
 					     FILE_SHARE_READ|FILE_SHARE_WRITE,
 					     FILE_OPEN, 0, 0, 0, NULL,
@@ -4733,9 +4749,12 @@ int reply_mv(connection_struct *conn, char *inbuf,ch=
ar *outbuf, int dum_size,
 	NTSTATUS status;
 	BOOL src_has_wcard =3D False;
 	BOOL dest_has_wcard =3D False;
+	struct smb_request req;
=20
 	START_PROFILE(SMBmv);
=20
+	init_smb_request(&req, (uint8 *)inbuf);
+
 	p =3D smb_buf(inbuf) + 1;
 	p +=3D srvstr_get_path_wcard(inbuf, name, p, sizeof(name), 0, STR_TERMINA=
TE, &status, &src_has_wcard);
 	if (!NT_STATUS_IS_OK(status)) {
@@ -4769,7 +4788,8 @@ int reply_mv(connection_struct *conn, char *inbuf,cha=
r *outbuf, int dum_size,
 =09
 	DEBUG(3,("reply_mv : %s -> %s\n",name,newname));
 =09
-	status =3D rename_internals(conn, name, newname, attrs, False, src_has_wc=
ard, dest_has_wcard);
+	status =3D rename_internals(conn, &req, name, newname, attrs, False,
+				  src_has_wcard, dest_has_wcard);
 	if (!NT_STATUS_IS_OK(status)) {
 		END_PROFILE(SMBmv);
 		if (open_was_deferred(SVAL(inbuf,smb_mid))) {
@@ -4833,7 +4853,7 @@ NTSTATUS copy_file(connection_struct *conn,
 		}
 	}
=20
-	status =3D open_file_ntcreate(conn,src,&src_sbuf,
+	status =3D open_file_ntcreate(conn, NULL, src, &src_sbuf,
 			FILE_GENERIC_READ,
 			FILE_SHARE_READ|FILE_SHARE_WRITE,
 			FILE_OPEN,
@@ -4851,7 +4871,7 @@ NTSTATUS copy_file(connection_struct *conn,
 		ZERO_STRUCTP(&sbuf2);
 	}
=20
-	status =3D open_file_ntcreate(conn,dest,&sbuf2,
+	status =3D open_file_ntcreate(conn, NULL, dest, &sbuf2,
 			FILE_GENERIC_WRITE,
 			FILE_SHARE_READ|FILE_SHARE_WRITE,
 			new_create_disposition,
diff --git a/source/smbd/trans2.c b/source/smbd/trans2.c
index af6bc41..8d4f505 100644
--- a/source/smbd/trans2.c
+++ b/source/smbd/trans2.c
@@ -740,9 +740,12 @@ int send_trans2_replies(const char *inbuf,
  Reply to a TRANSACT2_OPEN.
 **************************************************************************=
**/
=20
-static int call_trans2open(connection_struct *conn, char *inbuf, char *out=
buf, int bufsize, =20
-				char **pparams, int total_params, char **ppdata, int total_data,
-				unsigned int max_data_bytes)
+static int call_trans2open(connection_struct *conn,
+			   struct smb_request *req,
+			   char *inbuf, char *outbuf, int bufsize,
+			   char **pparams, int total_params,
+			   char **ppdata, int total_data,
+			   unsigned int max_data_bytes)
 {
 	char *params =3D *pparams;
 	char *pdata =3D *ppdata;
@@ -859,7 +862,7 @@ static int call_trans2open(connection_struct *conn, cha=
r *inbuf, char *outbuf, i
 		return ERROR_NT(NT_STATUS_INVALID_PARAMETER);
 	}
=20
-	status =3D open_file_ntcreate(conn,fname,&sbuf,
+	status =3D open_file_ntcreate(conn, req, fname, &sbuf,
 		access_mask,
 		share_mode,
 		create_disposition,
@@ -4299,6 +4302,7 @@ static NTSTATUS smb_set_file_dosmode(connection_struc=
t *conn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_set_file_size(connection_struct *conn,
+				  struct smb_request *req,
 				files_struct *fsp,
 				const char *fname,
 				SMB_STRUCT_STAT *psbuf,
@@ -4328,7 +4332,7 @@ static NTSTATUS smb_set_file_size(connection_struct *=
conn,
 		return NT_STATUS_OK;
 	}
=20
-	status =3D open_file_ntcreate(conn, fname, psbuf,
+	status =3D open_file_ntcreate(conn, req, fname, psbuf,
 				FILE_WRITE_DATA,
 				FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
 				FILE_OPEN,
@@ -4603,6 +4607,7 @@ static NTSTATUS smb_set_file_unix_hlink(connection_st=
ruct *conn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_file_rename_information(connection_struct *conn,
+					    struct smb_request *req,
 				char *inbuf,
 				char *outbuf,
 				const char *pdata,
@@ -4664,7 +4669,8 @@ static NTSTATUS smb_file_rename_information(connectio=
n_struct *conn,
 	} else {
 		DEBUG(10,("smb_file_rename_information: SMB_FILE_RENAME_INFORMATION %s -=
> %s\n",
 			fname, newname ));
-		status =3D rename_internals(conn, fname, base_name, 0, overwrite, False,=
 dest_has_wcard);
+		status =3D rename_internals(conn, req, fname, base_name, 0,
+					  overwrite, False, dest_has_wcard);
 	}
=20
 	return status;
@@ -4955,6 +4961,7 @@ static NTSTATUS smb_set_file_basic_info(connection_st=
ruct *conn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_set_file_allocation_info(connection_struct *conn,
+					     struct smb_request *req,
 					const char *pdata,
 					int total_data,
 					files_struct *fsp,
@@ -5007,7 +5014,7 @@ static NTSTATUS smb_set_file_allocation_info(connecti=
on_struct *conn,
=20
 	/* Pathname or stat or directory file. */
=20
-	status =3D open_file_ntcreate(conn, fname, psbuf,
+	status =3D open_file_ntcreate(conn, req, fname, psbuf,
 				FILE_WRITE_DATA,
 				FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
 				FILE_OPEN,
@@ -5035,6 +5042,7 @@ static NTSTATUS smb_set_file_allocation_info(connecti=
on_struct *conn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_set_file_end_of_file_info(connection_struct *conn,
+					      struct smb_request *req,
 					const char *pdata,
 					int total_data,
 					files_struct *fsp,
@@ -5059,7 +5067,7 @@ static NTSTATUS smb_set_file_end_of_file_info(connect=
ion_struct *conn,
 	DEBUG(10,("smb_set_file_end_of_file_info: Set end of file info for "
 		"file %s to %.0f\n", fname, (double)size ));
=20
-	return smb_set_file_size(conn,
+	return smb_set_file_size(conn, req,
 				fsp,
 				fname,
 				psbuf,
@@ -5155,6 +5163,7 @@ static NTSTATUS smb_unix_mknod(connection_struct *con=
n,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_set_file_unix_basic(connection_struct *conn,
+					struct smb_request *req,
 					const char *pdata,
 					int total_data,
 					files_struct *fsp,
@@ -5306,7 +5315,7 @@ size =3D %.0f, uid =3D %u, gid =3D %u, raw perms =3D =
0%o\n",
=20
 	/* Deal with any size changes. */
=20
-	status =3D smb_set_file_size(conn,
+	status =3D smb_set_file_size(conn, req,
 				fsp,
 				fname,
 				psbuf,
@@ -5329,6 +5338,7 @@ size =3D %.0f, uid =3D %u, gid =3D %u, raw perms =3D =
0%o\n",
 **************************************************************************=
**/
=20
 static NTSTATUS smb_set_file_unix_info2(connection_struct *conn,
+					struct smb_request *req,
 					const char *pdata,
 					int total_data,
 					files_struct *fsp,
@@ -5346,7 +5356,7 @@ static NTSTATUS smb_set_file_unix_info2(connection_st=
ruct *conn,
 	/* Start by setting all the fields that are common between UNIX_BASIC
 	 * and UNIX_INFO2.
 	 */
-	status =3D smb_set_file_unix_basic(conn, pdata, total_data,
+	status =3D smb_set_file_unix_basic(conn, req, pdata, total_data,
 				fsp, fname, psbuf);
 	if (!NT_STATUS_IS_OK(status)) {
 		return status;
@@ -5390,6 +5400,7 @@ static NTSTATUS smb_set_file_unix_info2(connection_st=
ruct *conn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_posix_mkdir(connection_struct *conn,
+				struct smb_request *req,
 				char **ppdata,
 				int total_data,
 				const char *fname,
@@ -5422,7 +5433,7 @@ static NTSTATUS smb_posix_mkdir(connection_struct *co=
nn,
 	DEBUG(10,("smb_posix_mkdir: file %s, mode 0%o\n",
 		fname, (unsigned int)unixmode ));
=20
-	status =3D open_directory(conn,
+	status =3D open_directory(conn, req,
 				fname,
 				psbuf,
 				FILE_READ_ATTRIBUTES, /* Just a stat open */
@@ -5484,6 +5495,7 @@ static NTSTATUS smb_posix_mkdir(connection_struct *co=
nn,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_posix_open(connection_struct *conn,
+			       struct smb_request *req,
 				char **ppdata,
 				int total_data,
 				const char *fname,
@@ -5519,7 +5531,7 @@ static NTSTATUS smb_posix_open(connection_struct *con=
n,
 	wire_open_mode =3D IVAL(pdata,4);
=20
 	if (wire_open_mode =3D=3D (SMB_O_CREAT|SMB_O_DIRECTORY)) {
-		return smb_posix_mkdir(conn,
+		return smb_posix_mkdir(conn, req,
 					ppdata,
 					total_data,
 					fname,
@@ -5587,7 +5599,7 @@ static NTSTATUS smb_posix_open(connection_struct *con=
n,
 		(unsigned int)wire_open_mode,
 		(unsigned int)unixmode ));
=20
-	status =3D open_file_ntcreate(conn,
+	status =3D open_file_ntcreate(conn, req,
 				fname,
 				psbuf,
 				access_mask,
@@ -5671,6 +5683,7 @@ static NTSTATUS smb_posix_open(connection_struct *con=
n,
 **************************************************************************=
**/
=20
 static NTSTATUS smb_posix_unlink(connection_struct *conn,
+				 struct smb_request *req,
 				const char *pdata,
 				int total_data,
 				const char *fname,
@@ -5701,7 +5714,7 @@ static NTSTATUS smb_posix_unlink(connection_struct *c=
onn,
 		fname));
=20
 	if (VALID_STAT_OF_DIR(*psbuf)) {
-		status =3D open_directory(conn,
+		status =3D open_directory(conn, req,
 					fname,
 					psbuf,
 					DELETE_ACCESS,
@@ -5714,7 +5727,7 @@ static NTSTATUS smb_posix_unlink(connection_struct *c=
onn,
 	} else {
 		char del =3D 1;
=20
-		status =3D open_file_ntcreate(conn,
+		status =3D open_file_ntcreate(conn, req,
 				fname,
 				psbuf,
 				DELETE_ACCESS,
@@ -5752,7 +5765,10 @@ static NTSTATUS smb_posix_unlink(connection_struct *=
conn,
  Reply to a TRANS2_SETFILEINFO (set file info by fileid or pathname).
 **************************************************************************=
**/
=20
-static int call_trans2setfilepathinfo(connection_struct *conn, char *inbuf=
, char *outbuf, int length, int bufsize,
+static int call_trans2setfilepathinfo(connection_struct *conn,
+				      struct smb_request *req,
+				      char *inbuf, char *outbuf, int length,
+				      int bufsize,
 					unsigned int tran_call,
 					char **pparams, int total_params, char **ppdata, int total_data,
 					unsigned int max_data_bytes)
@@ -5933,7 +5949,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
 		case SMB_FILE_ALLOCATION_INFORMATION:
 		case SMB_SET_FILE_ALLOCATION_INFO:
 		{
-			status =3D smb_set_file_allocation_info(conn,
+			status =3D smb_set_file_allocation_info(conn, req,
 								pdata,
 								total_data,
 								fsp,
@@ -5945,7 +5961,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
 		case SMB_FILE_END_OF_FILE_INFORMATION:
 		case SMB_SET_FILE_END_OF_FILE_INFO:
 		{
-			status =3D smb_set_file_end_of_file_info(conn,
+			status =3D smb_set_file_end_of_file_info(conn, req,
 								pdata,
 								total_data,
 								fsp,
@@ -6004,7 +6020,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
=20
 		case SMB_SET_FILE_UNIX_BASIC:
 		{
-			status =3D smb_set_file_unix_basic(conn,
+			status =3D smb_set_file_unix_basic(conn, req,
 							pdata,
 							total_data,
 							fsp,
@@ -6015,7 +6031,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
=20
 		case SMB_SET_FILE_UNIX_INFO2:
 		{
-			status =3D smb_set_file_unix_info2(conn,
+			status =3D smb_set_file_unix_info2(conn, req,
 							pdata,
 							total_data,
 							fsp,
@@ -6055,7 +6071,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
=20
 		case SMB_FILE_RENAME_INFORMATION:
 		{
-			status =3D smb_file_rename_information(conn,
+			status =3D smb_file_rename_information(conn, req,
 							inbuf,
 							outbuf,
 							pdata,
@@ -6099,7 +6115,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
 				return ERROR_NT(NT_STATUS_INVALID_LEVEL);
 			}
=20
-			status =3D smb_posix_open(conn,
+			status =3D smb_posix_open(conn, req,
 						ppdata,
 						total_data,
 						fname,
@@ -6115,7 +6131,7 @@ static int call_trans2setfilepathinfo(connection_stru=
ct *conn, char *inbuf, char
 				return ERROR_NT(NT_STATUS_INVALID_LEVEL);
 			}
=20
-			status =3D smb_posix_unlink(conn,
+			status =3D smb_posix_unlink(conn, req,
 						pdata,
 						total_data,
 						fname,
@@ -6451,9 +6467,9 @@ int reply_findnclose(connection_struct *conn,
 	return(outsize);
 }
=20
-int handle_trans2(connection_struct *conn,
-		  struct trans_state *state,
-		  char *inbuf, char *outbuf, int size, int bufsize)
+static int handle_trans2(connection_struct *conn, struct smb_request *req,
+			 struct trans_state *state,
+			 char *inbuf, char *outbuf, int size, int bufsize)
 {
 	int outsize;
=20
@@ -6467,7 +6483,7 @@ int handle_trans2(connection_struct *conn,
 	{
 		START_PROFILE(Trans2_open);
 		outsize =3D call_trans2open(
-			conn, inbuf, outbuf, bufsize,=20
+			conn, req, inbuf, outbuf, bufsize,
 			&state->param, state->total_param,
 			&state->data, state->total_data,
 			state->max_data_return);
@@ -6541,7 +6557,7 @@ int handle_trans2(connection_struct *conn,
 	{
 		START_PROFILE(Trans2_setpathinfo);
 		outsize =3D call_trans2setfilepathinfo(
-			conn, inbuf, outbuf, size, bufsize, state->call,
+			conn, req, inbuf, outbuf, size, bufsize, state->call,
 			&state->param, state->total_param,
 			&state->data, state->total_data,
 			state->max_data_return);
@@ -6749,7 +6765,10 @@ int reply_trans2(connection_struct *conn, char *inbu=
f,char *outbuf,
 	if ((state->received_param =3D=3D state->total_param) &&
 	    (state->received_data =3D=3D state->total_data)) {
=20
-		outsize =3D handle_trans2(conn, state, inbuf, outbuf,
+		struct smb_request req;
+		init_smb_request(&req, (uint8 *)inbuf);
+
+		outsize =3D handle_trans2(conn, &req, state, inbuf, outbuf,
 					size, bufsize);
 		SAFE_FREE(state->data);
 		SAFE_FREE(state->param);
@@ -6788,6 +6807,7 @@ int reply_transs2(connection_struct *conn,
 	int outsize =3D 0;
 	unsigned int pcnt,poff,dcnt,doff,pdisp,ddisp;
 	struct trans_state *state;
+	struct smb_request req;
=20
 	START_PROFILE(SMBtranss2);
=20
@@ -6873,7 +6893,10 @@ int reply_transs2(connection_struct *conn,
 	 */
 	SCVAL(outbuf,smb_com,SMBtrans2);
=20
-	outsize =3D handle_trans2(conn, state, inbuf, outbuf, size, bufsize);
+	init_smb_request(&req, (uint8 *)inbuf);
+
+	outsize =3D handle_trans2(conn, &req, state, inbuf, outbuf, size,
+				bufsize);
=20
 	DLIST_REMOVE(conn->pending_trans, state);
 	SAFE_FREE(state->data);
--=20
1.5.2.2


=46rom cc95551444cb984da404fa635f4256be7ecf000d Mon Sep 17 00:00:00 2001
=46rom: Volker Lendecke <vl@sernet.de>
Date: Thu, 5 Jul 2007 00:08:42 +0200
Subject: [PATCH] Get rid of get_current_mid()

---
 source/smbd/open.c    |   50 ++++++++++++++++++++++++++++++++-------------=
---
 source/smbd/process.c |    9 --------
 2 files changed, 33 insertions(+), 26 deletions(-)

diff --git a/source/smbd/open.c b/source/smbd/open.c
index 62a4fe0..5cb8340 100644
--- a/source/smbd/open.c
+++ b/source/smbd/open.c
@@ -644,6 +644,7 @@ static BOOL is_delete_request(files_struct *fsp) {
=20
 static BOOL delay_for_oplocks(struct share_mode_lock *lck,
 			      files_struct *fsp,
+			      uint16 mid,
 			      int pass_number,
 			      int oplock_request)
 {
@@ -728,7 +729,7 @@ static BOOL delay_for_oplocks(struct share_mode_lock *l=
ck,
=20
 	DEBUG(10, ("Sending break request to PID %s\n",
 		   procid_str_static(&exclusive->pid)));
-	exclusive->op_mid =3D get_current_mid();
+	exclusive->op_mid =3D mid;
=20
 	/* Create the message. */
 	share_mode_entry_to_message(msg, exclusive);
@@ -768,9 +769,9 @@ static BOOL request_timed_out(struct timeval request_ti=
me,
 static void defer_open(struct share_mode_lock *lck,
 		       struct timeval request_time,
 		       struct timeval timeout,
+		       uint16 mid,
 		       struct deferred_open_record *state)
 {
-	uint16 mid =3D get_current_mid();
 	int i;
=20
 	/* Paranoia check */
@@ -1065,7 +1066,9 @@ BOOL map_open_params_to_ntcreate(const char *fname, i=
nt deny_mode, int open_func
=20
 }
=20
-static void schedule_defer_open(struct share_mode_lock *lck, struct timeva=
l request_time)
+static void schedule_defer_open(struct share_mode_lock *lck,
+				struct timeval request_time,
+				uint16 mid)
 {
 	struct deferred_open_record state;
=20
@@ -1096,7 +1099,7 @@ static void schedule_defer_open(struct share_mode_loc=
k *lck, struct timeval requ
 	state.id =3D lck->id;
=20
 	if (!request_timed_out(request_time, timeout)) {
-		defer_open(lck, request_time, timeout, &state);
+		defer_open(lck, request_time, timeout, mid, &state);
 	}
 }
=20
@@ -1443,8 +1446,10 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 		}
=20
 		/* First pass - send break only on batch oplocks. */
-		if (delay_for_oplocks(lck, fsp, 1, oplock_request)) {
-			schedule_defer_open(lck, request_time);
+		if ((req !=3D NULL)
+		    && delay_for_oplocks(lck, fsp, req->mid, 1,
+					 oplock_request)) {
+			schedule_defer_open(lck, request_time, req->mid);
 			TALLOC_FREE(lck);
 			file_free(fsp);
 			return NT_STATUS_SHARING_VIOLATION;
@@ -1461,8 +1466,11 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 			 * status again. */
 			/* Second pass - send break for both batch or
 			 * exclusive oplocks. */
-			if (delay_for_oplocks(lck, fsp, 2, oplock_request)) {
-				schedule_defer_open(lck, request_time);
+			if ((req !=3D NULL)
+			     && delay_for_oplocks(lck, fsp, req->mid, 2,
+						  oplock_request)) {
+				schedule_defer_open(lck, request_time,
+						    req->mid);
 				TALLOC_FREE(lck);
 				file_free(fsp);
 				return NT_STATUS_SHARING_VIOLATION;
@@ -1576,10 +1584,11 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 				state.delayed_for_oplocks =3D False;
 				state.id =3D id;
=20
-				if (!request_timed_out(request_time,
-						       timeout)) {
+				if ((req !=3D NULL)
+				    && !request_timed_out(request_time,
+							  timeout)) {
 					defer_open(lck, request_time, timeout,
-						   &state);
+						   req->mid, &state);
 				}
 			}
=20
@@ -1667,8 +1676,10 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 		}
=20
 		/* First pass - send break only on batch oplocks. */
-		if (delay_for_oplocks(lck, fsp, 1, oplock_request)) {
-			schedule_defer_open(lck, request_time);
+		if ((req !=3D NULL)
+		    && delay_for_oplocks(lck, fsp, req->mid, 1,
+					 oplock_request)) {
+			schedule_defer_open(lck, request_time, req->mid);
 			TALLOC_FREE(lck);
 			fd_close(conn, fsp);
 			file_free(fsp);
@@ -1684,8 +1695,11 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 			 * status again. */
 			/* Second pass - send break for both batch or
 			 * exclusive oplocks. */
-			if (delay_for_oplocks(lck, fsp, 2, oplock_request)) {
-				schedule_defer_open(lck, request_time);
+			if ((req !=3D NULL)
+			    && delay_for_oplocks(lck, fsp, req->mid, 2,
+						 oplock_request)) {
+				schedule_defer_open(lck, request_time,
+						    req->mid);
 				TALLOC_FREE(lck);
 				fd_close(conn, fsp);
 				file_free(fsp);
@@ -1709,8 +1723,10 @@ NTSTATUS open_file_ntcreate(connection_struct *conn,
 			 * "goto top of this function", but don't tell
 			 * anybody... */
=20
-			defer_open(lck, request_time, timeval_zero(),
-				   &state);
+			if (req !=3D NULL) {
+				defer_open(lck, request_time, timeval_zero(),
+					   req->mid, &state);
+			}
 			TALLOC_FREE(lck);
 			return status;
 		}
diff --git a/source/smbd/process.c b/source/smbd/process.c
index dd623e6..1cb2c27 100644
--- a/source/smbd/process.c
+++ b/source/smbd/process.c
@@ -48,15 +48,6 @@ SIG_ATOMIC_T got_sig_term =3D 0;
 extern BOOL global_machine_password_needs_changing;
 extern int max_send;
=20
-/*************************************************************************=
***
- Function to return the current request mid from Inbuffer.
-**************************************************************************=
**/
-
-uint16 get_current_mid(void)
-{
-	return SVAL(InBuffer,smb_mid);
-}
-
 /*
  * Initialize a struct smb_request from an inbuf
  */
--=20
1.5.2.2


--VbJkn9YxBvnuCH5J--

--qcHopEYAB45HaUaB
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)

iD8DBQFGjPSYpZr5CauZH5wRAk3XAKC6iif8L1TXUhnOeMAiy41J1o0FmwCgnfA6
ACyuEtvLJ1ebIJWwcag+Y1U=
=GFmr
-----END PGP SIGNATURE-----

--qcHopEYAB45HaUaB--

         

0emhpr
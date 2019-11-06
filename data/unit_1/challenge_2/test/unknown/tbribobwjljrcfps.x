From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun  5 15:07:18 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55J7IhB012763
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 15:07:18 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 21A5E1638AE
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  5 Jun 2007 19:07:12 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_BLARS_RBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 3086C162ACC
	for <samba-technical@samba.org>; Tue,  5 Jun 2007 19:06:37 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id DF9D12F1EB
	for <samba-technical@samba.org>; Tue,  5 Jun 2007 14:06:36 -0500 (CDT)
Message-ID: <4665B43F.8060901@samba.org>
Date: Tue, 05 Jun 2007 14:06:39 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: samba-technical@samba.org
X-Enigmail-Version: 0.94.2.0
Content-Type: multipart/mixed; boundary="------------040002020402030406040204"
Subject: Disable the krb5 replay cache when ads_verify_ticket() call from
 winbindd_pam.c
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
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

This is a multi-part message in MIME format.
--------------040002020402030406040204
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Folks,

Here's a small patch that disables the libkrb5.so replay
cache when verifying a ticket from winbindd_pam.c.
I've found during multiple, fast, automated SSH logins (such
as from a cron script) that the replay cache in MIT's krb5
lib will occasionally fail the krb5_rd_req() as a replay attack.

There seems to be a small window during which the MIT krb5
libs could reproduce identical time stamps for ctime and cusec
in the authenticator since Unix systems only give back
milli-seconds rather than the micro-seconds needed by the
authenticator.  Checked against MIT 1.5.1.  Have not
researched how Heimdal does it.

My thinking is that if someone can spoof the KDC and TDS
services we are pretty hopeless anyways.

I have customers hitting this now so it's a real issue.
Maybe this should be configurable and always use the rcache
by default.  Comments ?



cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGZbQ/IR7qMdg1EfYRAqvJAJ9fKdqKPZ2Zmv+849tQC5aeBAMqBwCfescJ
DhYRjLlJxVzOV+gUEOZHSq8=
=jeDy
-----END PGP SIGNATURE-----

--------------040002020402030406040204
Content-Type: text/x-patch;
 name="disable_rcache_option.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="disable_rcache_option.patch"

Index: source/smbd/sesssetup.c
===================================================================
--- source/smbd/sesssetup.c	(revision 23356)
+++ source/smbd/sesssetup.c	(working copy)
@@ -270,7 +270,9 @@
 		return ERROR_NT(nt_status_squash(NT_STATUS_LOGON_FAILURE));
 	}
 
-	ret = ads_verify_ticket(mem_ctx, lp_realm(), 0, &ticket, &client, &pac_data, &ap_rep, &session_key);
+	ret = ads_verify_ticket(mem_ctx, lp_realm(), 0, &ticket, 
+				&client, &pac_data, &ap_rep, 
+				&session_key, True);
 
 	data_blob_free(&ticket);
 
Index: source/nsswitch/winbindd_pam.c
===================================================================
--- source/nsswitch/winbindd_pam.c	(revision 23356)
+++ source/nsswitch/winbindd_pam.c	(working copy)
@@ -615,7 +615,7 @@
 				   &client_princ_out, 
 				   &pac_data, 
 				   &ap_rep, 
-				   &session_key);	
+				   &session_key, False);
 	if (!NT_STATUS_IS_OK(result)) {
 		DEBUG(0,("winbindd_raw_kerberos_login: ads_verify_ticket failed: %s\n", 
 			nt_errstr(result)));
Index: source/libads/kerberos_verify.c
===================================================================
--- source/libads/kerberos_verify.c	(revision 23356)
+++ source/libads/kerberos_verify.c	(working copy)
@@ -214,7 +214,14 @@
 	BOOL auth_ok = False;
 	char *password_s = NULL;
 	krb5_data password;
-	krb5_enctype enctypes[4] = { ENCTYPE_DES_CBC_CRC, ENCTYPE_DES_CBC_MD5, 0, 0 };
+	krb5_enctype enctypes[] = { 
+#if defined(ENCTYPE_ARCFOUR_HMAC)
+		ENCTYPE_ARCFOUR_HMAC,
+#endif
+		ENCTYPE_DES_CBC_CRC, 
+		ENCTYPE_DES_CBC_MD5, 
+		ENCTYPE_NULL
+	};
 	krb5_data packet;
 	int i;
 
@@ -222,9 +229,6 @@
 	*keyblock = NULL;
 	*perr = 0;
 
-#if defined(ENCTYPE_ARCFOUR_HMAC)
-	enctypes[2] = ENCTYPE_ARCFOUR_HMAC;
-#endif
 
 	if (!secrets_init()) {
 		DEBUG(1,("ads_secrets_verify_ticket: secrets_init failed\n"));
@@ -307,7 +311,8 @@
 			   char **principal,
 			   PAC_DATA **pac_data,
 			   DATA_BLOB *ap_rep,
-			   DATA_BLOB *session_key)
+			   DATA_BLOB *session_key,
+			   BOOL use_replay_cache)
 {
 	NTSTATUS sret = NT_STATUS_LOGON_FAILURE;
 	NTSTATUS pac_ret;
@@ -320,7 +325,7 @@
 	krb5_keyblock *keyblock = NULL;
 	time_t authtime;
 	krb5_error_code ret = 0;
-	
+	krb5_int32 flags = 0;	
 	krb5_principal host_princ = NULL;
 	krb5_const_principal client_principal = NULL;
 	char *host_princ_s = NULL;
@@ -363,6 +368,13 @@
 		goto out;
 	}
 
+	krb5_auth_con_getflags( context, auth_context, &flags );
+	if ( !use_replay_cache ) {
+		/* Disable default use of a replay cache */
+		flags &= ~KRB5_AUTH_CONTEXT_DO_TIME;
+		krb5_auth_con_setflags( context, auth_context, flags );
+	}
+
 	asprintf(&host_princ_s, "%s$", global_myname());
 	if (!host_princ_s) {
 		goto out;
@@ -377,50 +389,62 @@
 	}
 
 
-	/* Lock a mutex surrounding the replay as there is no locking in the MIT krb5
-	 * code surrounding the replay cache... */
+	if ( use_replay_cache ) {
+		
+		/* Lock a mutex surrounding the replay as there is no 
+		   locking in the MIT krb5 code surrounding the replay 
+		   cache... */
 
-	if (!grab_server_mutex("replay cache mutex")) {
-		DEBUG(1,("ads_verify_ticket: unable to protect replay cache with mutex.\n"));
-		ret = KRB5_CC_IO;
-		goto out;
-	}
+		if (!grab_server_mutex("replay cache mutex")) {
+			DEBUG(1,("ads_verify_ticket: unable to protect "
+				 "replay cache with mutex.\n"));
+			ret = KRB5_CC_IO;
+			goto out;
+		}
 
-	got_replay_mutex = True;
+		got_replay_mutex = True;
 
-	/*
-	 * JRA. We must set the rcache here. This will prevent replay attacks.
-	 */
+		/* JRA. We must set the rcache here. This will prevent 
+		   replay attacks. */
+		
+		ret = krb5_get_server_rcache(context, 
+					     krb5_princ_component(context, host_princ, 0), 
+					     &rcache);
+		if (ret) {
+			DEBUG(1,("ads_verify_ticket: krb5_get_server_rcache "
+				 "failed (%s)\n", error_message(ret)));
+			goto out;
+		}
 
-	ret = krb5_get_server_rcache(context, krb5_princ_component(context, host_princ, 0), &rcache);
-	if (ret) {
-		DEBUG(1,("ads_verify_ticket: krb5_get_server_rcache failed (%s)\n", error_message(ret)));
-		goto out;
+		ret = krb5_auth_con_setrcache(context, auth_context, rcache);
+		if (ret) {
+			DEBUG(1,("ads_verify_ticket: krb5_auth_con_setrcache "
+				 "failed (%s)\n", error_message(ret)));
+			goto out;
+		}
 	}
 
-	ret = krb5_auth_con_setrcache(context, auth_context, rcache);
-	if (ret) {
-		DEBUG(1,("ads_verify_ticket: krb5_auth_con_setrcache failed (%s)\n", error_message(ret)));
-		goto out;
-	}
+	/* Try secrets.tdb first and fallback to the krb5.keytab if
+	   necessary */
 
-	if (lp_use_kerberos_keytab()) {
-		auth_ok = ads_keytab_verify_ticket(context, auth_context, ticket, &tkt, &keyblock, &ret);
+        auth_ok = ads_secrets_verify_ticket(context, auth_context, host_princ,
+					    ticket, &tkt, &keyblock, &ret);
+
+	if (!auth_ok && lp_use_kerberos_keytab()) {
+		auth_ok = ads_keytab_verify_ticket(context, auth_context, 
+						   ticket, &tkt, &keyblock, &ret);
 	}
-	if (!auth_ok) {
-		auth_ok = ads_secrets_verify_ticket(context, auth_context, host_princ,
-						    ticket, &tkt, &keyblock, &ret);
-	}
 
-	release_server_mutex();
-	got_replay_mutex = False;
-
+	if ( use_replay_cache ) {		
+		release_server_mutex();
+		got_replay_mutex = False;
 #if 0
-	/* Heimdal leaks here, if we fix the leak, MIT crashes */
-	if (rcache) {
-		krb5_rc_close(context, rcache);
-	}
+		/* Heimdal leaks here, if we fix the leak, MIT crashes */
+		if (rcache) {
+			krb5_rc_close(context, rcache);
+		}
 #endif
+	}	
 
 	if (!auth_ok) {
 		DEBUG(3,("ads_verify_ticket: krb5_rd_req with auth failed (%s)\n", 
Index: source/utils/ntlm_auth.c
===================================================================
--- source/utils/ntlm_auth.c	(revision 23356)
+++ source/utils/ntlm_auth.c	(working copy)
@@ -1169,7 +1169,7 @@
 			status = ads_verify_ticket(mem_ctx, lp_realm(), 0,
 						   &request.negTokenInit.mechToken,
 						   &principal, NULL, &ap_rep,
-						   &session_key);
+						   &session_key, True);
 
 			talloc_destroy(mem_ctx);
 

--------------040002020402030406040204--

         

2rv-c:
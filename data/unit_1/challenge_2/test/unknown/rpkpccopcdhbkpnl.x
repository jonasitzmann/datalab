From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 30 18:17:31 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UMHVL9012354
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 18:17:31 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0DA131638BE
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 22:17:25 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	NO_REAL_NAME,RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no 
	version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id B4A4B162C28;
	Sat, 30 Jun 2007 22:16:28 +0000 (GMT)
Received: from localhost.localdomain (unknown [192.168.1.136])
	by mail.plainjoe.org (Postfix) with ESMTP id 633822F0A2;
	Sat, 30 Jun 2007 17:16:28 -0500 (CDT)
From: jerry@samba.org
To: gd@samba.org
Date: Sat, 30 Jun 2007 17:16:28 -0500
Message-Id: <11832417882495-git-send-email-jerry@samba.org>
X-Mailer: git-send-email 1.5.2
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------1.5.2"
Cc: "Gerald Carter \(Jerry\)" <jerry@samba.org>, idra@samba.org, jra@samba.org,
   samba-technical@samba.org
Subject: [PATCH] Implement simple means of supporting pam_winbind UPNB
	logins.
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

From: Gerald (Jerry) Carter <jerry@samba.org>

This is a multi-part message in MIME format.
--------------1.5.2
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

Guenther,

I know we've been around a few times on this whole upn 
logon approach.  I looked over your patch and it seems
much more complicated than I think it needs to be.
Basically I think we can have pam_winbindd do the upn -> 
sid -> sAMAccountName conversion and just extend the 
msrpc_name_to_sid() call to send the UPN (just as in your 
previous patch).

I've tested this in my local Centeris tree using ssh
and Gnome's gdm.  Seems to work fine.  What do you think?
It adds no new call to the winbindd_methods structure.
Nor does it require an explicit enable using a new
parameter in smb.conf.



cheers,jerry
---

$ ssh -l 'gcarter@ad.plainjoe.org' localhost
Password:
Linux rain 2.6.20-16-generic #2 SMP Thu Jun 7 20:19:32 UTC 2007 i686
Last login: Sat Jun 30 16:16:28 2007 from localhost

[AD\gcarter@rain ~]501$ groups
AD\unixusers plugdev admin powerdev AD\domain^users AD\domain^admins AD\unixadmins
---
 source/nsswitch/pam_winbind.c   |   55 +++++++++++++++++++++++++++++++++++++++
 source/nsswitch/winbindd_rpc.c  |    6 +++-
 source/nsswitch/winbindd_util.c |    2 +
 3 files changed, 62 insertions(+), 1 deletions(-)
--------------1.5.2
Content-Type: text/x-patch;
	name="fea6210b461a148e43430e886aa2ec36a457454b.diff"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment;
	filename="fea6210b461a148e43430e886aa2ec36a457454b.diff"

diff --git a/source/nsswitch/pam_winbind.c b/source/nsswitch/pam_winbind.c
index 81b9c0b..c567321 100644
--- a/source/nsswitch/pam_winbind.c
+++ b/source/nsswitch/pam_winbind.c
@@ -1534,6 +1534,48 @@ const char *get_member_from_config(const pam_handle_t *pamh, int argc, const cha
 	return get_conf_item_string(pamh, argc, argv, ctrl, d, "require-membership-of", WINBIND_REQUIRED_MEMBERSHIP);
 }
 
+static char* translate_upn_username(const char *upn)
+{
+	struct winbindd_request req;
+	struct winbindd_response resp;
+	NSS_STATUS nss_result = NSS_STATUS_UNAVAIL;
+	char *account_name;	
+	int account_name_len;	
+	
+	/* Convert the UPN to a SID */
+
+	ZERO_STRUCT(req);
+	ZERO_STRUCT(resp);
+
+       	strncpy(req.data.name.dom_name, "",
+		sizeof(req.data.name.dom_name) - 1);
+       	strncpy(req.data.name.name, upn,
+		sizeof(req.data.name.name) - 1);
+	nss_result =  winbindd_request_response(WINBINDD_LOOKUPNAME, &req, 
+						&resp);
+	if ( nss_result != NSS_STATUS_SUCCESS) {
+		return NULL;
+	}
+	
+	/* Convert the the SID back to the sAMAccountName */
+	
+	ZERO_STRUCT(req);
+	ZERO_STRUCT(resp);
+
+	strncpy(req.data.sid, resp.data.sid.sid, sizeof(req.data.sid)-1);
+	nss_result =  winbindd_request_response(WINBINDD_LOOKUPSID, &req, 
+						&resp);
+	if ( nss_result != NSS_STATUS_SUCCESS) {
+		return NULL;
+	}
+	
+	account_name_len = asprintf(&account_name, "%s\\%s", 
+				    resp.data.name.dom_name,
+				    resp.data.name.name);
+
+	return account_name;
+}
+
 PAM_EXTERN
 int pam_sm_authenticate(pam_handle_t *pamh, int flags,
 			int argc, const char **argv)
@@ -1565,6 +1607,7 @@ int pam_sm_authenticate(pam_handle_t *pamh, int flags,
 		goto out;
 	}
 
+
 #if defined(AIX)
 	/* Decode the user name since AIX does not support logn user
 	   names by default.  The name is encoded as _#uid.  */
@@ -1589,6 +1632,18 @@ int pam_sm_authenticate(pam_handle_t *pamh, int flags,
 		}
 	}	
 
+	/* Maybe this was a UPN */
+
+	if (strchr(username, '@') == NULL) {
+		char *samaccountname = NULL;
+		
+		samaccountname = translate_upn_username(real_username);
+		if (samaccountname) {
+			free(real_username);
+			real_username = samaccountname;
+		}
+	}
+
 	retval = _winbind_read_password(pamh, ctrl, NULL, 
 					"Password: ", NULL,
 					&password);
diff --git a/source/nsswitch/winbindd_rpc.c b/source/nsswitch/winbindd_rpc.c
index 7899d62..8f1b631 100644
--- a/source/nsswitch/winbindd_rpc.c
+++ b/source/nsswitch/winbindd_rpc.c
@@ -272,7 +272,11 @@ NTSTATUS msrpc_name_to_sid(struct winbindd_domain *domain,
         if(name == NULL || *name=='\0') {
                 DEBUG(3,("rpc: name_to_sid name=%s\n", domain_name));
                 full_name = talloc_asprintf(mem_ctx, "%s", domain_name);
-        } else {
+        } else if (!domain_name || (*domain_name == '\0')) {
+		DEBUG(3,("rpc: name_to_sid name=%s\n",name));
+		full_name = talloc_strdup(mem_ctx, name);		
+	}
+	else {
                 DEBUG(3,("rpc: name_to_sid name=%s\\%s\n", domain_name, name));
                 full_name = talloc_asprintf(mem_ctx, "%s\\%s", domain_name, name);
         }
diff --git a/source/nsswitch/winbindd_util.c b/source/nsswitch/winbindd_util.c
index bf606c3..8038058 100644
--- a/source/nsswitch/winbindd_util.c
+++ b/source/nsswitch/winbindd_util.c
@@ -1069,6 +1069,8 @@ BOOL parse_domain_user(const char *domuser, fstring domain, fstring user)
 
 		if ( assume_domain(lp_workgroup())) {
 			fstrcpy(domain, lp_workgroup());
+		} else if ((p = strchr(domuser, '@')) != NULL) {
+			fstrcpy(domain, "");			
 		} else {
 			return False;
 		}

--------------1.5.2--


  

9mple e;"ohoAa
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 11:20:55 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51FKshB011456
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 11:20:54 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C78D81638BB
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 15:20:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=BAYES_05,FORGED_RCVD_HELO,
	NO_MORE_FUNN,RCVD_IN_BLARS_RBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
X-Greylist: delayed 724 seconds by postgrey-1.24 at dp.samba.org;
	Fri, 01 Jun 2007 15:19:47 GMT
Received: from bonkers.video-collage.com
	(static-151-204-231-237.bos.east.verizon.net [151.204.231.237])
	by lists.samba.org (Postfix) with ESMTP id B3531162AC3
	for <samba-technical@lists.samba.org>;
	Fri,  1 Jun 2007 15:19:47 +0000 (GMT)
Received: from bonkers.video-collage.com (localhost [127.0.0.1])
	by bonkers.video-collage.com (8.14.1/8.14.1) with ESMTP id
	l51F7ZlD062175; Fri, 1 Jun 2007 11:07:35 -0400 (EDT)
	(envelope-from mi@bonkers.video-collage.com)
Received: (from mi@localhost)
	by bonkers.video-collage.com (8.14.1/8.14.1/Submit) id l51F7YHn062173; 
	Fri, 1 Jun 2007 11:07:34 -0400 (EDT) (envelope-from mi)
From: Mikhail Teterin <mi@bonkers.video-collage.com>
Message-Id: <200706011507.l51F7YHn062173@bonkers.video-collage.com>
To: samba-technical@lists.samba.org
Date: Fri, 1 Jun 2007 11:07:34 -0400 (EDT)
X-Mailer: ELM [version 2.5 PL8]
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="%--multipart-mixed-boundary-1.61933.1180710454--%"
Cc: imp@FreeBSD.org, timur@gnu.org
Subject: patching Samba's nsswitch/pam_winbind.c
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


--%--multipart-mixed-boundary-1.61933.1180710454--%
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello!

The file compiles with a large number of warnings at the moment.
Many of them are 64bit-specific, but not all.

The attached patch fixes the following three problems:

	1. The pamh argument is not read-only -- at least, it is not on FreeBSD.
	2. The functions pam_get_data and pam_get_item are declared as:

     int
     pam_get_data(pam_handle_t *pamh, const char *module_data_name,
	 void **data);

	   and

     int
     pam_get_item(pam_handle_t *pamh, int item_type, const void **item);

	   Note, that there is not read-only guarantee in the case of data --
	   on FreeBSD. On Solaris-10 both the pamh and the data are, indeed,
	   const, and on Linux, probably, too.

	   This parts of the patch may be FreeBSD-specific, although our
	   pam(3) claims the following compliance:

	STANDARDS
	     X/Open Single Sign-On Service (XSSO) - Pluggable Authentication
	     Modules, June 1997.

	3. The correct way to print a pointer is using %p. The file
	   currently prints the pointer as a 32-bit integer...

Samba's bugzilla is down at the moment -- please, consider the patch (or
pieces of it) at your leisure.

Thanks! Yours,

	-mi

--%--multipart-mixed-boundary-1.61933.1180710454--%
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Description: ASCII C program text
Content-Disposition: attachment; filename="patch-nsswitch_pam_winbind.c"

--- source/nsswitch/pam_winbind.c	Fri Apr 20 21:48:07 2007
+++ source/nsswitch/pam_winbind.c	Fri Jun  1 10:47:15 2007
@@ -15,5 +15,5 @@
 #define _PAM_LOG_FUNCTION_ENTER(function, pamh, ctrl, flags) \
 	do { \
-		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%08x] ENTER: " function " (flags: 0x%04x)", (uint32) pamh, flags); \
+		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%p] ENTER: " function " (flags: 0x%04x)", pamh, flags); \
 		_pam_log_state(pamh, ctrl); \
 	} while (0)
@@ -21,5 +21,5 @@
 #define _PAM_LOG_FUNCTION_LEAVE(function, pamh, ctrl, retval) \
 	do { \
-		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%08x] LEAVE: " function " returning %d", (uint32) pamh, retval); \
+		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%p] LEAVE: " function " returning %d", pamh, retval); \
 		_pam_log_state(pamh, ctrl); \
 	} while (0)
@@ -33,5 +33,5 @@
  * These lead to strict aliasing warnings with gcc.
  */
-static int _pam_get_item(const pam_handle_t *pamh, int item_type,
+static int _pam_get_item(pam_handle_t *pamh, int item_type,
 			 const void *_item)
 {
@@ -39,8 +39,8 @@
 	return pam_get_item(pamh, item_type, item);
 }
-static int _pam_get_data(const pam_handle_t *pamh,
-			 const char *module_data_name, const void *_data)
+static int _pam_get_data(pam_handle_t *pamh,
+			 const char *module_data_name, void *_data)
 {
-	const void **data = (const void **)_data;
+	void **data = (void **)_data;
 	return pam_get_data(pamh, module_data_name, data);
 }
@@ -54,5 +54,5 @@
 }
 #else
-static void _pam_log_int(const pam_handle_t *pamh, int err, const char *format, va_list args)
+static void _pam_log_int(pam_handle_t *pamh, int err, const char *format, va_list args)
 {
 	char *format2 = NULL;
@@ -79,6 +79,6 @@
 }
 
-static void _pam_log(const pam_handle_t *pamh, int ctrl, int err, const char *format, ...) PRINTF_ATTRIBUTE(4,5);
-static void _pam_log(const pam_handle_t *pamh, int ctrl, int err, const char *format, ...)
+static void _pam_log(pam_handle_t *pamh, int ctrl, int err, const char *format, ...) PRINTF_ATTRIBUTE(4,5);
+static void _pam_log(pam_handle_t *pamh, int ctrl, int err, const char *format, ...)
 {
 	va_list args;
@@ -119,6 +119,6 @@
 }
 
-static void _pam_log_debug(const pam_handle_t *pamh, int ctrl, int err, const char *format, ...) PRINTF_ATTRIBUTE(4,5);
-static void _pam_log_debug(const pam_handle_t *pamh, int ctrl, int err, const char *format, ...)
+static void _pam_log_debug(pam_handle_t *pamh, int ctrl, int err, const char *format, ...) PRINTF_ATTRIBUTE(4,5);
+static void _pam_log_debug(pam_handle_t *pamh, int ctrl, int err, const char *format, ...)
 {
 	va_list args;
@@ -133,9 +133,9 @@
 }
 
-static void _pam_log_state_datum(const pam_handle_t *pamh, int ctrl, int item_type, const char *key, int is_string)
+static void _pam_log_state_datum(pam_handle_t *pamh, int ctrl, int item_type, const char *key, int is_string)
 {
-	const void *data = NULL;
+	void *data = NULL;
 	if (item_type != 0) {
-		pam_get_item(pamh, item_type, &data);
+		_pam_get_item(pamh, item_type, &data);
 	} else {
 		pam_get_data(pamh, key, &data);
@@ -144,7 +144,7 @@
 		const char *type = (item_type != 0) ? "ITEM" : "DATA";
 		if (is_string != 0) {
-			_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%08x] STATE: %s(%s) = \"%s\" (0x%08x)", (uint32) pamh, type, key, (const char *) data, (uint32) data);
+			_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%p] STATE: %s(%s) = \"%s\" (0x%p)", pamh, type, key, (const char *) data, data);
 		} else {
-			_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%08x] STATE: %s(%s) = 0x%08x", (uint32) pamh, type, key, (uint32) data);
+			_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%p] STATE: %s(%s) = 0x%p", pamh, type, key, data);
 		}
 	}
@@ -172,5 +172,5 @@
 	_pam_log_state_datum(pamh, ctrl, item_type, #item_type, _LOG_PASSWORD_AS_STRING)
 
-static void _pam_log_state(const pam_handle_t *pamh, int ctrl)
+static void _pam_log_state(pam_handle_t *pamh, int ctrl)
 {
 	if (!_pam_log_is_debug_state_enabled(ctrl)) {
@@ -203,5 +203,5 @@
 }
 
-static int _pam_parse(const pam_handle_t *pamh, int flags, int argc, const char **argv, dictionary **result_d)
+static int _pam_parse(pam_handle_t *pamh, int flags, int argc, const char **argv, dictionary **result_d)
 {
 	int ctrl = 0;
@@ -314,5 +314,5 @@
 	int ctrl = _pam_parse(pamh, 0, 0, NULL, NULL);
 	if (_pam_log_is_debug_state_enabled(ctrl)) {
-		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%08x] CLEAN: cleaning up PAM data 0x%08x (error_status = %d)", (uint32) pamh, (uint32) data, error_status);
+		_pam_log_debug(pamh, ctrl, LOG_DEBUG, "[pamh: 0x%p] CLEAN: cleaning up PAM data 0x%p (error_status = %d)", pamh, data, error_status);
 	}
 	SAFE_FREE(data);
@@ -1442,5 +1442,5 @@
 }
 
-const char *get_conf_item_string(const pam_handle_t *pamh,
+const char *get_conf_item_string(pam_handle_t *pamh,
 				 int argc, 
 				 const char **argv, 
@@ -1491,10 +1491,10 @@
 }
 
-const char *get_krb5_cc_type_from_config(const pam_handle_t *pamh, int argc, const char **argv, int ctrl, dictionary *d)
+const char *get_krb5_cc_type_from_config(pam_handle_t *pamh, int argc, const char **argv, int ctrl, dictionary *d)
 {
 	return get_conf_item_string(pamh, argc, argv, ctrl, d, "krb5_ccache_type", WINBIND_KRB5_CCACHE_TYPE);
 }
 
-const char *get_member_from_config(const pam_handle_t *pamh, int argc, const char **argv, int ctrl, dictionary *d)
+const char *get_member_from_config(pam_handle_t *pamh, int argc, const char **argv, int ctrl, dictionary *d)
 {
 	const char *ret = NULL;
@@ -1736,5 +1736,5 @@
 		goto out;
 	case 0:
-		pam_get_data( pamh, PAM_WINBIND_NEW_AUTHTOK_REQD, (const void **)&tmp);
+		pam_get_data( pamh, PAM_WINBIND_NEW_AUTHTOK_REQD, (void **)&tmp);
 		if (tmp != NULL) {
 			ret = atoi((const char *)tmp);

--%--multipart-mixed-boundary-1.61933.1180710454--%--

                

zxf@�Ctotr .o
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 20:17:40 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5N0HeL9011516
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 20:17:40 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1D71D163917
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 00:17:38 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 9C5FA162AFE
	for <samba-technical@lists.samba.org>;
	Sat, 23 Jun 2007 00:16:37 +0000 (GMT)
Message-Id: <DE2C5A36-763C-4BBF-858A-3188E5FC9107@samba.org>
From: James Peach <jpeach@samba.org>
To: samba tech <samba-technical@lists.samba.org>
Content-Type: multipart/mixed; boundary=Apple-Mail-3-239650165
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Fri, 22 Jun 2007 17:16:36 -0700
X-Mailer: Apple Mail (2.890.2)
Subject: [RFC][SAMBA3] minimal named stream support 
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


--Apple-Mail-3-239650165
Content-Type: text/plain;
	charset=US-ASCII;
	format=flowed;
	delsp=yes
Content-Transfer-Encoding: 7bit

Hi all,

Attached is a patch that minimally enables named stream support in  
Samba3. Please do not merge this anywhere, I'm posting it only to  
assist with scoping out various possible implementation approaches.

The patch does the bare minimum required to get stream pathnames  
through reply_ntcreate_and_X and into the VFS layer. The goal of this  
patch is not to have the best possible stream support, but to support  
named streams with minimally intrusive changes to the Samba code.

The actual stream support (based on extended attributes and HFS  
resource forks) is in a separate VFS module. The only additional VFS  
operation needed is the streaminfo operation.


--Apple-Mail-3-239650165
Content-Disposition: attachment
Content-Type: multipart/appledouble;
	boundary=Apple-Mail-4-239650168


--Apple-Mail-4-239650168
Content-Disposition: attachment;
	filename=samba-streams-support.txt
Content-Type: application/applefile;
	name="samba-streams-support.txt"
Content-Transfer-Encoding: base64

AAUWBwACAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAJAAAAMgAAAAoAAAADAAAAPAAAABkAAAAAAAAA
AABAc2FtYmEtc3RyZWFtcy1zdXBwb3J0LnR4dA==

--Apple-Mail-4-239650168
Content-Disposition: attachment;
	filename=samba-streams-support.txt
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; x-mac-creator=0; x-unix-mode=0644; x-mac-type=0;
	name="samba-streams-support.txt"
Content-Id: <1FE1B79C-3351-4CEF-ACAF-BA9379CE4900@apple.com>

Index: samba/source/param/loadparm.c
===================================================================
--- samba/source/param/loadparm.c.orig
+++ samba/source/param/loadparm.c
@@ -450,6 +450,7 @@ typedef struct {
 	BOOL bMap_acl_inherit;
 	BOOL bAfs_Share;
 	BOOL bEASupport;
+	BOOL bStreamSupport;
 	BOOL bAclCheckPermissions;
 	BOOL bAclMapFullControl;
 	BOOL bAclGroupControl;
@@ -591,6 +592,7 @@ static service sDefault = {
 	False,			/* bMap_acl_inherit */
 	False,			/* bAfs_Share */
 	False,			/* bEASupport */
+	False,			/* bStreamSupport */
 	True,			/* bAclCheckPermissions */
 	True,			/* bAclMapFullControl */
 	False,			/* bAclGroupControl */
@@ -982,6 +984,7 @@ static struct parm_struct parm_table[] =
 	{"acl compatibility", P_ENUM, P_GLOBAL, &Globals.iAclCompat, NULL,  enum_acl_compat_vals, FLAG_ADVANCED | FLAG_SHARE | FLAG_GLOBAL}, 
 	{"defer sharing violations", P_BOOL, P_GLOBAL, &Globals.bDeferSharingViolations, NULL, NULL, FLAG_ADVANCED | FLAG_GLOBAL},
 	{"ea support", P_BOOL, P_LOCAL, &sDefault.bEASupport, NULL, NULL, FLAG_ADVANCED | FLAG_SHARE | FLAG_GLOBAL}, 
+	{"stream support", P_BOOL, P_LOCAL, &sDefault.bStreamSupport, NULL, NULL, FLAG_ADVANCED | FLAG_SHARE | FLAG_GLOBAL},
 	{"nt acl support", P_BOOL, P_LOCAL, &sDefault.bNTAclSupport, NULL, NULL, FLAG_ADVANCED | FLAG_SHARE | FLAG_GLOBAL}, 
 	{"nt pipe support", P_BOOL, P_GLOBAL, &Globals.bNTPipeSupport, NULL, NULL, FLAG_ADVANCED}, 
 	{"nt status support", P_BOOL, P_GLOBAL, &Globals.bNTStatusSupport, NULL, NULL, FLAG_ADVANCED}, 
@@ -2122,6 +2125,7 @@ FN_LOCAL_BOOL(lp_force_printername, bFor
 FN_LOCAL_BOOL(lp_nt_acl_support, bNTAclSupport)
 FN_LOCAL_BOOL(lp_force_unknown_acl_user, bForceUnknownAclUser)
 FN_LOCAL_BOOL(lp_ea_support, bEASupport)
+FN_LOCAL_BOOL(lp_stream_support, bStreamSupport)
 FN_LOCAL_BOOL(_lp_use_sendfile, bUseSendfile)
 FN_LOCAL_BOOL(lp_profile_acls, bProfileAcls)
 FN_LOCAL_BOOL(lp_map_acl_inherit, bMap_acl_inherit)
Index: samba/source/include/vfs.h
===================================================================
--- samba/source/include/vfs.h.orig
+++ samba/source/include/vfs.h
@@ -71,7 +71,8 @@
  * timestamp resolition. JRA. */
 /* Changed to version21 to add chflags operation -- jpeach */
 /* Changed to version22 to add lchown operation -- jra */
-#define SMB_VFS_INTERFACE_VERSION 22
+/* Changed to version 23 to add the streaminfo call. -- jpeach */
+#define SMB_VFS_INTERFACE_VERSION 23
 
 
 /* to bug old modules which are trying to compile with the old functions */
@@ -162,6 +163,7 @@ typedef enum _vfs_op_type {
 	SMB_VFS_OP_REALPATH,
 	SMB_VFS_OP_NOTIFY_WATCH,
 	SMB_VFS_OP_CHFLAGS,
+	SMB_VFS_OP_STREAMINFO,
 
 	/* NT ACL operations. */
 
@@ -295,6 +297,8 @@ struct vfs_ops {
 							  struct notify_event *ev),
 					 void *private_data, void *handle_p);
 		int (*chflags)(struct vfs_handle_struct *handle, const char *path, uint flags);
+		int (*streaminfo)(struct vfs_handle_struct *handle, struct files_struct *fsp,
+				    const char *fname, char **names, size_t **sizes);
 		
 		/* NT ACL operations. */
 		
@@ -414,6 +418,7 @@ struct vfs_ops {
 		struct vfs_handle_struct *realpath;
 		struct vfs_handle_struct *notify_watch;
 		struct vfs_handle_struct *chflags;
+		struct vfs_handle_struct *streaminfo;
 
 		/* NT ACL operations. */
 
Index: samba/source/include/vfs_macros.h
===================================================================
--- samba/source/include/vfs_macros.h.orig
+++ samba/source/include/vfs_macros.h
@@ -81,6 +81,7 @@
 #define SMB_VFS_REALPATH(conn, path, resolved_path) ((conn)->vfs.ops.realpath((conn)->vfs.handles.realpath, (path), (resolved_path)))
 #define SMB_VFS_NOTIFY_WATCH(conn, ctx, e, callback, private_data, handle_p) ((conn)->vfs.ops.notify_watch((conn)->vfs.handles.notify_watch, (ctx), (e), (callback), (private_data), (handle_p)))
 #define SMB_VFS_CHFLAGS(conn, path, flags) ((conn)->vfs.ops.chflags((conn)->vfs.handles.chflags, (path), (flags)))
+#define SMB_VFS_STREAMINFO(conn, fsp, fname, names, sizes) ((conn)->vfs.ops.streaminfo((conn)->vfs.handles.streaminfo, (fsp), (fname), (names), (sizes)))
 
 /* NT ACL operations. */
 #define SMB_VFS_FGET_NT_ACL(fsp, fd, security_info, ppdesc) ((fsp)->conn->vfs.ops.fget_nt_acl((fsp)->conn->vfs.handles.fget_nt_acl, (fsp), (fd), (security_info), (ppdesc)))
@@ -198,6 +199,7 @@
 #define SMB_VFS_OPAQUE_REALPATH(conn, path, resolved_path) ((conn)->vfs_opaque.ops.realpath((conn)->vfs_opaque.handles.realpath, (path), (resolved_path)))
 #define SMB_VFS_OPAQUE_NOTIFY_WATCH(conn, ctx, e, callback, private_data, handle_p) ((conn)->vfs_opaque.ops.notify_watch((conn)->vfs_opaque.handles.notify_watch, (ctx), (e), (callback), (private_data), (handle_p)))
 #define SMB_VFS_OPAQUE_CHFLAGS(conn, path, flags) ((conn)->vfs_opaque.ops.chflags((conn)->vfs_opaque.handles.chflags, (path), (flags)))
+#define SMB_VFS_OPAQUE_STREAMINFO(conn, fsp, fname, names, sizes) ((conn)->vfs_opaque.ops.streaminfo((conn)->vfs_opaque.handles.streaminfo, (fsp), (fname), (names), (sizes)))
 
 /* NT ACL operations. */
 #define SMB_VFS_OPAQUE_FGET_NT_ACL(fsp, fd, security_info, ppdesc) ((fsp)->conn->vfs_opaque.ops.fget_nt_acl((fsp)->conn->vfs_opaque.handles.fget_nt_acl, (fsp), (fd), (security_info), (ppdesc)))
@@ -316,6 +318,7 @@
 #define SMB_VFS_NEXT_REALPATH(handle, path, resolved_path) ((handle)->vfs_next.ops.realpath((handle)->vfs_next.handles.realpath, (path), (resolved_path)))
 #define SMB_VFS_NEXT_NOTIFY_WATCH(conn, ctx, e, callback, private_data, handle_p) ((conn)->vfs_next.ops.notify_watch((conn)->vfs_next.handles.notify_watch, (ctx), (e), (callback), (private_data), (handle_p)))
 #define SMB_VFS_NEXT_CHFLAGS(handle, path, flags) ((handle)->vfs_next.ops.chflags((handle)->vfs_next.handles.chflags, (path), (flags)))
+#define SMB_VFS_NEXT_STREAMINFO(handle, fsp, fname, names, sizes) ((handle)->vfs.ops.streaminfo((handle)->vfs.handles.streaminfo, (fsp), (fname), (names), (sizes)))
 
 /* NT ACL operations. */
 #define SMB_VFS_NEXT_FGET_NT_ACL(handle, fsp, fd, security_info, ppdesc) ((handle)->vfs_next.ops.fget_nt_acl((handle)->vfs_next.handles.fget_nt_acl, (fsp), (fd), (security_info), (ppdesc)))
Index: samba/source/modules/vfs_default.c
===================================================================
--- samba/source/modules/vfs_default.c.orig
+++ samba/source/modules/vfs_default.c
@@ -923,6 +923,12 @@ static int vfswrap_chflags(vfs_handle_st
 #endif
 }
 
+static int vfswrap_streaminfo(vfs_handle_struct *handle,  struct files_struct *fsp, const char *fname, char **names, size_t **sizes)
+{
+	errno = ENOSYS;
+	return -1;
+}
+
 static size_t vfswrap_fget_nt_acl(vfs_handle_struct *handle, files_struct *fsp, int fd, uint32 security_info, SEC_DESC **ppdesc)
 {
 	size_t result;
@@ -1310,6 +1316,8 @@ static vfs_op_tuple vfs_default_ops[] = 
 	 SMB_VFS_LAYER_OPAQUE},
 	{SMB_VFS_OP(vfswrap_chflags),	SMB_VFS_OP_CHFLAGS,
 	 SMB_VFS_LAYER_OPAQUE},
+	{SMB_VFS_OP(vfswrap_streaminfo),SMB_VFS_OP_STREAMINFO,
+	 SMB_VFS_LAYER_OPAQUE},
 
 	/* NT ACL operations. */
 
Index: samba/source/smbd/trans2.c
===================================================================
--- samba/source/smbd/trans2.c.orig
+++ samba/source/smbd/trans2.c
@@ -7,6 +7,8 @@
    Copyright (C) Steve French			2005
    Copyright (C) James Peach			2007
 
+   Copyright (C) 2006-2007 Apple Inc. All right reserved.
+
    Extensively modified by Andrew Tridgell, 1995
 
    This program is free software; you can redistribute it and/or modify
@@ -2235,7 +2237,7 @@ static int call_trans2qfsinfo(connection
 	const char *vname = volume_label(SNUM(conn));
 	int snum = SNUM(conn);
 	char *fstype = lp_fstype(SNUM(conn));
-	int quota_flag = 0;
+	int fs_attribute_flags = 0;
 
 	if (total_params < 2) {
 		return ERROR_NT(NT_STATUS_INVALID_PARAMETER);
@@ -2319,14 +2321,23 @@ cBytesSector=%u, cUnitTotal=%u, cUnitAva
 		case SMB_QUERY_FS_ATTRIBUTE_INFO:
 		case SMB_FS_ATTRIBUTE_INFORMATION:
 
+			fs_attribute_flags =
+				FILE_CASE_SENSITIVE_SEARCH |
+				FILE_CASE_PRESERVED_NAMES;
 
 #if defined(HAVE_SYS_QUOTAS)
-			quota_flag = FILE_VOLUME_QUOTAS;
+			fs_attribute_flags |= FILE_VOLUME_QUOTAS;
 #endif
+			if (lp_stream_support(SNUM(conn)) &&
+			    (conn->fs_capabilities & FILE_NAMED_STREAMS)) {
+				fs_attribute_flags |= FILE_NAMED_STREAMS;
+			}
+
+			if (lp_nt_acl_support(SNUM(conn)) ) {
+				fs_attribute_flags |= FILE_PERSISTENT_ACLS;
+			}
 
-			SIVAL(pdata,0,FILE_CASE_PRESERVED_NAMES|FILE_CASE_SENSITIVE_SEARCH|
-				(lp_nt_acl_support(SNUM(conn)) ? FILE_PERSISTENT_ACLS : 0)|
-				quota_flag); /* FS ATTRIBUTES */
+			SIVAL(pdata, 0, fs_attribute_flags); /* FS ATTRIBUTES */
 
 			SIVAL(pdata,4,255); /* Max filename component length */
 			/* NOTE! the fstype must *not* be null terminated or win98 won't recognise it
@@ -2675,7 +2686,8 @@ cBytesSector=%u, cUnitTotal=%u, cUnitAva
 			 * Thursby MAC extension... ONLY on NTFS filesystems
 			 * once we do streams then we don't need this
 			 */
-			if (strequal(lp_fstype(SNUM(conn)),"NTFS")) {
+			if (!lp_stream_support(SNUM(conn)) &&
+			    strequal(lp_fstype(SNUM(conn)),"NTFS")) {
 				data_len = 88;
 				SIVAL(pdata,84,0x100); /* Don't support mac... */
 				break;
@@ -3139,6 +3151,95 @@ static char *store_file_unix_basic_info2
 	return pdata;
 }
 
+static unsigned int marshall_stream_info(connection_struct *conn,
+			    files_struct *fsp,
+			    const char *fname,
+			    SMB_BIG_UINT file_data_size,
+			    SMB_BIG_UINT file_data_allocation,
+			    char *pdata)
+{
+	unsigned int data_size = 0;
+	unsigned nextOffset = 0;
+	int count = 0;
+	int curr = 0;
+	char * namelist = NULL;
+	size_t * sizelist = NULL;
+
+	char * name;
+
+	size_t byte_len = 0;
+
+	byte_len += dos_PutUniCode(pdata + 24,"::$DATA",
+				(size_t)0xE, False);
+	SIVAL(pdata, nextOffset, 0); /* might overwrite this if more streams */
+	SIVAL(pdata,  4, byte_len); /* Byte length of unicode string ::$DATA */
+	SOFF_T(pdata, 8, file_data_size);
+	SIVAL(pdata, 16, file_data_allocation);
+	SIVAL(pdata, 20, 0); /* ??? */
+	data_size = 24 + byte_len;
+
+	count = SMB_VFS_STREAMINFO(conn, fsp, fname,
+			    &namelist, &sizelist);
+	if (count <= 0) {
+		return data_size;
+	}
+
+	DEBUG(4, ("streaminfo on %s gave %d streams\n",
+	    fsp ? fsp->fsp_name : fname, count));
+
+	for (name = namelist, curr = 0; curr < count; ++curr ) {
+		size_t nlen = strlen(name);
+
+/* TDB_ALIGN, renamed to avoid clashes. */
+#define STREAMINFO_ALIGN(x, a) (((x) + (a)-1) & ~((a)-1))
+
+		/* update the previous record's next
+		 * record offset ...
+		 */
+		data_size = STREAMINFO_ALIGN(data_size, 8);
+		SIVAL(pdata, nextOffset, data_size - nextOffset);
+
+#undef STREAMINFO_ALIGN
+
+		DEBUG(4, ("pushing name=%s size=%u\n",
+			name, (unsigned)sizelist[curr]));
+
+		/* remember where the next record offset
+		 * field is for this record ...
+		 */
+		nextOffset = data_size;
+		/* make sure it's clear ... */
+		SIVAL(pdata, nextOffset, 0);
+
+		/* now insert the new record .. */
+
+		byte_len = dos_PutUniCode(pdata + data_size + 24,
+			    name, nlen * 2, False);
+
+		/* add stream name length ... */
+		SIVAL(pdata, 4 + data_size, byte_len);
+
+		/* add stream size ... */
+		SOFF_T(pdata, 8 + data_size, (SMB_OFF_T)sizelist[curr]);
+
+		/* allocation size is the same as the
+		 * stream size ...
+		 */
+		SOFF_T(pdata,16 + data_size, (SMB_OFF_T)sizelist[curr]);
+		SIVAL(pdata, 20 + data_size, 0); /*??*/
+
+		data_size += 24 + byte_len;
+
+		/* Skip to next name. */
+		name += (nlen + 1);
+	}
+
+	SAFE_FREE(namelist);
+	SAFE_FREE(sizelist);
+
+	return data_size;
+}
+
 /****************************************************************************
  Reply to a TRANS2_QFILEPATHINFO or TRANSACT2_QFILEINFO (query file info by
  file name or file id).
@@ -3698,26 +3799,24 @@ total_data=%u (should be %u)\n", (unsign
 			data_size = 4;
 			break;
 
-#if 0
 		/*
-		 * NT4 server just returns "invalid query" to this - if we try to answer
-		 * it then NTws gets a BSOD! (tridge).
+		 * NT4 server just returns "invalid query" to this - if we
+		 * try to answer it then NTws gets a BSOD! (tridge).
 		 * W2K seems to want this. JRA.
 		 */
+		/* The first statement above is false - verified using Thursby
+		 * client against NT4 -- gcolley.
+		 */
 		case SMB_QUERY_FILE_STREAM_INFO:
-#endif
 		case SMB_FILE_STREAM_INFORMATION:
 			DEBUG(10,("call_trans2qfilepathinfo: SMB_FILE_STREAM_INFORMATION\n"));
 			if (mode & aDIR) {
 				data_size = 0;
-			} else {
-				size_t byte_len = dos_PutUniCode(pdata+24,"::$DATA", (size_t)0xE, False);
-				SIVAL(pdata,0,0); /* ??? */
-				SIVAL(pdata,4,byte_len); /* Byte length of unicode string ::$DATA */
-				SOFF_T(pdata,8,file_size);
-				SOFF_T(pdata,16,allocation_size);
-				data_size = 24 + byte_len;
+				allocation_size = 0;
 			}
+			data_size = marshall_stream_info(conn, fsp,
+						fname, file_size,
+						allocation_size, pdata);
 			break;
 
 		case SMB_QUERY_COMPRESSION_INFO:
Index: samba/source/include/fake_file.h
===================================================================
--- samba/source/include/fake_file.h.orig
+++ samba/source/include/fake_file.h
@@ -39,12 +39,4 @@ typedef struct _FAKE_FILE_HANDLE {
 	void (*free_pd)(void **pd); /* free private_data */
 } FAKE_FILE_HANDLE;
 
-typedef struct _FAKE_FILE {
-	const char *name;
-	enum FAKE_FILE_TYPE type;
-	void *(*init_pd)(TALLOC_CTX *men_ctx);
-	void (*free_pd)(void **pd);
-} FAKE_FILE;
-
-
 #endif /* _FAKE_FILE_H */
Index: samba/source/smbd/fake_file.c
===================================================================
--- samba/source/smbd/fake_file.c.orig
+++ samba/source/smbd/fake_file.c
@@ -22,11 +22,33 @@
 
 extern struct current_user current_user;
 
-static FAKE_FILE fake_files[] = {
-#ifdef WITH_QUOTAS
-	{FAKE_FILE_NAME_QUOTA_UNIX,	FAKE_FILE_TYPE_QUOTA,	init_quota_handle,	destroy_quota_handle},
-#endif /* WITH_QUOTAS */
-	{NULL,				FAKE_FILE_TYPE_NONE,	NULL,			NULL }
+typedef struct _FAKE_FILE {
+	const char *name;
+	const char **streams;
+	enum FAKE_FILE_TYPE type;
+	void *(*init_pd)(TALLOC_CTX *men_ctx);
+	void (*free_pd)(void **pd);
+} FAKE_FILE;
+
+#ifdef WITH_SYS_QUOTAS
+static const char * fake_quota_streams = {
+	":$Q:$INDEX_ALLOCATION",
+	NULL
+};
+#endif /* WITH_SYS_QUOTAS */
+
+static const FAKE_FILE fake_files[] = {
+#ifdef WITH_SYS_QUOTAS
+	{
+	    FAKE_FILE_NAME_QUOTA_UNIX,
+	    fake_quota_streams,
+	    FAKE_FILE_TYPE_QUOTA,
+	    init_quota_handle,
+	    destroy_quota_handle
+	},
+#endif /* WITH_SYS_QUOTAS */
+
+	{NULL,	NULL, FAKE_FILE_TYPE_NONE, NULL, NULL }
 };
 
 /****************************************************************************
@@ -74,24 +96,43 @@ static struct _FAKE_FILE_HANDLE *init_fa
  Does this name match a fake filename ?
 ****************************************************************************/
 
-enum FAKE_FILE_TYPE is_fake_file(const char *fname)
+static BOOL match_stream_name(const FAKE_FILE * fake_file, const char *stream)
+{
+	if (!stream) {
+		return True;
+	}
+
+	if (fake_file->streams) {
+		const char ** s;
+
+		for (s = fake_files->streams; *s; ++s) {
+			if (strcmp(stream, *s) == 0) {
+				return True;
+			}
+		}
+	}
+
+	return False;
+}
+
+enum FAKE_FILE_TYPE is_fake_file(const char *fname, const char *stream)
 {
-#ifdef HAVE_SYS_QUOTAS
 	int i;
-#endif
 
 	if (!fname) {
 		return FAKE_FILE_TYPE_NONE;
 	}
 
-#ifdef HAVE_SYS_QUOTAS
 	for (i=0;fake_files[i].name!=NULL;i++) {
-		if (strncmp(fname,fake_files[i].name,strlen(fake_files[i].name))==0) {
+		if (strcmp(fname, fake_files[i].name) != 0) {
+			continue;
+		}
+
+		if (match_stream_name(&fake_files[i], stream)) {
 			DEBUG(5,("is_fake_file: [%s] is a fake file\n",fname));
 			return fake_files[i].type;
 		}
 	}
-#endif
 
 	return FAKE_FILE_TYPE_NONE;
 }
Index: samba/source/smbd/nttrans.c
===================================================================
--- samba/source/smbd/nttrans.c.orig
+++ samba/source/smbd/nttrans.c
@@ -259,6 +259,9 @@ int send_nt_replies(char *outbuf, int bu
 
 /****************************************************************************
  Is it an NTFS stream name ?
+ An NTFS file name is <path>.<extention>:<stream name>:<stream type>
+ $DATA can be used as both a stream name and a stream type. A missing stream
+ name or type implies $DATA.
 ****************************************************************************/
 
 BOOL is_ntfs_stream_name(const char *fname)
@@ -269,6 +272,63 @@ BOOL is_ntfs_stream_name(const char *fna
 	return (strchr_m(fname, ':') != NULL) ? True : False;
 }
 
+/* Split a path name into filename and stream name components. Canonicalise
+ * such that an implicit $DATA token is always explicit. If the stream name
+ * resolved to the data stream, then that's the same as not specifying a stream
+ * name.
+ *
+ *  F		    => fname=F sname=
+ *  F:		    => fname=F sname=
+ *  F::		    => fname=F sname=
+ *  F:S		    => fname=F sname=:S:$DATA
+ *  F:$DATA	    => fname=F sname=
+ *  F:S:	    => fname=F sname=:S:$DATA
+ *  F:S:$DATA	    => fname=F sname=:S:$DATA
+ *  F:$DATA:	    => fname=F sname=
+ *  F::T	    => fname=F sname=:$DATA:T
+ *  F::$DATA	    => fname=F sname=
+ *  F:S:T	    => fname=F sname=:S:T
+ *  F:$DATA:T	    => fname=F sname=:$DATA:T
+ *  F:$DATA:$DATA   => fname=F sname=
+ *
+ */
+NTSTATUS split_ntfs_stream_name(pstring fname, pstring stream)
+{
+	char *sname; /* stream name */
+	char *stype; /* stream type */
+
+	stream[0] = '\0';
+
+	if (lp_posix_pathnames()) {
+		return NT_STATUS_OK;
+	}
+
+	sname = strchr_m(fname, ':');
+	if (!sname) {
+		/* Not a stream. */
+		return NT_STATUS_OK;
+	}
+
+	/* Truncate fname at the stream name separator. */
+	*sname++ = '\0';
+
+	stype = strchr_m(sname, ':');
+	if (stype) {
+		/* Truncate sname at the stream type separator. */
+		*stype++ = '\0';
+	}
+
+	pstr_sprintf(stream, ":%s:%s",
+		(sname && *sname) ? sname : "$DATA",
+		(stype && *stype) ? stype : "$DATA");
+
+	if (StrCaseCmp(stream, ":$DATA:$DATA") == 0) {
+		*stream = '\0';
+	}
+	return NT_STATUS_OK;
+
+}
+
 /****************************************************************************
  Save case statics.
 ****************************************************************************/
@@ -611,9 +671,20 @@ int reply_ntcreate_and_X(connection_stru
 		 * Check to see if this is a mac fork of some kind.
 		 */
 
-		if( is_ntfs_stream_name(fname)) {
-			enum FAKE_FILE_TYPE fake_file_type = is_fake_file(fname);
-			if (fake_file_type!=FAKE_FILE_TYPE_NONE) {
+		if (is_ntfs_stream_name(fname)) {
+			pstring path;
+			pstring stream;
+			enum FAKE_FILE_TYPE fake_file_type;
+
+			pstrcpy(path, fname);
+			status = split_ntfs_stream_name(path, stream);
+			if (!NT_STATUS_IS_OK(status)) {
+				END_PROFILE(SMBntcreateX);
+				return ERROR_NT(status);
+			}
+
+			fake_file_type = is_fake_file(path, stream);
+			if (fake_file_type == FAKE_FILE_TYPE_QUOTA) {
 				/*
 				 * Here we go! support for changing the disk quotas --metze
 				 *
@@ -627,7 +698,10 @@ int reply_ntcreate_and_X(connection_stru
 								fake_file_type, fname);
 				END_PROFILE(SMBntcreateX);
 				return result;
-			} else {
+			}
+
+			if (!lp_stream_support(SNUM(conn)) ||
+			    !(conn->fs_capabilities & FILE_NAMED_STREAMS)) {
 				END_PROFILE(SMBntcreateX);
 				return ERROR_NT(NT_STATUS_OBJECT_PATH_NOT_FOUND);
 			}
Index: samba/source/smbd/reply.c
===================================================================
--- samba/source/smbd/reply.c.orig
+++ samba/source/smbd/reply.c
@@ -56,6 +56,7 @@ NTSTATUS check_path_syntax_internal(pstr
 	const char *s = srcname;
 	NTSTATUS ret = NT_STATUS_OK;
 	BOOL start_of_name_component = True;
+	BOOL stream_component = False;;
 
 	*p_last_component_contains_wcard = False;
 
@@ -122,10 +123,13 @@ NTSTATUS check_path_syntax_internal(pstr
 
 		if (!(*s & 0x80)) {
 			if (!posix_path) {
-				if (*s <= 0x1f) {
+				if (!stream_component && *s <= 0x1f) {
 					return NT_STATUS_OBJECT_NAME_INVALID;
 				}
 				switch (*s) {
+					case ':':
+						stream_component = True;
+						break;
 					case '*':
 					case '?':
 					case '<':
@@ -1300,6 +1304,11 @@ int reply_open(connection_struct *conn, 
 		return ERROR_NT(status);
 	}
 
+	if( is_ntfs_stream_name(fname)) {
+		END_PROFILE(SMBopen);
+		return ERROR_NT(NT_STATUS_OBJECT_PATH_NOT_FOUND);
+	}
+
 	if (!map_open_params_to_ntcreate(fname, deny_mode, OPENX_FILE_EXISTS_OPEN,
 			&access_mask, &share_mode, &create_disposition, &create_options)) {
 		END_PROFILE(SMBopen);
@@ -1431,6 +1440,11 @@ int reply_open_and_X(connection_struct *
 		return ERROR_NT(status);
 	}
 
+	if (is_ntfs_stream_name(fname)) {
+		END_PROFILE(SMBopenX);
+		return ERROR_NT(NT_STATUS_OBJECT_PATH_NOT_FOUND);
+	}
+
 	if (!map_open_params_to_ntcreate(fname, deny_mode, smb_ofun,
 				&access_mask,
 				&share_mode,

--Apple-Mail-4-239650168--

--Apple-Mail-3-239650165
Content-Type: text/plain;
	charset=US-ASCII;
	format=flowed
Content-Transfer-Encoding: 7bit



--
James Peach | jpeach@samba.org


--Apple-Mail-3-239650165--

        

u6/e"
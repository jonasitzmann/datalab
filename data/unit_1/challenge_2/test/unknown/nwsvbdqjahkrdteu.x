From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 01:23:10 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D5NAL9003575
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 01:23:10 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4E473162BCB
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 05:23:09 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_BLARS_RBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 5EFAE162AC4
	for <samba-technical@samba.org>; Wed, 13 Jun 2007 05:22:06 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id E4ADB2F188
	for <samba-technical@samba.org>; Wed, 13 Jun 2007 00:22:04 -0500 (CDT)
Message-ID: <466F7EF9.9020900@samba.org>
Date: Wed, 13 Jun 2007 00:22:01 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: samba-technical@samba.org
X-Enigmail-Version: 0.94.2.0
Content-Type: multipart/mixed; boundary="------------040609000303000709000909"
Subject: [PATCH] Expanding nested groups in winbindd_getgrnam()
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
--------------040609000303000709000909
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Here's a rough patch for expanding domain group membership
in the winbindd_getgrnam() call.  Couple of comments:

* Adds "winbind expand groups" parameter which defines the
  max depth winbindd will expand group members.  The default
  is the current behavior of one level of expansion.
* The entire getrgnam() interface should be async.  I
  haven't done that.
* Refactors the domain users hack in fill)grent_mem() into
  its own function.

Comments?  I'd like to check this in for 3.0.26 as a
preliminary implementation for people that need it.



cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGb375IR7qMdg1EfYRAhXSAJ41tvpEzDA693E6NBO7MVXngQMSTQCfWOZH
NX+aHx+nuw7vcGVFaJaAik4=
=SwSL
-----END PGP SIGNATURE-----

--------------040609000303000709000909
Content-Type: text/x-patch;
 name="expand_groups.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="expand_groups.patch"

Index: param/loadparm.c
===================================================================
--- param/loadparm.c	(revision 23455)
+++ param/loadparm.c	(working copy)
@@ -177,6 +177,7 @@
 	BOOL bWinbindUseDefaultDomain;
 	BOOL bWinbindTrustedDomainsOnly;
 	BOOL bWinbindNestedGroups;
+	int  winbind_expand_groups;	
 	BOOL bWinbindRefreshTickets;
 	BOOL bWinbindOfflineLogon;
 	BOOL bWinbindNormalizeNames;
@@ -1290,6 +1291,7 @@
 	{"winbind use default domain", P_BOOL, P_GLOBAL, &Globals.bWinbindUseDefaultDomain, NULL, NULL, FLAG_ADVANCED}, 
 	{"winbind trusted domains only", P_BOOL, P_GLOBAL, &Globals.bWinbindTrustedDomainsOnly, NULL, NULL, FLAG_ADVANCED}, 
 	{"winbind nested groups", P_BOOL, P_GLOBAL, &Globals.bWinbindNestedGroups, NULL, NULL, FLAG_ADVANCED}, 
+	{"winbind expand groups", P_INTEGER, P_GLOBAL, &Globals.winbind_expand_groups, NULL, NULL, FLAG_ADVANCED}, 
 	{"winbind nss info", P_LIST, P_GLOBAL, &Globals.szWinbindNssInfo, NULL, NULL, FLAG_ADVANCED}, 
 	{"winbind refresh tickets", P_BOOL, P_GLOBAL, &Globals.bWinbindRefreshTickets, NULL, NULL, FLAG_ADVANCED}, 
 	{"winbind offline logon", P_BOOL, P_GLOBAL, &Globals.bWinbindOfflineLogon, NULL, NULL, FLAG_ADVANCED},
@@ -1641,6 +1643,7 @@
 	Globals.bWinbindUseDefaultDomain = False;
 	Globals.bWinbindTrustedDomainsOnly = False;
 	Globals.bWinbindNestedGroups = True;
+	Globals.winbind_expand_groups = 1;	
 	Globals.bWinbindRefreshTickets = False;
 	Globals.bWinbindOfflineLogon = False;
 
@@ -1905,6 +1908,7 @@
 FN_GLOBAL_BOOL(lp_winbind_use_default_domain, &Globals.bWinbindUseDefaultDomain)
 FN_GLOBAL_BOOL(lp_winbind_trusted_domains_only, &Globals.bWinbindTrustedDomainsOnly)
 FN_GLOBAL_BOOL(lp_winbind_nested_groups, &Globals.bWinbindNestedGroups)
+FN_GLOBAL_INTEGER(lp_winbind_expand_groups, &Globals.winbind_expand_groups)
 FN_GLOBAL_BOOL(lp_winbind_refresh_tickets, &Globals.bWinbindRefreshTickets)
 FN_GLOBAL_BOOL(lp_winbind_offline_logon, &Globals.bWinbindOfflineLogon)
 FN_GLOBAL_BOOL(lp_winbind_normalize_names, &Globals.bWinbindNormalizeNames)
Index: nsswitch/winbindd_ads.c
===================================================================
--- nsswitch/winbindd_ads.c	(revision 23455)
+++ nsswitch/winbindd_ads.c	(working copy)
@@ -1062,7 +1062,11 @@
 				{
 					sid_copy(&(*sid_mem)[*num_names],
 						 &sid_mem_nocache[i]);
-					(*names)[*num_names] = talloc_move(*names, &names_nocache[i]);
+					(*names)[*num_names] = talloc_asprintf( *names, 
+										"%s%c%s",
+										domains_nocache[i],
+										*lp_winbind_separator(),
+										names_nocache[i] );
 					(*name_types)[*num_names] = name_types_nocache[i];
 					(*num_names)++;
 				}
Index: nsswitch/winbindd_group.c
===================================================================
--- nsswitch/winbindd_group.c	(revision 23455)
+++ nsswitch/winbindd_group.c	(working copy)
@@ -195,33 +195,295 @@
 	return True;
 }
 
-/* Fill in the group membership field of a NT group given by group_sid */
+/***********************************************************************
+ If "enum users" is set to false, and the group being looked
+ up is the Domain Users SID: S-1-5-domain-513, then for the
+ list of members check if the querying user is in that group,
+ and if so only return that user as the gr_mem array.
+ We can change this to a different parameter than "enum users"
+ if neccessaey, or parameterize the group list we do this for.
+***********************************************************************/
 
+static BOOL fill_grent_mem_domusers( TALLOC_CTX *mem_ctx,
+				     struct winbindd_domain *domain,
+				     struct winbindd_cli_state *state,
+				     DOM_SID *group_sid,
+				     enum lsa_SidType group_name_type,
+				     size_t *num_gr_mem, char **gr_mem, 
+				     size_t *gr_mem_len)
+{
+	DOM_SID querying_user_sid;
+	DOM_SID *pquerying_user_sid = NULL;
+	uint32 num_groups = 0;
+	DOM_SID *user_sids = NULL;
+	BOOL u_in_group = False;
+	NTSTATUS status;
+	int i;
+	unsigned int buf_len = 0;
+	char *buf = NULL;
+
+	DEBUG(10,("fill_grent_mem_domain_users: domain %s\n",
+		  domain->name ));
+
+	if (state) {
+		uid_t ret_uid = (uid_t)-1;
+		if (sys_getpeereid(state->sock, &ret_uid)==0) {
+			/* We know who's asking - look up their SID if
+			   it's one we've mapped before. */
+			status = idmap_uid_to_sid(&querying_user_sid, ret_uid);
+			if (NT_STATUS_IS_OK(status)) {
+				pquerying_user_sid = &querying_user_sid;
+				DEBUG(10,("fill_grent_mem_domain_users: querying uid %u -> %s\n",
+					  (unsigned int)ret_uid,
+					  sid_string_static(pquerying_user_sid) ));
+			}
+		}
+	}
+
+	/* Only look up if it was a winbindd user in this domain. */
+	if (pquerying_user_sid &&
+	    (sid_compare_domain(pquerying_user_sid, &domain->sid) == 0)) {
+		
+		DEBUG(10,("fill_grent_mem_domain_users: querying user = %s\n",
+			  sid_string_static(pquerying_user_sid) ));
+		
+		status = domain->methods->lookup_usergroups(domain,
+							    mem_ctx,
+							    pquerying_user_sid,
+							    &num_groups,
+							    &user_sids);
+		if (!NT_STATUS_IS_OK(status)) {
+			DEBUG(1, ("fill_grent_mem_domain_users: lookup_usergroups failed "
+				  "for sid %s in domain %s (error: %s)\n", 
+				  sid_string_static(pquerying_user_sid),
+				  domain->name,
+				  nt_errstr(status)));
+		        return False;			
+		}
+
+		for (i = 0; i < num_groups; i++) {
+			if (sid_equal(group_sid, &user_sids[i])) {
+				/* User is in Domain Users, add their name
+				   as the only group member. */
+				u_in_group = True;
+				break;
+			}
+		}
+	}
+	
+	if (u_in_group) {
+		size_t len = 0;
+		char *domainname = NULL;
+		char *username = NULL;
+		fstring name;
+		enum lsa_SidType type;
+		
+		DEBUG(10,("fill_grent_mem_domain_users: sid %s in 'Domain Users' in domain %s\n",
+			  sid_string_static(pquerying_user_sid), domain->name ));
+		
+		status = domain->methods->sid_to_name(domain, mem_ctx,
+						      pquerying_user_sid,
+						      &domainname,
+						      &username,
+						      &type);
+		if (!NT_STATUS_IS_OK(status)) {
+			DEBUG(1, ("could not lookup username for user "
+				  "sid %s in domain %s (error: %s)\n", 
+				  sid_string_static(pquerying_user_sid),
+				  domain->name,
+				  nt_errstr(status)));
+			return False;			
+		}
+		fill_domain_username(name, domain->name, username, True);
+		len = strlen(name);
+		buf_len = len + 1;
+		if (!(buf = (char *)SMB_MALLOC(buf_len))) {
+			DEBUG(1, ("out of memory\n"));
+			return False;			
+		}
+		memcpy(buf, name, buf_len);
+		
+		DEBUG(10,("fill_grent_mem_domain_users: user %s in "
+			  "'Domain Users' in domain %s\n",
+			  name, domain->name ));
+		
+		/* user is the only member */
+		*num_gr_mem = 1;
+	}
+		
+	*gr_mem = buf;
+	*gr_mem_len = buf_len;
+	
+	DEBUG(10, ("fill_grent_mem_domain_users: num_mem = %u, len = %u, mem = %s\n", 
+		   (unsigned int)*num_gr_mem, 
+		   (unsigned int)buf_len, *num_gr_mem ? buf : "NULL")); 
+
+	return True;
+}					 
+
+/***********************************************************************
+ Add names to a list.  Assumes  a canonical version of the string
+ in DOMAIN\user
+***********************************************************************/
+
+static int namecmp( const void *a, const void *b )
+{
+	return StrCaseCmp( * (char * const *) a, * (char * const *) b);	
+}
+
+static NTSTATUS add_names_to_list( TALLOC_CTX *ctx, 
+				   char ***list, uint32 *n_list, 
+				   char **names, uint32 n_names )
+{
+	char **new_list = NULL;	
+	uint32 n_new_list = 0;	
+	int i, j;	
+
+	if ( !names || (n_names == 0) )
+		return NT_STATUS_OK;
+	
+	/* Alloc the maximum size we'll need */
+
+        if ( *list == NULL ) {
+		if ( (new_list = TALLOC_ARRAY( ctx, char *, n_names )) == NULL ) 
+			return NT_STATUS_NO_MEMORY;
+		n_new_list = n_names;		
+	} else {
+		new_list = TALLOC_REALLOC_ARRAY( ctx, *list, char *, 
+						 (*n_list) + n_names );
+		if ( !new_list )
+			return NT_STATUS_NO_MEMORY;
+		n_new_list = (*n_list) + n_names;
+	}
+
+	/* Add all names */
+
+	for ( i=*n_list, j=0; i<n_new_list; i++, j++ ) {
+		new_list[i] = talloc_strdup( new_list, names[j] );
+	}
+
+	/* search for duplicates for sorting and looking for matching
+	   neighbors */
+	
+	qsort( new_list, n_new_list, sizeof(char*), QSORT_CAST namecmp );
+	
+	for ( i=1; i<n_new_list; i++ ) {
+		if ( strcmp( new_list[i-1], new_list[i] ) == 0 ) {			
+			memmove( &new_list[i-1], &new_list[i], 
+				 sizeof(char*)*(n_new_list-i) );
+			n_new_list--;
+		}
+	}
+
+	*list = new_list;
+	*n_list = n_new_list;	
+
+	return NT_STATUS_OK;	
+}
+
+/***********************************************************************
+***********************************************************************/
+
+static NTSTATUS expand_groups( TALLOC_CTX *ctx, 
+			       struct winbindd_domain *d,
+			       DOM_SID *glist, uint32 n_glist,
+			       DOM_SID **new_glist, uint32 *n_new_glist,
+			       char ***members, uint32 *n_members )
+{
+	int i, j;	
+	NTSTATUS status;
+	uint32 num_names = 0;
+	uint32 *name_types = NULL;
+	char **names = NULL;
+	DOM_SID *sid_mem = NULL;
+	TALLOC_CTX *tmp_ctx = NULL;	
+	
+	*members = NULL;
+	*n_members = 0;	
+	*new_glist = NULL;
+	*n_new_glist = 0;	
+	
+	for ( i=0; i<n_glist; i++ ) {
+		tmp_ctx = talloc_new( ctx );
+
+		/* Lookup the group membership */
+
+		status = d->methods->lookup_groupmem(d, tmp_ctx, 
+						     &glist[i], &num_names,
+						     &sid_mem, &names, 
+						     &name_types);
+		if ( !NT_STATUS_IS_OK(status) ) 
+			goto out;
+				
+		/* Separate users and groups into two lists */
+
+		for ( j=0; j<num_names; j++ ) {
+
+			/* Users */
+			if ( name_types[j] == SID_NAME_USER ||
+			     name_types[j] == SID_NAME_COMPUTER )
+			{
+				status = add_names_to_list( ctx, members, 
+							    n_members,
+							    names+j, 1 );
+				if ( !NT_STATUS_IS_OK(status) )
+					goto out;				
+			} 
+
+			/* Groups */
+			if ( name_types[j] == SID_NAME_DOM_GRP ||
+			     name_types[j] == SID_NAME_ALIAS )
+			{
+				BOOL ret;
+				
+				ret = add_sid_to_array_unique( ctx, 
+							       &sid_mem[j],
+							       new_glist, 
+							       n_new_glist );
+				if ( !ret ) {
+					status = NT_STATUS_NO_MEMORY;
+					goto out;
+				}				
+			}
+		}
+
+		TALLOC_FREE( tmp_ctx );
+	}
+	
+ out:
+	TALLOC_FREE( tmp_ctx );
+	
+	return status;	
+}
+
+/***********************************************************************
+ Fill in the group membership field of a NT group given by group_sid
+***********************************************************************/
+
 static BOOL fill_grent_mem(struct winbindd_domain *domain,
 			   struct winbindd_cli_state *state,
 			   DOM_SID *group_sid, 
 			   enum lsa_SidType group_name_type, 
 			   size_t *num_gr_mem, char **gr_mem, size_t *gr_mem_len)
 {
-	DOM_SID *sid_mem = NULL;
 	uint32 num_names = 0;
-	uint32 *name_types = NULL;
 	unsigned int buf_len = 0, buf_ndx = 0, i;
 	char **names = NULL, *buf = NULL;
 	BOOL result = False;
 	TALLOC_CTX *mem_ctx;
-	NTSTATUS status;
 	uint32 group_rid;
-	fstring sid_string;
+	DOM_SID *glist = NULL;
+	DOM_SID *new_glist = NULL;
+	uint32 n_glist, n_new_glist;	
+	int max_depth = lp_winbind_expand_groups();	
 
 	if (!(mem_ctx = talloc_init("fill_grent_mem(%s)", domain->name)))
 		return False;
 
-	/* Initialise group membership information */
-	
-	DEBUG(10, ("group SID %s\n", sid_to_string(sid_string, group_sid)));
+	DEBUG(10, ("group SID %s\n", sid_string_static(group_sid)));
 
 	/* Initialize with no members */
+
 	*num_gr_mem = 0;
 
 	/* HACK ALERT!! This whole routine does not cope with group members
@@ -234,176 +496,91 @@
 					       gr_mem, gr_mem_len);
 		goto done;
 	}
-	
+
+	/* Verify name type */
+
 	if ( !((group_name_type==SID_NAME_DOM_GRP) ||
-		((group_name_type==SID_NAME_ALIAS) && domain->primary)) )
+	       ((group_name_type==SID_NAME_ALIAS) && domain->primary)) )
 	{
 		DEBUG(1, ("SID %s in domain %s isn't a domain group (%d)\n", 
-			  sid_to_string(sid_string, group_sid), domain->name, 
+			  sid_string_static(group_sid), domain->name, 
 			  group_name_type));
                 goto done;
 	}
 
-	/* OPTIMIZATION / HACK. */
-	/* If "enum users" is set to false, and the group being looked
-	   up is the Domain Users SID: S-1-5-domain-513, then for the
-	   list of members check if the querying user is in that group,
-	   and if so only return that user as the gr_mem array.
-	   We can change this to a different parameter than "enum users"
-	   if neccessaey, or parameterize the group list we do this for. */
+	/* OPTIMIZATION / HACK. See comment in
+	   fill_grent_mem_domusers() */
 
 	sid_peek_rid( group_sid, &group_rid );
 	if (!lp_winbind_enum_users() && group_rid == DOMAIN_GROUP_RID_USERS) {
-		DOM_SID querying_user_sid;
-		DOM_SID *pquerying_user_sid = NULL;
-		uint32 num_groups = 0;
-		DOM_SID *user_sids = NULL;
-		BOOL u_in_group = False;
+		result = fill_grent_mem_domusers( mem_ctx, domain, state, 
+						  group_sid, group_name_type,
+						  num_gr_mem, gr_mem,
+						  gr_mem_len );
+		goto done;		
+	}
 
-		DEBUG(10,("fill_grent_mem: optimized lookup for sid %s domain %s\n",
-			sid_to_string(sid_string, group_sid), domain->name ));
+	/* Real work goes here.  Create a list of group names to
+	   expand startign with the initial one.  Pass that to 
+	   expand_groups() which returns a list of more group names
+	   to expand.  Do this up to the max search depth. */
 
-		if (state) {
-			uid_t ret_uid = (uid_t)-1;
-			if (sys_getpeereid(state->sock, &ret_uid)==0) {
-				/* We know who's asking - look up their SID if
-				   it's one we've mapped before. */
-				status = idmap_uid_to_sid(&querying_user_sid, ret_uid);
-				if (NT_STATUS_IS_OK(status)) {
-					pquerying_user_sid = &querying_user_sid;
-					DEBUG(10,("fill_grent_mem: querying uid %u -> %s\n",
-						(unsigned int)ret_uid,
-						sid_to_string(sid_string, pquerying_user_sid) ));
-				}
-			}
-		}
+	if ( (glist = TALLOC_ARRAY(mem_ctx, DOM_SID, 1 )) == NULL ) {
+		result = False;
+		DEBUG(0,("fill_grent_mem: talloc failure!\n"));
+		goto done;
+	}
+	sid_copy( &glist[0], group_sid );	
+	n_glist = 1;	
 
-		/* Only look up if it was a winbindd user in this domain. */
-		if (pquerying_user_sid &&
-				(sid_compare_domain(pquerying_user_sid, &domain->sid) == 0)) {
+	for ( i=0; i<max_depth && glist; i++ ) {
+		size_t n_members = 0;
+		char **members = NULL;
+		NTSTATUS nt_status;		
 
-			DEBUG(10,("fill_grent_mem: querying user = %s\n",
-				sid_to_string(sid_string, pquerying_user_sid) ));
+		nt_status = expand_groups( mem_ctx, domain,
+					   glist, n_glist, 
+					   &new_glist, &n_new_glist,
+					   &members, &n_members);
+		if ( !NT_STATUS_IS_OK(nt_status) ) {
+			result = False;			
+			goto done;
+		}		
+		
+		/* Add new group members to list */
 
-			status = domain->methods->lookup_usergroups(domain,
-							mem_ctx,
-							pquerying_user_sid,
-							&num_groups,
-							&user_sids);
-			if (!NT_STATUS_IS_OK(status)) {
-				DEBUG(1, ("fill_grent_mem: lookup_usergroups failed "
-					"for sid %s in domain %s (error: %s)\n", 
-					sid_to_string(sid_string, pquerying_user_sid),
-					domain->name,
-					nt_errstr(status)));
-				goto done;
-			}
-
-			for (i = 0; i < num_groups; i++) {
-				if (sid_equal(group_sid, &user_sids[i])) {
-					/* User is in Domain Users, add their name
-					   as the only group member. */
-					u_in_group = True;
-					break;
-				}
-			}
+		nt_status = add_names_to_list( mem_ctx, &names, &num_names, 
+					       members, n_members );
+		if ( !NT_STATUS_IS_OK(nt_status) ) {
+			result = False;			
+			goto done;
 		}
+		
+		TALLOC_FREE( members );		
 
-		if (u_in_group) {
-			size_t len = 0;
-			char *domainname = NULL;
-			char *username = NULL;
-			fstring name;
-			enum lsa_SidType type;
+		/* If we have no more groups to expand, break out
+		   early */
 
-			DEBUG(10,("fill_grent_mem: sid %s in 'Domain Users' in domain %s\n",
-				sid_to_string(sid_string, pquerying_user_sid), domain->name ));
+		if ( !&new_glist )
+			break;
 
-			status = domain->methods->sid_to_name(domain, mem_ctx,
-								pquerying_user_sid,
-								&domainname,
-								&username,
-								&type);
-			if (!NT_STATUS_IS_OK(status)) {
-				DEBUG(1, ("could not lookup username for user "
-					"sid %s in domain %s (error: %s)\n", 
-					sid_to_string(sid_string, pquerying_user_sid),
-					domain->name,
-					nt_errstr(status)));
-				goto done;
-			}
-			fill_domain_username(name, domain->name, username, True);
-			len = strlen(name);
-			buf_len = len + 1;
-			if (!(buf = (char *)SMB_MALLOC(buf_len))) {
-				DEBUG(1, ("out of memory\n"));
-				goto done;
-			}
-			memcpy(buf, name, buf_len);
-
-			DEBUG(10,("fill_grent_mem: user %s in 'Domain Users' in domain %s\n",
-				name, domain->name ));
-
-			/* user is the only member */
-			*num_gr_mem = 1;
-		}
-		
-		*gr_mem = buf;
-		*gr_mem_len = buf_len;
-
-		DEBUG(10, ("num_mem = %u, len = %u, mem = %s\n", (unsigned int)*num_gr_mem, 
-		   (unsigned int)buf_len, *num_gr_mem ? buf : "NULL")); 
-		result = True;
-		goto done;
+		/* One more round */
+		TALLOC_FREE(glist);
+		glist = new_glist;
 	}
-
-	/* Lookup group members */
-	status = domain->methods->lookup_groupmem(domain, mem_ctx, group_sid, &num_names, 
-						  &sid_mem, &names, &name_types);
-	if (!NT_STATUS_IS_OK(status)) {
-		DEBUG(1, ("could not lookup membership for group sid %s in domain %s (error: %s)\n", 
-			  sid_to_string(sid_string, group_sid), domain->name, nt_errstr(status)));
-		goto done;
-	}
-
+	TALLOC_FREE( glist );	
+	 
 	DEBUG(10, ("looked up %d names\n", num_names));
 
-	if (DEBUGLEVEL >= 10) {
-		for (i = 0; i < num_names; i++)
-			DEBUG(10, ("\t%20s %s %d\n", names[i],
-				   sid_string_static(&sid_mem[i]),
-				   name_types[i]));
-	}
-
+ again:
 	/* Add members to list */
 
- again:
-
 	for (i = 0; i < num_names; i++) {
-		char *the_name;
-		fstring name;
 		int len;
 			
-		the_name = names[i];
+		DEBUG(10, ("processing name %s\n", names[i]));
 
-		DEBUG(10, ("processing name %s\n", the_name));
-
-		/* FIXME: need to cope with groups within groups.  These
-                   occur in Universal groups on a Windows 2000 native mode
-                   server. */
-
-		/* make sure to allow machine accounts */
-
-		if (name_types[i] != SID_NAME_USER && name_types[i] != SID_NAME_COMPUTER) {
-			DEBUG(3, ("name %s isn't a domain user (%s)\n", the_name, sid_type_lookup(name_types[i])));
-			continue;
-		}
-
-		/* Append domain name */
-
-		fill_domain_username(name, domain->name, the_name, True);
-
-		len = strlen(name);
+		len = strlen(names[i]);
 		
 		/* Add to list or calculate buffer length */
 
@@ -412,8 +589,8 @@
 			(*num_gr_mem)++;
 			DEBUG(10, ("buf_len + %d = %d\n", len + 1, buf_len));
 		} else {
-			DEBUG(10, ("appending %s at ndx %d\n", name, buf_ndx));
-			safe_strcpy(&buf[buf_ndx], name, len);
+			DEBUG(10, ("appending %s at ndx %d\n", names[i], buf_ndx));
+			safe_strcpy(&buf[buf_ndx], names[i], len);
 			buf_ndx += len;
 			buf[buf_ndx] = ',';
 			buf_ndx++;
@@ -432,6 +609,8 @@
 		goto again;
 	}
 
+	/* Now we're done */
+
 	if (buf && buf_ndx > 0) {
 		buf[buf_ndx - 1] = '\0';
 	}
@@ -530,7 +709,7 @@
         
 	winbindd_lookupname_async( state->mem_ctx, domain->name, name_group,
 				   getgrnam_recv, WINBINDD_GETGRNAM, state );
-	}
+}
 
 struct getgrsid_state {
 	struct winbindd_cli_state *state;
@@ -606,7 +785,7 @@
 		return;
 	}
 
-	/* eitehr it's a domain group, a domain local group, or a
+	/* either it's a domain group, a domain local group, or a
 	   local group in an internal domain */
 
  	if ( !( (name_type==SID_NAME_DOM_GRP) ||

--------------040609000303000709000909--

        

oe/!2)a.6
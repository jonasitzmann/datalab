From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 08:21:24 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DCLOL9007448
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 08:21:24 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E489C16387F
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 12:21:22 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 3EE78162AEB
	for <samba-cvs@samba.org>; Wed, 13 Jun 2007 12:20:21 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-cvs@samba.org
	id 1HyRpk-00053k-L3; Wed, 13 Jun 2007 14:20:20 +0200
Received: by intern.SerNet.DE
	id 1HyRpk-0004R0-8M; Wed, 13 Jun 2007 14:20:20 +0200
Received: by intern.SerNet.DE
	id 1HyRpj-0004Qv-T7; Wed, 13 Jun 2007 14:20:20 +0200
Received: from mad by nirvana.sernet.private with local (Exim 4.63)
	(envelope-from <ma@sernet.de>)
	id 1HyRpj-0003ZH-F8; Wed, 13 Jun 2007 14:20:19 +0200
To: samba-cvs@samba.org
From: Michael Adam <ma@sernet.de>
Date: Wed, 13 Jun 2007 14:20:19 +0200
Message-Id: <E1HyRpk-0004R0-8M@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Rev 5380: merge from upstream in
	http://samba.sernet.de/ma/bzr/SAMBA_3_0-registry.bzr/
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

At http://samba.sernet.de/ma/bzr/SAMBA_3_0-registry.bzr/

------------------------------------------------------------
revno: 5380
revision-id: ma@sernet.de-20070613122003-hev6619nf14cwgsl
parent: ma@sernet.de-20070603190723-224q0v6t9b0okndn
parent: vlendec@samba.org-20070613114544-55r66emhea667s7v
committer: Michael Adam <ma@sernet.de>
branch nick: SAMBA_3_0-registry.bzr
timestamp: Wed 2007-06-13 14:20:03 +0200
message:
  merge from upstream
added:
  source/include/ctdbd_conn.h    ctdbd_conn.h-20070610171603-9edgkb5o35971z8g-1
  source/include/packet.h        packet.h-20070610171603-k8sqra1h25k1utpd-1
  source/iniparser/html/tab_b.gif tab_b.gif-20070605195753-zwrk0xst5yq4pq4k-1
  source/iniparser/html/tab_l.gif tab_l.gif-20070605195753-zwrk0xst5yq4pq4k-2
  source/iniparser/html/tab_r.gif tab_r.gif-20070605195753-zwrk0xst5yq4pq4k-3
  source/lib/ctdbd_conn.c        ctdbd_conn.c-20070610171604-vqt7qm9dcx1zoqkx-1
  source/lib/dbwrap_ctdb.c       dbwrap_ctdb.c-20070610171605-gua683k8jynqu7x2-1
  source/lib/messages_ctdbd.c    messages_ctdbd.c-20070610171606-ixav4oguk8jho6w3-1
  source/lib/packet.c            packet.c-20070610171606-kvivx18pt52vs144-1
modified:
  REVISION                       REVISION-20060530022625-68239662668b41c3
  source/Makefile.in             Makefile.in-20060530022626-b16dac2328ebe703
  source/auth/auth_sam.c         auth_sam.c-20060530022627-a7a4ed7172cd076a
  source/autogen.sh              autogen.sh-20060530022626-25da70b5021eee1f
  source/configure.in            configure.in-20060530022626-07e74bc1e326c82d
  source/groupdb/mapping.c       mapping.c-20060530022627-0d4c0d27ca093883
  source/groupdb/mapping.h       mapping.h-20060924130024-0alus33bx6qrtyfc-1
  source/groupdb/mapping_ldb.c   mapping_ldb.c-20060924130025-q7v7ypt8th46m4do-1
  source/groupdb/mapping_tdb.c   mapping_tdb.c-20060924130026-az0qb9gyg33leshz-1
  source/include/includes.h      includes.h-20060530022627-d1a059a99c05e8be
  source/include/messages.h      messages.h-20060530022627-1e4e137420885476
  source/include/passdb.h        passdb.h-20060530022627-0a45826f4a4a81bc
  source/include/rpc_lsa.h       rpc_lsa.h-20060530022627-647a9289d0cde166
  source/include/rpc_netlogon.h  rpc_netlogon.h-20060530022627-1cf660feb1f9de09
  source/include/smb.h           smb.h-20060530022627-6c2e6fe4eb631e83
  source/lib/dbwrap.c            dbwrap.c-20070510110202-lys33kyh2kh0gbvt-1
  source/lib/ldb/include/ldb.h   ldb.h-20060924130013-wfsw0zps5y9p71dq-36
  source/lib/ldb/ldb_tdb/ldb_tdb.c ldb_tdb.c-20060924130013-wfsw0zps5y9p71dq-62
  source/lib/ldb/ldb_tdb/ldb_tdb_wrap.c ldb_tdb_wrap.c-20060924130013-wfsw0zps5y9p71dq-58
  source/lib/messages.c          messages.c-20060530022627-fcc341b253a85c20
  source/lib/messages_local.c    messages_local.c-20070524144545-aigf1y9m5m0hq6zc-1
  source/lib/replace/libreplace_cc.m4 libreplace_cc.m4-20060919015053-50coyc2ouwpsm77j-12
  source/lib/replace/replace.c   replace.c-20060919015053-50coyc2ouwpsm77j-15
  source/lib/replace/replace.h   replace.h-20060919015053-50coyc2ouwpsm77j-19
  source/lib/smbldap.c           smbldap.c-20060530022627-2d88240b15c77135
  source/lib/substitute.c        substitute.c-20060530022627-c8a0f4e0791be8e7
  source/lib/system.c            system.c-20060530022627-3f01435a4e07a714
  source/lib/system_smbd.c       system_smbd.c-20060530022627-e97a2e558e6fd98c
  source/lib/tdb/common/traverse.c traverse.c-20070416111147-cebijg5x16vcb45j-25
  source/lib/time.c              time.c-20060530022627-d22d1437379fb153
  source/lib/util.c              util.c-20060530022627-d569af0e687a4dd3
  source/lib/util_str.c          util_str.c-20060530022627-0ba87cda5eaacc2e
  source/lib/util_tdb.c          util_tdb.c-20061021025435-o3vr4t381qf9lv7e-1
  source/libgpo/gpo_sec.c        gpo_sec.c-20070511161016-beeop23275m0014d-1
  source/librpc/ndr/ndr_misc.c   ndr_misc.c-20060908151645-5zx7mkkabpiwuown-2
  source/librpc/tools/ndrdump.c  ndrdump.c-20070228131339-9gfm1w70ezkzr1fe-2
  source/libsmb/clifile.c        clifile.c-20060530022627-79535ad57010f85a
  source/locking/brlock.c        brlock.c-20060530022627-3b8aec140997e136
  source/modules/vfs_catia.c     vfs_catia.c-20060530054515-f9850d7e210c7191
  source/modules/vfs_zfsacl.c    vfs_zfsacl.c-20070515000032-6u07g1yie5uaylw4-1
  source/nmbd/nmbd_subnetdb.c    nmbd_subnetdb.c-20060530022627-74c441c66a29c8c4
  source/nmbd/nmbd_winsserver.c  nmbd_winsserver.c-20060530022627-e309a34b4ec33413
  source/nsswitch/idmap.c        idmap.c-20061212152801-ke1ub3n5v1jjf8gy-1
  source/nsswitch/idmap_ldap.c   idmap_ldap.c-20061212152804-ho38ifnk7se3gdfx-1
  source/nsswitch/idmap_nss.c    idmap_nss.c-20061212152805-z05khfnt6imezx17-1
  source/nsswitch/idmap_passdb.c idmap_passdb.c-20061212152806-8pcsukuhpv9e2wk4-1
  source/nsswitch/winbind_nss_netbsd.c winbind_nss_netbsd.c-20061016112626-w0yk04h2575x961b-1
  source/nsswitch/winbind_nss_solaris.c winbind_nss_solaris.c-20060530022627-2356e53eacad08fa
  source/nsswitch/winbindd.c     winbindd.c-20060530022627-8bb76c46bd1253ec
  source/nsswitch/winbindd_ads.c winbindd_ads.c-20060530022627-7c5e13eefe48f902
  source/nsswitch/winbindd_cache.c winbindd_cache.c-20060530022627-45b83e217d38566d
  source/nsswitch/winbindd_dual.c winbindd_dual.c-20060530022627-d241a3ae20234631
  source/param/loadparm.c        loadparm.c-20060530022627-1efa1edb3eb0e897
  source/registry/reg_db.c       reg_db.c-20060530022627-e9a827257fb89131
  source/registry/reg_printing.c reg_printing.c-20060530022627-d1848144dbeb3356
  source/rpc_client/cli_lsarpc.c cli_lsarpc.c-20060530022627-b35bc2e64a6c3fbb
  source/rpc_client/cli_netlogon.c cli_netlogon.c-20060530022627-8932479dada9a685
  source/rpc_parse/parse_lsa.c   parse_lsa.c-20060530022627-ece9387bdd8d6756
  source/rpc_parse/parse_net.c   parse_net.c-20060530022627-2f7b0a5a38d46d3f
  source/rpc_parse/parse_prs.c   parse_prs.c-20060530022627-0ebae6d950fb538d
  source/rpc_server/srv_lsa_nt.c srv_lsa_nt.c-20060530022627-c2396a7b89d2634f
  source/rpc_server/srv_winreg_nt.c srv_winreg_nt.c-20060921175234-rh34p6b0yqwsb0cb-1
  source/rpcclient/cmd_netlogon.c cmd_netlogon.c-20060530022627-473c09638f48d7ff
  source/rpcclient/rpcclient.c   rpcclient.c-20060530022627-28b2e13ffdf753fc
  source/smbd/notify.c           notify.c-20060530022627-f5b19ce2772c47a0
  source/smbd/nttrans.c          nttrans.c-20060530022627-b483806ef6e0e97d
  source/smbd/open.c             open.c-20060530022627-9fd4db17a805af1f
  source/smbd/oplock.c           oplock.c-20060530022627-438ce54295ab823f
  source/smbd/reply.c            reply.c-20060530022627-92de20342694c043
  source/smbd/sec_ctx.c          sec_ctx.c-20060530022627-5357c503c5244050
  source/smbd/server.c           server.c-20060530022627-212a418ec1144979
  source/torture/denytest.c      denytest.c-20060530022627-1ac75821aa5eb7d0
  source/utils/net.c             net.c-20060530022628-046c7d5fbf0eceac
  source/utils/net_groupmap.c    net_groupmap.c-20060530022628-b579105a3c13d540
  source/utils/net_sam.c         net_sam.c-20060530090229-59cfabf50ff826bc
  source/utils/pdbedit.c         pdbedit.c-20060530022628-2e85850b4961b3c7
  source/utils/status.c          status.c-20060530022628-a33523ea13048a7e
    ------------------------------------------------------------
    revno: 5275.1.846
    merged: vlendec@samba.org-20070613114544-55r66emhea667s7v
    parent: obnox@samba.org-20070613111542-a5bxaa2p6gjojt3e
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 06:45:44 -0500
    message:
      vlendec@samba.org (r23466)  2007-06-13 06:32:46 -0500 (Wed, 13 Jun 2007)
          
          Fix RAW-NOTIFY: by using delete on close the notify is triggered deep
          inside close_file() already.
          
    ------------------------------------------------------------
    revno: 5275.1.845
    merged: obnox@samba.org-20070613111542-a5bxaa2p6gjojt3e
    parent: obnox@samba.org-20070613101552-q0kolxousjwc21fv
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 06:15:42 -0500
    message:
      obnox@samba.org (r23465)  2007-06-13 06:04:31 -0500 (Wed, 13 Jun 2007)
          
          There was this diff between reg_printing in 3_0 and 3_0_26:
          before writing to secdesc_buf->sd,
          3_0 checked secdesc_buf->sd while 3_0_26 checked secdesc_buf->sd_size.
          
          This patch makes both revisions check _both_ befor writing.
          
          Jerry / Jeremy : please check if this is correct!
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.844
    merged: obnox@samba.org-20070613101552-q0kolxousjwc21fv
    parent: obnox@samba.org-20070613101547-g0t221e065m12g0f
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 05:15:52 -0500
    message:
      obnox@samba.org (r23460)  2007-06-13 05:12:33 -0500 (Wed, 13 Jun 2007)
          
          Re-add whitespace to reduce diff between branches.
          Sorry for the noise... 
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.843
    merged: obnox@samba.org-20070613101547-g0t221e065m12g0f
    parent: obnox@samba.org-20070613101542-5viv8fg48u34a1h5
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 05:15:47 -0500
    message:
      obnox@samba.org (r23459)  2007-06-13 05:07:05 -0500 (Wed, 13 Jun 2007)
          
          Remove one superfluous cast.
          
          
    ------------------------------------------------------------
    revno: 5275.1.842
    merged: obnox@samba.org-20070613101542-5viv8fg48u34a1h5
    parent: vlendec@samba.org-20070613100043-2bdifglmga7njepq
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 05:15:42 -0500
    message:
      obnox@samba.org (r23458)  2007-06-13 05:06:17 -0500 (Wed, 13 Jun 2007)
          
          Cosmetic fix in debug output.
          
          
    ------------------------------------------------------------
    revno: 5275.1.841
    merged: vlendec@samba.org-20070613100043-2bdifglmga7njepq
    parent: jra@samba.org-20070612200227-2ajh4y3rvw18cw5y
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 05:00:43 -0500
    message:
      vlendec@samba.org (r23457)  2007-06-13 04:55:13 -0500 (Wed, 13 Jun 2007)
          
          After Jeremy's ack:
          
          The attached patch removes a little race condition for
          people with real kernel oplock support, and reduces some
          code paths. It changes reply_unlink to open_file_ntcreate,
          set_delete_on_close and close_file.
          
          The race condition happens if we break the oplock in
          can_delete via open_file_ntcreate, we close the file,
          someone else gets a batch oplock and we try to unlink.
          
          It reduces code paths by calling SMB_VFS_UNLINK in 2 fewer
          places.
          
          
    ------------------------------------------------------------
    revno: 5275.1.840
    merged: jra@samba.org-20070612200227-2ajh4y3rvw18cw5y
    parent: jra@samba.org-20070612200222-necw6tcicf7tzwm8
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 15:02:27 -0500
    message:
      jra@samba.org (r23450)  2007-06-12 14:59:38 -0500 (Tue, 12 Jun 2007)
          
          max_params_return is complete fiction when getting a changenotify
          request. Ignore it. Should fix bug #4689 but more tests and
          valgrinding will follow.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.839
    merged: jra@samba.org-20070612200222-necw6tcicf7tzwm8
    parent: jra@samba.org-20070612200217-w8hictpuj2ycinja
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 15:02:22 -0500
    message:
      jra@samba.org (r23448)  2007-06-12 14:53:51 -0500 (Tue, 12 Jun 2007)
          
          Doh ! Don't call winbind_child_died() *before* the
          kill call as that sets pid = 0 ! :-).
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.838
    merged: jra@samba.org-20070612200217-w8hictpuj2ycinja
    parent: vlendec@samba.org-20070612193108-qy8hgbmfgrbx2n1z
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 15:02:17 -0500
    message:
      jra@samba.org (r23447)  2007-06-12 14:47:33 -0500 (Tue, 12 Jun 2007)
          
          Add kill signal to child dead path. After talking
          to Jerry add to 3.0.25b.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.837
    merged: vlendec@samba.org-20070612193108-qy8hgbmfgrbx2n1z
    parent: jra@samba.org-20070612181620-a06tcuwbizuh2lrn
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 14:31:08 -0500
    message:
      vlendec@samba.org (r23446)  2007-06-12 14:19:35 -0500 (Tue, 12 Jun 2007)
          
          Restore Jeremy's original formatting, just fix the comment.
          
    ------------------------------------------------------------
    revno: 5275.1.836
    merged: jra@samba.org-20070612181620-a06tcuwbizuh2lrn
    parent: obnox@samba.org-20070612124628-n2sg3c2ce9kgtngm
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 13:16:20 -0500
    message:
      jra@samba.org (r23445)  2007-06-12 13:14:16 -0500 (Tue, 12 Jun 2007)
          
          Fix suggested by Volker. Don't call rename_open_files
          if the name wasn't changed.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.835
    merged: obnox@samba.org-20070612124628-n2sg3c2ce9kgtngm
    parent: obnox@samba.org-20070612121524-kmaceeljgoqjw77i
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 07:46:28 -0500
    message:
      obnox@samba.org (r23434)  2007-06-12 07:35:24 -0500 (Tue, 12 Jun 2007)
          
          Coorect a comment.
          
          
    ------------------------------------------------------------
    revno: 5275.1.834
    merged: obnox@samba.org-20070612121524-kmaceeljgoqjw77i
    parent: obnox@samba.org-20070612120110-cfd8crmnou4c5ekf
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 07:15:24 -0500
    message:
      obnox@samba.org (r23433)  2007-06-12 07:01:52 -0500 (Tue, 12 Jun 2007)
          
          remove superfluous semicolon.
    ------------------------------------------------------------
    revno: 5275.1.833
    merged: obnox@samba.org-20070612120110-cfd8crmnou4c5ekf
    parent: vlendec@samba.org-20070612103040-4ed24e9vd7zobu06
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 07:01:10 -0500
    message:
      obnox@samba.org (r23432)  2007-06-12 06:54:25 -0500 (Tue, 12 Jun 2007)
          
          Remove superfluous comment.
          (A relict from regkey_open_internal days.)
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.832
    merged: vlendec@samba.org-20070612103040-4ed24e9vd7zobu06
    parent: vlendec@samba.org-20070612081626-8awtz6vfeapty3lz
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 05:30:40 -0500
    message:
      vlendec@samba.org (r23429)  2007-06-12 05:18:26 -0500 (Tue, 12 Jun 2007)
          
          Ooops, sorry.
          
          Revert an accidential checkin of r23410.
          
          Volker
          
    ------------------------------------------------------------
    revno: 5275.1.831
    merged: vlendec@samba.org-20070612081626-8awtz6vfeapty3lz
    parent: jra@samba.org-20070612020131-c8kb7cwt71ste11g
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-12 03:16:26 -0500
    message:
      vlendec@samba.org (r23426)  2007-06-12 03:02:32 -0500 (Tue, 12 Jun 2007)
          
          Correct a comment. The default timeout is not 1min, but 30s. While
          there, do some reformatting.
          
          Jeremy, I think we should also kill the child. It might hang in
          something (an fcntl lock for example) that the next child might run into
          immediately again.
          
    ------------------------------------------------------------
    revno: 5275.1.830
    merged: jra@samba.org-20070612020131-c8kb7cwt71ste11g
    parent: jra@samba.org-20070611223110-7k36dcud9x2f97c2
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-11 21:01:31 -0500
    message:
      jra@samba.org (r23425)  2007-06-11 20:45:40 -0500 (Mon, 11 Jun 2007)
          
          Volker noticed this obvious fix for the wins server
          code :-). Thanks Volker !
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.829
    merged: jra@samba.org-20070611223110-7k36dcud9x2f97c2
    parent: jpeach@samba.org-20070611210136-50siz9bx10jhmo6s
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-11 17:31:10 -0500
    message:
      jra@samba.org (r23424)  2007-06-11 17:28:27 -0500 (Mon, 11 Jun 2007)
          
          Thanks to Jerry, we finally tracked down the :
          winbindd: Exceeding 200 client connections, no idle connection found"
          bug #3204. This fixes it in Jerry's testing !
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.828
    merged: jpeach@samba.org-20070611210136-50siz9bx10jhmo6s
    parent: idra@samba.org-20070611001630-5j727lkz44c3n9wv
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-11 16:01:36 -0500
    message:
      jpeach@samba.org (r23423)  2007-06-11 15:56:17 -0500 (Mon, 11 Jun 2007)
          
          Use the correct structure types in the NT_ACL operations. It's not
          clear to my why the catia module feels it's necessary to implement
          these operations, but at least they're now the right type.
          
    ------------------------------------------------------------
    revno: 5275.1.827
    merged: idra@samba.org-20070611001630-5j727lkz44c3n9wv
    parent: vlendec@samba.org-20070610171611-a3195es2o7pyehbd
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-10 19:16:30 -0500
    message:
      idra@samba.org (r23411)  2007-06-10 19:05:48 -0500 (Sun, 10 Jun 2007)
          
          
          We were missing displayName and that was preventing us
          from successfully deleting an entry when "account" is
          the STRUCTURAL objectclass used for users and machines.
          "account" is used each time the user entry is in /etc/passwd
          and we have only the samba attributes in ldap, as well
          as for rfc2307(bis) standard based directories.
          
          
    ------------------------------------------------------------
    revno: 5275.1.826
    merged: vlendec@samba.org-20070610171611-a3195es2o7pyehbd
    parent: vlendec@samba.org-20070610103043-srkuyaxyp0zx41nz
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-10 12:16:11 -0500
    message:
      vlendec@samba.org (r23410)  2007-06-10 12:02:09 -0500 (Sun, 10 Jun 2007)
          
          Merge the core of the cluster code.
          
          I'm 100% certain I've forgotten to merge something, but the main code
          should be in. It's mainly in dbwrap_ctdb.c, ctdbd_conn.c and
          messages_ctdbd.c.
          
          There should be no changes to the non-cluster case, it does survive make
          test on my laptop.
          
          It survives some very basic tests with ctdbd enables, I did not do the
          full test suite for clusters yet.
          
          Phew...
          
          Volker
          
          
    ------------------------------------------------------------
    revno: 5275.1.825
    merged: vlendec@samba.org-20070610103043-srkuyaxyp0zx41nz
    parent: idra@samba.org-20070609230108-0na3gx0nufaftb6i
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-10 05:30:43 -0500
    message:
      vlendec@samba.org (r23408)  2007-06-10 05:18:03 -0500 (Sun, 10 Jun 2007)
          
          Remove a bogus comment
    ------------------------------------------------------------
    revno: 5275.1.824
    merged: idra@samba.org-20070609230108-0na3gx0nufaftb6i
    parent: idra@samba.org-20070609193125-3kg5219s5tl0ygce
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-09 18:01:08 -0500
    message:
      idra@samba.org (r23407)  2007-06-09 17:45:21 -0500 (Sat, 09 Jun 2007)
          
          
          While verifying a bug I found out that for some reason
          the code to add a machine was different then the one used
          to add a user, the old code led to the machine SID not being
          built out correctly allocationg a new RID out of the passdb
          but instead by using the old algorithmic method.
          This may easily end up in creating duplicated SID when the
          RID counter get close to the values built by the algorithmic method.
          
          Simo.
          
          
    ------------------------------------------------------------
    revno: 5275.1.823
    merged: idra@samba.org-20070609193125-3kg5219s5tl0ygce
    parent: idra@samba.org-20070609183107-ihvpr5vgo60vts7k
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-09 14:31:25 -0500
    message:
      idra@samba.org (r23406)  2007-06-09 14:29:35 -0500 (Sat, 09 Jun 2007)
          
          
          Evn if not strictly currently necessary do check for correct
          init also in idmap_nss and idmap_passdb for coherency and to
          prevent errors in future if we change the init functions to
          actually do something and not just return NT_STATUS_OK
          
          
    ------------------------------------------------------------
    revno: 5275.1.822
    merged: idra@samba.org-20070609183107-ihvpr5vgo60vts7k
    parent: jra@samba.org-20070609031255-664qii3lqzuijw3i
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-09 13:31:07 -0500
    message:
      idra@samba.org (r23404)  2007-06-09 13:18:24 -0500 (Sat, 09 Jun 2007)
          
          
          Fix wrong (and missing) action on error condition in ldap reply evaluation loop
          Fixes one of the segfaults in bug #4667
          
          
    ------------------------------------------------------------
    revno: 5275.1.821
    merged: jra@samba.org-20070609031255-664qii3lqzuijw3i
    parent: jra@samba.org-20070609031250-7fob37m0xw006uwy
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 22:12:55 -0500
    message:
      jra@samba.org (r23402)  2007-06-08 19:27:28 -0500 (Fri, 08 Jun 2007)
          
          Got bitten by a talloc hierarchy. Make sure we alloc
          off the pipe ctx now ->names is part of the containing
          struct.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.820
    merged: jra@samba.org-20070609031250-7fob37m0xw006uwy
    parent: jpeach@samba.org-20070609031245-r3dyqlz17qdrd9rj
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 22:12:50 -0500
    message:
      jra@samba.org (r23400)  2007-06-08 19:13:07 -0500 (Fri, 08 Jun 2007)
          
          Fix lsa crash bug #4683. The "names" enum struct
          in a lookup_sidX reply isn't optional - like the
          lookup_sidX query it needs to be defined in the
          struct.
          All this will go away with PIDL (thank goodness....).
          Jerry - I think this is a showstopper to be merged
          for 3.0.25b.
          I'll be watching the build farm to see if anything broke.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.819
    merged: jpeach@samba.org-20070609031245-r3dyqlz17qdrd9rj
    parent: jpeach@samba.org-20070608231556-aw2ua362ov8jamzy
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 22:12:45 -0500
    message:
      jpeach@samba.org (r23398)  2007-06-08 19:10:26 -0500 (Fri, 08 Jun 2007)
          
          Support membership of >16 groups on Darwin by making sure we opt in to the
          dynamic group resolution mechanism when switching UNIX credentials.
          
    ------------------------------------------------------------
    revno: 5275.1.818
    merged: jpeach@samba.org-20070608231556-aw2ua362ov8jamzy
    parent: jpeach@samba.org-20070608223040-r2y7shjru793fp62
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 18:15:56 -0500
    message:
      jpeach@samba.org (r23396)  2007-06-08 18:08:41 -0500 (Fri, 08 Jun 2007)
          
          Make VFS callbacks static. Mark operations as OPAQUE because they
          do not pass through.
          
    ------------------------------------------------------------
    revno: 5275.1.817
    merged: jpeach@samba.org-20070608223040-r2y7shjru793fp62
    parent: jra@samba.org-20070608200112-70w6o3n2vtc0ey1r
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 17:30:40 -0500
    message:
      jpeach@samba.org (r23393)  2007-06-08 17:25:55 -0500 (Fri, 08 Jun 2007)
          
          Support BSD group semantics by making sure that the effective GID is always
          passed as the first GID when calling setgroups(2).
          
    ------------------------------------------------------------
    revno: 5275.1.816
    merged: jra@samba.org-20070608200112-70w6o3n2vtc0ey1r
    parent: jra@samba.org-20070608200107-eoh4v7jqykr7k9hh
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 15:01:12 -0500
    message:
      jra@samba.org (r23391)  2007-06-08 14:58:32 -0500 (Fri, 08 Jun 2007)
          
          Second part of the patch for Apple.
          
          Change the sequence :
          
          gain_root();
          sys_setgroups(ngroups, groups);
          become_id(uid, gid);
          
          to a function call :
          
          set_unix_security_ctx(uid_t uid, gid_t gid, int ngroups, gid_t *groups)
          
          James - should be safe for you to create a Darwin-specific 
          version of this function now.
          
          Jeremy.
          
          
    ------------------------------------------------------------
    revno: 5275.1.815
    merged: jra@samba.org-20070608200107-eoh4v7jqykr7k9hh
    parent: obnox@samba.org-20070608144550-3ba4yaj0hytni706
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 15:01:07 -0500
    message:
      jra@samba.org (r23390)  2007-06-08 14:52:18 -0500 (Fri, 08 Jun 2007)
          
          First part of the patch to make Apple's life easier.
          Doing this in two stages to make it very easy to
          review. Context switching must look like :
          
          gain_root();
          sys_setgroups(ngroups, groups);
          become_id(uid, gid);
          
          Re-arrange order so these three calls are always
          seen together.
          
          Next will be to turn these into a function.
          
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.814
    merged: obnox@samba.org-20070608144550-3ba4yaj0hytni706
    parent: obnox@samba.org-20070608124537-xdgf91imn83yoz3n
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 09:45:50 -0500
    message:
      obnox@samba.org (r23389)  2007-06-08 09:37:29 -0500 (Fri, 08 Jun 2007)
          
          
          Current configure check detects posix ACL support
          but compile of modules/vfs_posixacl.c fails due
          to missing defines in sys/acl.h:
          ACL_USER, ACL_USER_OBJ, ACL_GROUP, ACL_GROUP_OBJ, ACL_OTHER,
          ACL_MASK, ACL_WRITE, ACL_READ
          
          It has to be investigated, if this can be fixed within 
          the posixacl vfs module or if we need a darwinacl module.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.813
    merged: obnox@samba.org-20070608124537-xdgf91imn83yoz3n
    parent: gd@samba.org-20070608103102-6vadrmthjkmwm3af
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 07:45:37 -0500
    message:
      obnox@samba.org (r23387)  2007-06-08 07:32:13 -0500 (Fri, 08 Jun 2007)
          
          1. This unifies the POSIX ACL detection code:
          Linux, FreeBSD and other (which?) ACL implementations
          are now checked in the same block instead of in three
          separate blocks. This was inspired by Timur Bakeyev
          in Bug #4543. Since bugzilla is currently unavailable
          this patch is probably slightly different from Timurs
          original patch. This should finally fix Bug #4543.
          
          2. The default of the --with-acl-support configure 
          option is changed to "auto" (which is actually the
          same as "yes"). So configure tries to detect acl
          support by default. This had been discussed with
          Metze and others.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.812
    merged: gd@samba.org-20070608103102-6vadrmthjkmwm3af
    parent: obnox@samba.org-20070608103056-kkr09cn9irtugr21
    committer: gd@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 05:31:02 -0500
    message:
      gd@samba.org (r23380)  2007-06-08 05:29:46 -0500 (Fri, 08 Jun 2007)
          
          netr_getdcname returns WERROR not NTSTATUS.
          
          Guenther
          
    ------------------------------------------------------------
    revno: 5275.1.811
    merged: obnox@samba.org-20070608103056-kkr09cn9irtugr21
    parent: jerry@samba.org-20070607134557-97scxukdu03v180s
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-08 05:30:56 -0500
    message:
      obnox@samba.org (r23379)  2007-06-08 05:15:19 -0500 (Fri, 08 Jun 2007)
          
          Whitespace cosmetics, to reduce irritating diffs...
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.810
    merged: jerry@samba.org-20070607134557-97scxukdu03v180s
    parent: vlendec@samba.org-20070607122901-g192hesovdb08e83
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 08:45:57 -0500
    message:
      jerry@samba.org (r23377)  2007-06-07 08:35:39 -0500 (Thu, 07 Jun 2007)
          
          Patch from Bjoern Jacke <bjoern@j3e.de> to deal
          with non-GNU implementations of tr in autogen.sh
          
          
    ------------------------------------------------------------
    revno: 5275.1.809
    merged: vlendec@samba.org-20070607122901-g192hesovdb08e83
    parent: vlendec@samba.org-20070607122856-4b7y28eodypp33fk
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:29:01 -0500
    message:
      vlendec@samba.org (r23376)  2007-06-07 02:53:33 -0500 (Thu, 07 Jun 2007)
          
          More warnings
    ------------------------------------------------------------
    revno: 5275.1.808
    merged: vlendec@samba.org-20070607122856-4b7y28eodypp33fk
    parent: jra@samba.org-20070607122851-79xv5qbrx7mfe5v1
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:56 -0500
    message:
      vlendec@samba.org (r23375)  2007-06-07 02:49:43 -0500 (Thu, 07 Jun 2007)
          
          Fix a 64-bit warning
    ------------------------------------------------------------
    revno: 5275.1.807
    merged: jra@samba.org-20070607122851-79xv5qbrx7mfe5v1
    parent: jra@samba.org-20070607122846-bkx4uht85p8b3mth
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:51 -0500
    message:
      jra@samba.org (r23372)  2007-06-06 20:13:43 -0500 (Wed, 06 Jun 2007)
          
          Remove restriction on string length for rpcclient commands.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.806
    merged: jra@samba.org-20070607122846-bkx4uht85p8b3mth
    parent: jra@samba.org-20070607122841-h5esm1zw92cv9l7f
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:46 -0500
    message:
      jra@samba.org (r23371)  2007-06-06 19:14:06 -0500 (Wed, 06 Jun 2007)
          
          Fix the misleading comment I added - it really *should*
          say "locks chain and returned record", not
          "and returns record"
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.805
    merged: jra@samba.org-20070607122841-h5esm1zw92cv9l7f
    parent: vlendec@samba.org-20070607122836-f4g1ld3j4bdox8vm
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:41 -0500
    message:
      jra@samba.org (r23370)  2007-06-06 19:00:45 -0500 (Wed, 06 Jun 2007)
          
          Traverse in tdb wasn't consistently using the
          travlocks.lock_rw for lock read/write types, it
          was sometimes using it (tdb_next_lock) and
          sometimes explicitly using F_WRLCK instead.
          Change this to consistently use travlocks.lock_rw
          only.
          I'm pretty sure about this fix (else I woudn't
          be checking this in :-) but tridge and Volker
          please review.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.804
    merged: vlendec@samba.org-20070607122836-f4g1ld3j4bdox8vm
    parent: tridge@samba.org-20070607122830-bcwnszzunyipp6c0
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:36 -0500
    message:
      vlendec@samba.org (r23368)  2007-06-06 08:02:24 -0500 (Wed, 06 Jun 2007)
          
          Make "winbind:rpc only" a full blown parameter. Thanks to Karolin for
          the patch :-)
          
    ------------------------------------------------------------
    revno: 5275.1.803
    merged: tridge@samba.org-20070607122830-bcwnszzunyipp6c0
    parent: obnox@samba.org-20070607122825-kyf3ad3uuri3uzjf
    committer: tridge@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:30 -0500
    message:
      tridge@samba.org (r23367)  2007-06-06 08:02:14 -0500 (Wed, 06 Jun 2007)
          
          check the "use mmap" option for ldb too
    ------------------------------------------------------------
    revno: 5275.1.802
    merged: obnox@samba.org-20070607122825-kyf3ad3uuri3uzjf
    parent: vlendec@samba.org-20070607122820-7x38mz3zcyj2hsx0
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:25 -0500
    message:
      obnox@samba.org (r23363)  2007-06-06 04:27:43 -0500 (Wed, 06 Jun 2007)
          
          This fixes the build on a SuSE 6.1. :-)
          I guess this had been merely forgotten.
          
          But beware: The implementations of rep_pread and rep_pwrite are
          not thread safe.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.801
    merged: vlendec@samba.org-20070607122820-7x38mz3zcyj2hsx0
    parent: jra@samba.org-20070606004611-3s5vqgbngkz2hsgi
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-07 07:28:20 -0500
    message:
      vlendec@samba.org (r23362)  2007-06-06 02:46:38 -0500 (Wed, 06 Jun 2007)
          
          Respect "use mmap" in tdb_wrap_open(). Tridge, you might want to merge
          this in your tree.
          
    ------------------------------------------------------------
    revno: 5275.1.800
    merged: jra@samba.org-20070606004611-3s5vqgbngkz2hsgi
    parent: jra@samba.org-20070605234611-sewf33815rtu5kgy
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 19:46:11 -0500
    message:
      jra@samba.org (r23359)  2007-06-05 19:42:10 -0500 (Tue, 05 Jun 2007)
          
          Fix bug #4537, fix from jens.nissen@gmx.net.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.799
    merged: jra@samba.org-20070605234611-sewf33815rtu5kgy
    parent: jerry@samba.org-20070605195756-g381mmglkkutq723
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 18:46:11 -0500
    message:
      jra@samba.org (r23358)  2007-06-05 18:35:39 -0500 (Tue, 05 Jun 2007)
          
          Fix from Justin Maggard <jmaggard@infrant.com> - ensure we don't
          expire a password if it's explicitly set as ACB_PWNOTREQ.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.798
    merged: jerry@samba.org-20070605195756-g381mmglkkutq723
    parent: jra@samba.org-20070605191610-7x6dxe4nu0c71rxi
    committer: Gerald Carter <jerry@samba.org>
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 14:57:56 -0500
    message:
      sync missing files from SAMBA_3_0 tree
    ------------------------------------------------------------
    revno: 5275.1.797
    merged: jra@samba.org-20070605191610-7x6dxe4nu0c71rxi
    parent: idra@samba.org-20070605130142-c770uf1zi8l6xugp
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 14:16:10 -0500
    message:
      jra@samba.org (r23357)  2007-06-05 14:17:05 -0500 (Tue, 05 Jun 2007)
          
          timespec_current() was returning the wrong ns time
          (multiplying tv_sec, not tv_usec).
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.796
    merged: idra@samba.org-20070605130142-c770uf1zi8l6xugp
    parent: gd@samba.org-20070605104607-qu0vbjiate7ee0qd
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 08:01:42 -0500
    message:
      idra@samba.org (r23356)  2007-06-05 07:58:18 -0500 (Tue, 05 Jun 2007)
          
          
          We missed to add the 'c' character to the list of valid ones for
          shell escaping.
          
          I hate this kind of bugs more than how Jeremy hates off by ones :(
          
          Simo.
          
          
    ------------------------------------------------------------
    revno: 5275.1.795
    merged: gd@samba.org-20070605104607-qu0vbjiate7ee0qd
    parent: gd@samba.org-20070605103044-bb814jut0jzymox5
    committer: gd@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 05:46:07 -0500
    message:
      gd@samba.org (r23355)  2007-06-05 05:49:05 -0500 (Tue, 05 Jun 2007)
          
          Fix some more build warnings.
          
          Guenther
          
    ------------------------------------------------------------
    revno: 5275.1.794
    merged: gd@samba.org-20070605103044-bb814jut0jzymox5
    parent: jpeach@samba.org-20070605061542-21u9nk4omou8xxgq
    committer: gd@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 05:30:44 -0500
    message:
      gd@samba.org (r23354)  2007-06-05 05:23:56 -0500 (Tue, 05 Jun 2007)
          
          Fix build warning.
          
          Guenther
          
    ------------------------------------------------------------
    revno: 5275.1.793
    merged: jpeach@samba.org-20070605061542-21u9nk4omou8xxgq
    parent: jra@samba.org-20070605020110-08f80m3yzn6pw8uo
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Tue 2007-06-05 01:15:42 -0500
    message:
      jpeach@samba.org (r23352)  2007-06-05 01:10:09 -0500 (Tue, 05 Jun 2007)
          
          Don't generate stamp-h. AFAICT it is never used.
          
    ------------------------------------------------------------
    revno: 5275.1.792
    merged: jra@samba.org-20070605020110-08f80m3yzn6pw8uo
    parent: jra@samba.org-20070605000116-9oaox2b5qq8kulgd
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 21:01:10 -0500
    message:
      jra@samba.org (r23349)  2007-06-04 20:59:37 -0500 (Mon, 04 Jun 2007)
          
          Fix from Steve Langasek <vorlon@debian.org> to
          allow SIGTERM to cause nmbd to exit on awaiting
          an interface to come up. Debian bug #168079
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.791
    merged: jra@samba.org-20070605000116-9oaox2b5qq8kulgd
    parent: jra@samba.org-20070604233105-a3p2zjtu4pdg4vdm
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 19:01:16 -0500
    message:
      jra@samba.org (r23348)  2007-06-04 18:51:19 -0500 (Mon, 04 Jun 2007)
          
          Fix connection reporting on SIGUSR2 (noticed by
          Herb).
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.790
    merged: jra@samba.org-20070604233105-a3p2zjtu4pdg4vdm
    parent: jra@samba.org-20070604223105-vxmv5vwlfvu5u5da
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 18:31:05 -0500
    message:
      jra@samba.org (r23347)  2007-06-04 18:31:34 -0500 (Mon, 04 Jun 2007)
          
          Fix Coverity 363. Dead code elimination.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.789
    merged: jra@samba.org-20070604223105-vxmv5vwlfvu5u5da
    parent: jra@samba.org-20070604200110-xad93tqffzqk8pc6
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 17:31:05 -0500
    message:
      jra@samba.org (r23346)  2007-06-04 17:29:23 -0500 (Mon, 04 Jun 2007)
          
          Fix offline caching with XP/Vista. It was an off-by-one
          in storing the access mask. I shouldn't have made this
          mistake. Damn. Fixes bug #4673.
          Jeremy
          
    ------------------------------------------------------------
    revno: 5275.1.788
    merged: jra@samba.org-20070604200110-xad93tqffzqk8pc6
    parent: vlendec@samba.org-20070604200105-qz8qiuaa5jbji6lv
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 15:01:10 -0500
    message:
      jra@samba.org (r23345)  2007-06-04 14:58:11 -0500 (Mon, 04 Jun 2007)
          
          Stop Coverity from getting confused.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.787
    merged: vlendec@samba.org-20070604200105-qz8qiuaa5jbji6lv
    parent: vlendec@samba.org-20070604194606-bgf50mffnzo8w6b1
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 15:01:05 -0500
    message:
      vlendec@samba.org (r23344)  2007-06-04 14:50:30 -0500 (Mon, 04 Jun 2007)
          
          Better error message
          
    ------------------------------------------------------------
    revno: 5275.1.786
    merged: vlendec@samba.org-20070604194606-bgf50mffnzo8w6b1
    parent: jra@samba.org-20070604193122-07xyvhkp58idb3l4
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 14:46:06 -0500
    message:
      vlendec@samba.org (r23343)  2007-06-04 14:45:41 -0500 (Mon, 04 Jun 2007)
          
          Fix error return
          
    ------------------------------------------------------------
    revno: 5275.1.785
    merged: jra@samba.org-20070604193122-07xyvhkp58idb3l4
    parent: jra@samba.org-20070604190042-w2a4ljlzsac516u9
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 14:31:22 -0500
    message:
      jra@samba.org (r23342)  2007-06-04 14:29:40 -0500 (Mon, 04 Jun 2007)
          
          Stop Coverity from getting confused.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.784
    merged: jra@samba.org-20070604190042-w2a4ljlzsac516u9
    parent: obnox@samba.org-20070604144553-nr09a9ebe0qwtnft
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 14:00:42 -0500
    message:
      jra@samba.org (r23341)  2007-06-04 14:03:33 -0500 (Mon, 04 Jun 2007)
          
          pdb interfaces should be versioned. As SAMBA_3_0 and SAMBA_3_0_26
          are now identical, use the same version number (16) for both.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.783
    merged: obnox@samba.org-20070604144553-nr09a9ebe0qwtnft
    parent: metze@samba.org-20070604143103-p0s061erww83kgr5
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 09:45:53 -0500
    message:
      obnox@samba.org (r23340)  2007-06-04 09:48:26 -0500 (Mon, 04 Jun 2007)
          
          Fix typo in debug ouput. Found by Karolin Seeger <ks@sernet.de>.
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.782
    merged: metze@samba.org-20070604143103-p0s061erww83kgr5
    parent: metze@samba.org-20070604130906-i3cb8msvumuec13q
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 09:31:03 -0500
    message:
      metze@samba.org (r23337)  2007-06-04 09:25:52 -0500 (Mon, 04 Jun 2007)
          
          fix a crash bug...I wonder why only HP-UX 11.00 ans 11.11 noticed
          it via a SIGBUS...
          
          I missed to remove the samba3 specifc code path to tdb_open_ex()
          when I synced lib/tdb/ with samba4. The explicit cast in on tdb_open_ex()
          dropped the compiler warning :-(
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.781
    merged: metze@samba.org-20070604130906-i3cb8msvumuec13q
    parent: metze@samba.org-20070604130901-vb1ivwq2e5s42p04
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 08:09:06 -0500
    message:
      metze@samba.org (r23335)  2007-06-04 04:57:59 -0500 (Mon, 04 Jun 2007)
          
          as not all source files include replace.h/config.h
          before unistd.h we need to pass -D_FILE_OFFSET_BITS=64
          together with -Dpread=pread64 -Dpwrite=pwrite64
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.780
    merged: metze@samba.org-20070604130901-vb1ivwq2e5s42p04
    parent: metze@samba.org-20070604130856-vbfauhudovskmmqm
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 08:09:01 -0500
    message:
      metze@samba.org (r23330)  2007-06-04 03:03:46 -0500 (Mon, 04 Jun 2007)
          
          always include "winbind_client.h" as first header
          as it brings in "replace.h" this will bring in "config.h"
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.779
    merged: metze@samba.org-20070604130856-vbfauhudovskmmqm
    parent: tridge@samba.org-20070604130851-qyvp28f1nj1ix3oh
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 08:08:56 -0500
    message:
      metze@samba.org (r23328)  2007-06-04 03:01:48 -0500 (Mon, 04 Jun 2007)
          
          don't typedef ber_tag_t when it's already done by openldap
          headers on HP-UX (lber_types.h defines _LBER_TYPES_H).
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.778
    merged: tridge@samba.org-20070604130851-qyvp28f1nj1ix3oh
    parent: jerry@samba.org-20070604130846-i1ajx4nkr13tfmgo
    committer: tridge@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 08:08:51 -0500
    message:
      tridge@samba.org (r23323)  2007-06-03 20:51:18 -0500 (Sun, 03 Jun 2007)
          
          
          merged ldb changes from 3.0.26
          
    ------------------------------------------------------------
    revno: 5275.1.777
    merged: jerry@samba.org-20070604130846-i1ajx4nkr13tfmgo
    parent: obnox@samba.org-20070604004750-wv7zwjo7xkh2akm5
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-04 08:08:46 -0500
    message:
      jerry@samba.org (r23321)  2007-06-03 20:33:00 -0500 (Sun, 03 Jun 2007)
          
          remove unused variable (due to mad merge from Centeris patches)
    ------------------------------------------------------------
    revno: 5275.1.776
    merged: obnox@samba.org-20070604004750-wv7zwjo7xkh2akm5
    parent: vlendec@samba.org-20070604004745-1qog0z6t934fyf44
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-03 19:47:50 -0500
    message:
      obnox@samba.org (r23317)  2007-06-03 15:24:25 -0500 (Sun, 03 Jun 2007)
          
          Fix the build: r23315 was a little overeager in removing the
          in the guise of @BUILD_INIPARSER@ (to NET_OBJ). This also 
          eliminates the need to have @BUILD_INIPARSER@ in the deps for
          the bin/net target. 
          Same procedure for the pam_winbindd module.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.775
    merged: vlendec@samba.org-20070604004745-1qog0z6t934fyf44
    parent: metze@samba.org-20070603163110-bc1fydjxp5qr4qg0
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-03 19:47:45 -0500
    message:
      vlendec@samba.org (r23316)  2007-06-03 14:56:41 -0500 (Sun, 03 Jun 2007)
          
          Ouch... This would not have run in production without cluster code
          anyway.
          

Diff too large for email (5909 lines, the limit is 1000).

   

r_,Jdgtt0A  v
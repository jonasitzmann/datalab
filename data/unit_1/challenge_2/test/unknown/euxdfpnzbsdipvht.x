From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun  3 15:41:01 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53Jf1hB018996
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 15:41:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id BEA7B16381A
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  3 Jun 2007 19:40:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_12_24,UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 35300162AD9
	for <samba-cvs@samba.org>; Sun,  3 Jun 2007 19:40:08 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-cvs@samba.org
	id 1Huvvs-0002cP-Dh; Sun, 03 Jun 2007 21:40:08 +0200
Received: by intern.SerNet.DE
	id 1Huvvs-0004Tq-4z; Sun, 03 Jun 2007 21:40:08 +0200
Received: by intern.SerNet.DE
	id 1Huvvr-0004TR-6U; Sun, 03 Jun 2007 21:40:08 +0200
Received: from mad by nirvana.sernet.private with local (Exim 4.63)
	(envelope-from <ma@sernet.de>)
	id 1HuczJ-0002zF-68; Sun, 03 Jun 2007 01:26:25 +0200
To: samba-cvs@samba.org
From: Michael Adam <ma@sernet.de>
Date: Sun, 03 Jun 2007 01:26:25 +0200
Message-Id: <E1Huvvs-0004Tq-4z@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Rev 5378: merge from upstream in
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
revno: 5378
revision-id: ma@sernet.de-20070602232613-1ohum1a444koaoeo
parent: ma@sernet.de-20070531124612-vhxd3m9v060b6bj7
parent: metze@samba.org-20070602091615-xqyv9sa9e5bvil52
committer: Michael Adam <ma@sernet.de>
branch nick: SAMBA_3_0-registry.bzr
timestamp: Sun 2007-06-03 01:26:13 +0200
message:
  merge from upstream
removed:
  source/include/core/           core-20060908151636-j1lb96adrin24xtq-1
  source/include/core/nterr.h    nterr.h-20060908151636-j1lb96adrin24xtq-2
modified:
  REVISION                       REVISION-20060530022625-68239662668b41c3
  source/Makefile.in             Makefile.in-20060530022626-b16dac2328ebe703
  source/configure.in            configure.in-20060530022626-07e74bc1e326c82d
  source/include/includes.h      includes.h-20060530022627-d1a059a99c05e8be
  source/include/rpc_eventlog.h  rpc_eventlog.h-20060530055248-c99df29844c74a4e
  source/include/rpc_svcctl.h    rpc_svcctl.h-20060530055249-75f5a151cac2ff2f
  source/include/smb.h           smb.h-20060530022627-6c2e6fe4eb631e83
  source/lib/replace/Makefile.in makefile.in-20060919015053-50coyc2ouwpsm77j-6
  source/lib/replace/README      readme-20060919015053-50coyc2ouwpsm77j-17
  source/lib/replace/configure.ac configure.ac-20060919015053-50coyc2ouwpsm77j-22
  source/lib/replace/dlfcn.c     dlfcn.c-20060919015053-50coyc2ouwpsm77j-27
  source/lib/replace/dlfcn.m4    dlfcn.m4-20060919015053-50coyc2ouwpsm77j-26
  source/lib/replace/libreplace.m4 libreplace.m4-20060919015053-50coyc2ouwpsm77j-4
  source/lib/replace/libreplace_cc.m4 libreplace_cc.m4-20060919015053-50coyc2ouwpsm77j-12
  source/lib/replace/replace.c   replace.c-20060919015053-50coyc2ouwpsm77j-15
  source/lib/replace/replace.h   replace.h-20060919015053-50coyc2ouwpsm77j-19
  source/lib/replace/system/aio.h aio.h-20070116140337-kvwj8hsibej3ya2z-1
  source/lib/replace/system/capability.h capability.h-20060919015053-50coyc2ouwpsm77j-50
  source/lib/replace/system/dir.h dir.h-20060919015053-50coyc2ouwpsm77j-47
  source/lib/replace/system/filesys.h filesys.h-20060919015053-50coyc2ouwpsm77j-46
  source/lib/replace/system/glob.h glob.h-20060919015053-50coyc2ouwpsm77j-52
  source/lib/replace/system/iconv.h iconv.h-20060919015053-50coyc2ouwpsm77j-45
  source/lib/replace/system/kerberos.h kerberos.h-20060919015053-50coyc2ouwpsm77j-44
  source/lib/replace/system/locale.h locale.h-20060919015053-50coyc2ouwpsm77j-38
  source/lib/replace/system/network.h network.h-20060919015053-50coyc2ouwpsm77j-34
  source/lib/replace/system/passwd.h passwd.h-20060919015053-50coyc2ouwpsm77j-39
  source/lib/replace/system/printing.h printing.h-20060919015053-50coyc2ouwpsm77j-35
  source/lib/replace/system/readline.h readline.h-20060919015053-50coyc2ouwpsm77j-51
  source/lib/replace/system/select.h select.h-20060919015053-50coyc2ouwpsm77j-48
  source/lib/replace/system/shmem.h shmem.h-20060919015053-50coyc2ouwpsm77j-42
  source/lib/replace/system/syslog.h syslog.h-20060919015053-50coyc2ouwpsm77j-49
  source/lib/replace/system/terminal.h terminal.h-20060919015053-50coyc2ouwpsm77j-43
  source/lib/replace/system/time.h time.h-20060919015053-50coyc2ouwpsm77j-37
  source/lib/replace/system/wait.h wait.h-20060919015053-50coyc2ouwpsm77j-40
  source/libmsrpc/cac_svcctl.c   cac_svcctl.c-20060530073654-79bec7da5293255c
  source/librpc/gen_ndr/cli_svcctl.c cli_svcctl.c-20060920230954-xultw3055aka8a8w-1
  source/librpc/gen_ndr/cli_svcctl.h cli_svcctl.h-20060920230955-x52ape11lz7b8jeo-1
  source/librpc/gen_ndr/ndr_svcctl.c ndr_svcctl.c-20060920230957-h0bix6fzhe0qanm6-1
  source/librpc/gen_ndr/srv_svcctl.c srv_svcctl.c-20060920231001-dc3uih95sitqxf3u-1
  source/librpc/gen_ndr/svcctl.h svcctl.h-20060920231002-3107qr7u541y32gl-1
  source/librpc/idl/svcctl.idl   svcctl.idl-20060919014733-4p5kqorwk9bqvxnk-13
  source/modules/nfs4_acls.c     nfs4_acls.c-20060919014541-p8h6pru3wr0qvdka-1
  source/modules/vfs_gpfs.c      vfs_gpfs.c-20061109202948-faf4b3d9745o8b1q-1
  source/nsswitch/winbindd_ads.c winbindd_ads.c-20060530022627-7c5e13eefe48f902
  source/nsswitch/winbindd_cache.c winbindd_cache.c-20060530022627-45b83e217d38566d
  source/rpc_client/cli_svcctl.c cli_svcctl.c-20060530055340-916e41dfa21360ed
  source/rpc_parse/parse_eventlog.c parse_eventlog.c-20060530055252-4bbbca3b61f41e79
  source/rpc_parse/parse_svcctl.c parse_svcctl.c-20060530055253-9e7c3c6de024c0bf
  source/rpc_server/srv_eventlog.c srv_eventlog.c-20060530055254-db3eb6fd21fab8d7
  source/rpc_server/srv_eventlog_nt.c srv_eventlog_nt.c-20060530055256-b613397e1e3267b5
  source/rpc_server/srv_pipe.c   srv_pipe.c-20060530022627-4557e12950afc71b
  source/rpc_server/srv_svcctl.c srv_svcctl.c-20060530055257-a61d26dc0ae20a9d
  source/rpc_server/srv_svcctl_nt.c srv_svcctl_nt.c-20060530055258-a8fea52fa6f0c241
  source/smbd/reply.c            reply.c-20060530022627-92de20342694c043
  source/smbd/server.c           server.c-20060530022627-212a418ec1144979
  source/utils/net_rpc_service.c net_rpc_service.c-20060530055341-4e68404dde899ff5
    ------------------------------------------------------------
    revno: 5275.1.770
    merged: metze@samba.org-20070602091615-xqyv9sa9e5bvil52
    parent: metze@samba.org-20070602084547-0yghq0uskqx8e26i
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-02 04:16:15 -0500
    message:
      metze@samba.org (r23309)  2007-06-02 04:10:08 -0500 (Sat, 02 Jun 2007)
          
          sync lib/replace with SAMBA_4_0
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.769
    merged: metze@samba.org-20070602084547-0yghq0uskqx8e26i
    parent: metze@samba.org-20070602081628-0kq7ml5or6tpmwda
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-02 03:45:47 -0500
    message:
      metze@samba.org (r23307)  2007-06-02 03:30:42 -0500 (Sat, 02 Jun 2007)
          
          move readahead stuff out of libreplace and make it samba3 specific
          as we can't replace this function in libreplace and we do
          the some stuff for other function in the same way. 
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.768
    merged: metze@samba.org-20070602081628-0kq7ml5or6tpmwda
    parent: ab@samba.org-20070602063032-uvrj3iidyne9hqe1
    committer: metze@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-02 03:16:28 -0500
    message:
      metze@samba.org (r23305)  2007-06-02 03:14:27 -0500 (Sat, 02 Jun 2007)
          
          merge from samba4:
          
          fix large file support on HP-UX 11.00 and 11.11
          
          metze
    ------------------------------------------------------------
    revno: 5275.1.767
    merged: ab@samba.org-20070602063032-uvrj3iidyne9hqe1
    parent: jpeach@samba.org-20070601194603-2rsnwyp9rvcwm1vq
    committer: ab@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-02 01:30:32 -0500
    message:
      ab@samba.org (r23302)  2007-06-02 01:28:38 -0500 (Sat, 02 Jun 2007)
          
          Refactor vfs_gpfs module, fix problems with chmod Tridge has found during ctdb tests
    ------------------------------------------------------------
    revno: 5275.1.766
    merged: jpeach@samba.org-20070601194603-2rsnwyp9rvcwm1vq
    parent: jpeach@samba.org-20070601194558-fttfr5wtsn6mz5or
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 14:46:03 -0500
    message:
      jpeach@samba.org (r23300)  2007-06-01 14:42:23 -0500 (Fri, 01 Jun 2007)
          
          AFAICT these are not needed. Jerry, can you please review and revert
          if this is not correct.
          
    ------------------------------------------------------------
    revno: 5275.1.765
    merged: jpeach@samba.org-20070601194558-fttfr5wtsn6mz5or
    parent: vlendec@samba.org-20070601184600-q14exoauy7tk2uj5
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 14:45:58 -0500
    message:
      jpeach@samba.org (r23299)  2007-06-01 14:34:08 -0500 (Fri, 01 Jun 2007)
          
          Fix the build for !WITH_SENDFILE.
          
    ------------------------------------------------------------
    revno: 5275.1.764
    merged: vlendec@samba.org-20070601184600-q14exoauy7tk2uj5
    parent: jpeach@samba.org-20070601161556-m511bqwz19c7xtzs
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 13:46:00 -0500
    message:
      vlendec@samba.org (r23297)  2007-06-01 13:39:50 -0500 (Fri, 01 Jun 2007)
          
          This introduces the winbind:ads parameter which defaults to True. Setting it
          to False makes winbind use RPC and not LDAP methods to connect to the DCs,
          even when it figured out they are AD.
    ------------------------------------------------------------
    revno: 5275.1.763
    merged: jpeach@samba.org-20070601161556-m511bqwz19c7xtzs
    parent: obnox@samba.org-20070601123105-5xvaaroct989x0w9
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 11:15:56 -0500
    message:
      jpeach@samba.org (r23295)  2007-06-01 11:06:40 -0500 (Fri, 01 Jun 2007)
          
          binaries.  Fix vfs_zfsacl build rule in SAMBA_3_0.
          
    ------------------------------------------------------------
    revno: 5275.1.762
    merged: obnox@samba.org-20070601123105-5xvaaroct989x0w9
    parent: obnox@samba.org-20070601123101-t3id1cjvibxmwfpd
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 07:31:05 -0500
    message:
      obnox@samba.org (r23291)  2007-06-01 07:24:57 -0500 (Fri, 01 Jun 2007)
          
          Undo the somewhat naive change of r23279:
          The clear text presentaion of the sid in the ldap expression
          does work with w2k3 but not with w2k....
          
          Thanks to Guenther for advising me of this issue.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.761
    merged: obnox@samba.org-20070601123101-t3id1cjvibxmwfpd
    parent: obnox@samba.org-20070601101551-60dd45eqlxezsisx
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 07:31:01 -0500
    message:
      obnox@samba.org (r23290)  2007-06-01 07:18:16 -0500 (Fri, 01 Jun 2007)
          
          Fix another small and stupid but severe typo. 
          Hopfully, I have finally got this right... :-)
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.760
    merged: obnox@samba.org-20070601101551-60dd45eqlxezsisx
    parent: obnox@samba.org-20070601000110-8vugr58jdmtvgzv0
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-01 05:15:51 -0500
    message:
      obnox@samba.org (r23287)  2007-06-01 05:10:57 -0500 (Fri, 01 Jun 2007)
          
          Use talloc_move instead of talloc_steal as this is what I really
          wanted to do.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.759
    merged: obnox@samba.org-20070601000110-8vugr58jdmtvgzv0
    parent: obnox@samba.org-20070601000106-klyr8j9j8srqfr8d
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 19:01:10 -0500
    message:
      obnox@samba.org (r23284)  2007-05-31 18:58:56 -0500 (Thu, 31 May 2007)
          
          Oh what a nasty typo! This gave me some headache,
          with talloc randomly failing.
          
          Hey, shouldn't TALLOC_ARRAY _not_ return NULL when
          requested to allocate an array with zero entries? :-)
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.758
    merged: obnox@samba.org-20070601000106-klyr8j9j8srqfr8d
    parent: obnox@samba.org-20070531221546-2iu2wmmsehwo881s
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 19:01:06 -0500
    message:
      obnox@samba.org (r23283)  2007-05-31 18:55:37 -0500 (Thu, 31 May 2007)
          
          Use a temporary talloc context in ads:lookup_groupmem. 
          And clean up unused stuff at the end.
          Daringly, I use talloc_steal at some point, where it 
          appears natural to me.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.757
    merged: obnox@samba.org-20070531221546-2iu2wmmsehwo881s
    parent: jerry@samba.org-20070531180122-vn0zef6l4o4ns9r0
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 17:15:46 -0500
    message:
      obnox@samba.org (r23279)  2007-05-31 17:02:49 -0500 (Thu, 31 May 2007)
          
          Replace occurrence of sid_binstring inside lookup_groupmem 
          by sid_string_static.
          
          
    ------------------------------------------------------------
    revno: 5275.1.756
    merged: jerry@samba.org-20070531180122-vn0zef6l4o4ns9r0
    parent: jra@samba.org-20070531173108-pd20mn8o4mjoxzlp
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 13:01:22 -0500
    message:
      jerry@samba.org (r23274)  2007-05-31 12:59:04 -0500 (Thu, 31 May 2007)
          
          merge CloseEventlog() pidl conversion from 3.0.26 && fix a few init call renames for svcctl in the previous commit
    ------------------------------------------------------------
    revno: 5275.1.755
    merged: jra@samba.org-20070531173108-pd20mn8o4mjoxzlp
    parent: jerry@samba.org-20070531173102-nevn4ep73ntl5i8b
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 12:31:08 -0500
    message:
      jra@samba.org (r23272)  2007-05-31 12:26:30 -0500 (Thu, 31 May 2007)
          
          Fix main event loop - reviewed by Volker.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.754
    merged: jerry@samba.org-20070531173102-nevn4ep73ntl5i8b
    parent: jerry@samba.org-20070531160135-6i1zq1rwoayfl4q0
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 12:31:02 -0500
    message:
      jerry@samba.org (r23271)  2007-05-31 12:24:30 -0500 (Thu, 31 May 2007)
          
          merge service control pidl change for CloseServiceHandle() from SAMBA_3_0_26
    ------------------------------------------------------------
    revno: 5275.1.753
    merged: jerry@samba.org-20070531160135-6i1zq1rwoayfl4q0
    parent: jerry@samba.org-20070531154556-gsp0tnnuy07kbvm9
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 11:01:35 -0500
    message:
      jerry@samba.org (r23269)  2007-05-31 10:46:01 -0500 (Thu, 31 May 2007)
          
          Regenerate svcctl files after IDL fixes
          
          
    ------------------------------------------------------------
    revno: 5275.1.752
    merged: jerry@samba.org-20070531154556-gsp0tnnuy07kbvm9
    parent: vlendec@samba.org-20070531093055-7noao632793n3yf8
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-05-31 10:45:56 -0500
    message:
      jerry@samba.org (r23268)  2007-05-31 10:43:40 -0500 (Thu, 31 May 2007)
          
          Rename some variables in the svcctl.idl to prevent 
          redeclaration compile failures in the generated client 
          code.
          
          

Diff too large for email (4069 lines, the limit is 1000).

      

anii2s-
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 19 05:55:06 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5J9t5L9028021
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 05:55:05 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 32A88162C2E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 09:55:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 1EA3D162AD8
	for <samba-cvs@samba.org>; Tue, 19 Jun 2007 09:54:17 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-cvs@samba.org
	id 1I0aPh-0005Hv-7m; Tue, 19 Jun 2007 11:54:17 +0200
Received: by intern.SerNet.DE
	id 1I0aPg-0007jb-W5; Tue, 19 Jun 2007 11:54:17 +0200
Received: by intern.SerNet.DE
	id 1I0aPg-0007jF-JH; Tue, 19 Jun 2007 11:54:16 +0200
Received: from mad by nirvana.sernet.private with local (Exim 4.63)
	(envelope-from <ma@sernet.de>)
	id 1I0aPg-0003KW-8y; Tue, 19 Jun 2007 11:54:16 +0200
To: samba-cvs@samba.org
From: Michael Adam <ma@sernet.de>
Date: Tue, 19 Jun 2007 11:54:16 +0200
Message-Id: <E1I0aPg-0007jb-W5@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Rev 5381: merge from upstream - now in sync again! in
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
revno: 5381
revision-id: ma@sernet.de-20070619095401-4h1nq927seojlqmt
parent: ma@sernet.de-20070613122003-hev6619nf14cwgsl
parent: jpeach@samba.org-20070618161516-tu4uk4na2br24sq0
committer: Michael Adam <ma@sernet.de>
branch nick: SAMBA_3_0-registry.bzr
timestamp: Tue 2007-06-19 11:54:01 +0200
message:
  merge from upstream - now in sync again!
added:
  source/include/reg_db.h        reg_db.h-20070615214610-cezf0v33opod19n3-1
  source/lib/privileges_basic.c  privileges_basic.c-20070614113052-vss4ipzfefw4ou23-1
  source/lib/util_nttoken.c      util_nttoken.c-20070614113053-yunl01g6q5iqk4rv-1
  source/lib/util_reg_api.c      util_reg_api.c-20070614113053-250c4n739wu542wo-1
  source/lib/util_reg_smbconf.c  util_reg_smbconf.c-20070614113054-hsmgsndbevshz5tg-1
renamed:
  source/lib/privileges_basic.c => source/lib/privileges_basic.c.moved privileges_basic.c-20070412140750-pro2zmd8rfupsdup-1
  source/lib/util_nttoken.c => source/lib/util_nttoken.c.moved util_nttoken.c-20070412121956-apjs5s3igy1ydc2e-1
modified:
  REVISION                       REVISION-20060530022625-68239662668b41c3
  examples/misc/adssearch.pl     adssearch.pl-20060530052222-0e15313921c49cc3
  source/Makefile.in             Makefile.in-20060530022626-b16dac2328ebe703
  source/auth/auth_util.c        auth_util.c-20060530022627-f9a3e5940d409fe9
  source/client/smbspool.c       smbspool.c-20060530022627-037d79e85d505b8b
  source/configure.in            configure.in-20060530022626-07e74bc1e326c82d
  source/groupdb/mapping.c       mapping.c-20060530022627-0d4c0d27ca093883
  source/include/includes.h      includes.h-20060530022627-d1a059a99c05e8be
  source/include/smb_macros.h    smb_macros.h-20060530022627-412e2056512de943
  source/lib/charcnv.c           charcnv.c-20060530022627-e157371a538fdeb6
  source/lib/data_blob.c         data_blob.c-20060530022627-6dbdabdd0ae85f7f
  source/lib/select.c            select.c-20060530022627-0a8a8f371f75ead5
  source/lib/smbldap.c           smbldap.c-20060530022627-2d88240b15c77135
  source/lib/system.c            system.c-20060530022627-3f01435a4e07a714
  source/lib/system_smbd.c       system_smbd.c-20060530022627-e97a2e558e6fd98c
  source/lib/util.c              util.c-20060530022627-d569af0e687a4dd3
  source/lib/util_pw.c           util_pw.c-20060530022627-912c52afc587540f
  source/lib/util_reg.c          util_reg.c-20060711181331-c2d45d0e1f4a8648
  source/lib/util_str.c          util_str.c-20060530022627-0ba87cda5eaacc2e
  source/lib/util_tdb.c          util_tdb.c-20061021025435-o3vr4t381qf9lv7e-1
  source/libads/kerberos_verify.c kerberos_verify.c-20060530022627-7ce45c38ec645075
  source/libads/ldap.c           ldap.c-20060530022627-07f10a20cc50f671
  source/libsmb/cliquota.c       cliquota.c-20060530022627-6a0c6af7c7a1799b
  source/locking/brlock.c        brlock.c-20060530022627-3b8aec140997e136
  source/locking/locking.c       locking.c-20060530022627-4f229d47402340bb
  source/locking/posix.c         posix.c-20060530022627-997d33ad43f0bd3e
  source/nmbd/nmbd.c             nmbd.c-20060530022627-f3b08abf8f3e3c36
  source/nsswitch/idmap_rid.c    idmap_rid.c-20061212152807-oje7ib8mg9u2kxxg-1
  source/nsswitch/winbind_nss.h  winbind_nss.h-20060530022627-d0c8a4c069df06f6
  source/nsswitch/winbind_nss_linux.h winbind_nss_linux.h-20060530022627-000f66c6b04b919e
  source/nsswitch/winbindd.c     winbindd.c-20060530022627-8bb76c46bd1253ec
  source/nsswitch/winbindd_ads.c winbindd_ads.c-20060530022627-7c5e13eefe48f902
  source/nsswitch/winbindd_cm.c  winbindd_cm.c-20060530022627-54b91b1c8940d29e
  source/nsswitch/winbindd_group.c winbindd_group.c-20060530022627-9288f9a998ed2fbe
  source/nsswitch/winbindd_pam.c winbindd_pam.c-20060530022627-6b827f2f7ba30f85
  source/nsswitch/winbindd_util.c winbindd_util.c-20060530022627-e014c9e53147dffe
  source/param/loadparm.c        loadparm.c-20060530022627-1efa1edb3eb0e897
  source/passdb/machine_sid.c    machine_sid.c-20060530022627-0ae56984d090a020
  source/passdb/pdb_tdb.c        pdb_tdb.c-20060530022627-b60f9dcd220e2886
  source/registry/reg_db.c       reg_db.c-20060530022627-e9a827257fb89131
  source/rpc_parse/parse_misc.c  parse_misc.c-20060530022627-2f2bf5c0060cbd6c
  source/rpc_server/srv_lsa.c    srv_lsa.c-20060530022627-81cfe5eecd61a4f2
  source/script/tests/test_local_s3.sh test_local_s3.sh-20060901130329-d2423dc033e3ea57
  source/script/tests/test_posix_s3.sh test_posix_s3.sh-20060530100742-bf4d8804f7ab56c6
  source/smbd/aio.c              aio.c-20060530065353-839ba30629e9be61
  source/smbd/blocking.c         blocking.c-20060530022627-b43dcc35e2ddb440
  source/smbd/fileio.c           fileio.c-20060530022627-1404925b99a776aa
  source/smbd/files.c            files.c-20060530022627-8e2ca5e2d798cd9b
  source/smbd/msdfs.c            msdfs.c-20060530024146-252992a3c60c990c
  source/smbd/negprot.c          negprot.c-20060530022627-a352553cf95f9931
  source/smbd/notify.c           notify.c-20060530022627-f5b19ce2772c47a0
  source/smbd/nttrans.c          nttrans.c-20060530022627-b483806ef6e0e97d
  source/smbd/password.c         password.c-20060530022627-9a5472626c6d94bc
  source/smbd/reply.c            reply.c-20060530022627-92de20342694c043
  source/smbd/sec_ctx.c          sec_ctx.c-20060530022627-5357c503c5244050
  source/smbd/server.c           server.c-20060530022627-212a418ec1144979
  source/smbd/sesssetup.c        sesssetup.c-20060530022627-0a6efae905e1529e
  source/smbd/share_access.c     share_access.c-20060530090225-6be2f147403f83a8
  source/smbd/trans2.c           trans2.c-20060530022627-7ce34cd85c3f02f5
  source/tests/summary.c         summary.c-20060530022627-e17f995a58207da2
  source/utils/ntlm_auth.c       ntlm_auth.c-20060530022628-e481af6280ebed07
    ------------------------------------------------------------
    revno: 5275.1.894
    merged: jpeach@samba.org-20070618161516-tu4uk4na2br24sq0
    parent: kai@samba.org-20070618140030-9bctt4bj05xc6azr
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-18 11:15:16 -0500
    message:
      jpeach@samba.org (r23541)  2007-06-18 11:10:00 -0500 (Mon, 18 Jun 2007)
          
          Linking the LSA pipe module only once is probably enough.
          
    ------------------------------------------------------------
    revno: 5275.1.893
    merged: kai@samba.org-20070618140030-9bctt4bj05xc6azr
    parent: vlendec@samba.org-20070618123058-nv1ac832jg69ofup
    committer: kai@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-18 09:00:30 -0500
    message:
      kai@samba.org (r23539)  2007-06-18 08:59:09 -0500 (Mon, 18 Jun 2007)
          
          Remove code duplication and unify behaviour of winbind_nss_*.h files
          
    ------------------------------------------------------------
    revno: 5275.1.892
    merged: vlendec@samba.org-20070618123058-nv1ac832jg69ofup
    parent: vlendec@samba.org-20070618093102-hatq6r284z95nyan
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-18 07:30:58 -0500
    message:
      vlendec@samba.org (r23538)  2007-06-18 07:22:42 -0500 (Mon, 18 Jun 2007)
          
          Fix for wild-card rename: We can't return directly on error, we need to
          CloseDir.
          
    ------------------------------------------------------------
    revno: 5275.1.891
    merged: vlendec@samba.org-20070618093102-hatq6r284z95nyan
    parent: obnox@samba.org-20070617231545-fyw5rtise91o9w7j
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Mon 2007-06-18 04:31:02 -0500
    message:
      vlendec@samba.org (r23537)  2007-06-18 04:25:31 -0500 (Mon, 18 Jun 2007)
          
          Revert the inbuf/outbuf part of r23528: This caused the Solaris CC make test
          to break. The Solaris CC put the static char InBuffer[TOTAL_BUFFER_SIZE] on an
          odd address, the malloc'ed one is always aligned. The problem showed up in
          pull_ucs2, ucs2_align uses the address of InBuffer as an indication whether to
          bump up the src of the string by one. Unfortunately in the trans calls the
          data portion is malloced and thus has different alignment guarantees than a
          static variable. This one is bigger....
          
          Volker
          
          
    ------------------------------------------------------------
    revno: 5275.1.890
    merged: obnox@samba.org-20070617231545-fyw5rtise91o9w7j
    parent: jra@samba.org-20070617193120-3hiw591y6rg16ezc
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-17 18:15:45 -0500
    message:
      obnox@samba.org (r23536)  2007-06-17 18:13:32 -0500 (Sun, 17 Jun 2007)
          
          Fix a typo. James: Please check!
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.889
    merged: jra@samba.org-20070617193120-3hiw591y6rg16ezc
    parent: vlendec@samba.org-20070617053037-rog8u2t4r8ihbve9
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-17 14:31:20 -0500
    message:
      jra@samba.org (r23530)  2007-06-17 14:23:32 -0500 (Sun, 17 Jun 2007)
          
          Fix bugs #4678 and #4697 which had the same root cause.
          In make_server_info_pw() we assign a user SID in our
          authoritative SAM, even though this may be from a
          pure "Unix User" that doesn't exist in the SAM.
          This causes lookups on "[in]valid users" to fail as they
          will lookup this name as a "Unix User" SID to check against
          the user token. Fix this by adding the "Unix User"\unix_username
          SID to the sid array. The correct fix should probably be
          changing the server_info->sam_account user SID to be a
          S-1-22 Unix SID, but this might break old configs where
          plaintext passwords were used with no SAM backend.
          Jeremy
          
    ------------------------------------------------------------
    revno: 5275.1.888
    merged: vlendec@samba.org-20070617053037-rog8u2t4r8ihbve9
    parent: idra@samba.org-20070616230108-ky9af5ghbqc3hk7c
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sun 2007-06-17 00:30:37 -0500
    message:
      vlendec@samba.org (r23528)  2007-06-17 00:19:30 -0500 (Sun, 17 Jun 2007)
          
          Two changes to make the valgrind massif (heap profiler) output readable:
          
          Remove the allocated inbuf/output. In async I/O we copy the buffers
          explicitly now, so NewInBuffer is called exactly once. This does not
          reduce memory footprint, but removes one of the larger chunks that
          clobber the rest of the massif output
          
          In getgroups_unix_user on Linux 2.6 we allocated 64k groups x 4 bytes
          per group x 2 (once in the routine itself and once in libc) = 512k just
          to throw it away directly again. This reduces it do a more typical limit
          of 32 groups per user. We certainly cope with overflow fine if 32 is not
          enough. Not 100% sure about this one, a DEVELOPER only thing?
          
          
    ------------------------------------------------------------
    revno: 5275.1.887
    merged: idra@samba.org-20070616230108-ky9af5ghbqc3hk7c
    parent: idra@samba.org-20070616190112-1c9pblcrus6l86l6
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 18:01:08 -0500
    message:
      idra@samba.org (r23527)  2007-06-16 17:52:51 -0500 (Sat, 16 Jun 2007)
          
          
          Use existing escaping function pointed by James
          
          
    ------------------------------------------------------------
    revno: 5275.1.886
    merged: idra@samba.org-20070616190112-1c9pblcrus6l86l6
    parent: idra@samba.org-20070616190108-f72c70pmzsevijz6
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 14:01:12 -0500
    message:
      idra@samba.org (r23525)  2007-06-16 13:59:02 -0500 (Sat, 16 Jun 2007)
          
          
          I believe this patch is ok, got no reply of it being not ok.
          This closes #4624 for me.
          
          
    ------------------------------------------------------------
    revno: 5275.1.885
    merged: idra@samba.org-20070616190108-f72c70pmzsevijz6
    parent: vlendec@samba.org-20070616183017-3e9zxs90o5rrgxb2
    committer: idra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 14:01:08 -0500
    message:
      idra@samba.org (r23524)  2007-06-16 13:54:13 -0500 (Sat, 16 Jun 2007)
          
          
          Fix bug 2319.
          Got report this is all ok form a tester. Close a loong
          standing bug preventing people to freely use any character
          in their password when printing via cups were involved.
          
          
    ------------------------------------------------------------
    revno: 5275.1.884
    merged: vlendec@samba.org-20070616183017-3e9zxs90o5rrgxb2
    parent: vlendec@samba.org-20070616181557-04268opiz301ebna
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 13:30:17 -0500
    message:
      vlendec@samba.org (r23523)  2007-06-16 13:19:42 -0500 (Sat, 16 Jun 2007)
          
          Gaa -- had renamed "name" to "path" and apparently not compiled after
          that.... 
          
          Volker
          
    ------------------------------------------------------------
    revno: 5275.1.883
    merged: vlendec@samba.org-20070616181557-04268opiz301ebna
    parent: vlendec@samba.org-20070616120139-7vern8aey2xxzbe6
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 13:15:57 -0500
    message:
      vlendec@samba.org (r23522)  2007-06-16 13:07:44 -0500 (Sat, 16 Jun 2007)
          
          Save us a kilobyte stack space in a hot code path: I can't see a reason
          why check_path_syntax should not be able to run in-line. The destination
          pointer either walks side by side with the source pointer or is
          decremented. So as far as I can see s>=d is true throughout the whole
          routine.
          
          Jeremy, I'm checking this only into 3_0 for now. Please review and ack
          or directly merge this to 3_0_26.
          
          Thanks,
          
          Volker
          
    ------------------------------------------------------------
    revno: 5275.1.882
    merged: vlendec@samba.org-20070616120139-7vern8aey2xxzbe6
    parent: vlendec@samba.org-20070616101600-pt2eawjuqrdgzd2g
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 07:01:39 -0500
    message:
      vlendec@samba.org (r23518)  2007-06-16 06:48:11 -0500 (Sat, 16 Jun 2007)
          
          Remove the silly assumption that string_replace requires a pstring.
          
          Jeremy, I am always very confused about the different length arguments
          in convert_string and friends. Can you take a look at the change in
          string_replace and verify it's ok? Thanks!
          
          While at it, remove the pstring limit for strhasupper and strhaslower.
          
          
    ------------------------------------------------------------
    revno: 5275.1.881
    merged: vlendec@samba.org-20070616101600-pt2eawjuqrdgzd2g
    parent: jra@samba.org-20070616011712-fapbx3ft47xxcfu2
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Sat 2007-06-16 05:16:00 -0500
    message:
      vlendec@samba.org (r23517)  2007-06-16 05:02:51 -0500 (Sat, 16 Jun 2007)
          
          After Jeremy has given is ack on irc:
          
          Change rename_internals to open the file/directory and then call
          rename_internals_fsp. Two reasons: Remove code duplication and remove a
          race condition. The race condition was due to the fact that in
          can_rename the share mode check closed the file and then after that did
          the rename.
          
          
          
    ------------------------------------------------------------
    revno: 5275.1.880
    merged: jra@samba.org-20070616011712-fapbx3ft47xxcfu2
    parent: jra@samba.org-20070616010115-1dxkpzvowsabr5xt
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 20:17:12 -0500
    message:
      jra@samba.org (r23516)  2007-06-15 20:04:22 -0500 (Fri, 15 Jun 2007)
          
          Fix bug found & fixed by Spie Rudoff (spie_rudoff@isilon.com)
          - when cleaning up invalid locks make sure we mark the lck
          struct as modified so it'll get saved back correctly (that
          was the original intent).
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.879
    merged: jra@samba.org-20070616010115-1dxkpzvowsabr5xt
    parent: jra@samba.org-20070616004547-3vzzbs14ar0uft2r
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 20:01:15 -0500
    message:
      jra@samba.org (r23515)  2007-06-15 19:54:58 -0500 (Fri, 15 Jun 2007)
          
          Ensure status isn't used uninitialized.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.878
    merged: jra@samba.org-20070616004547-3vzzbs14ar0uft2r
    parent: jra@samba.org-20070616000155-wjkecm4oty8nv7qr
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 19:45:47 -0500
    message:
      jra@samba.org (r23514)  2007-06-15 19:39:52 -0500 (Fri, 15 Jun 2007)
          
          Remove unused function ads_get_dn_from_extended_dn().
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.877
    merged: jra@samba.org-20070616000155-wjkecm4oty8nv7qr
    parent: jra@samba.org-20070616000150-m6n9sutdpuodroi0
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 19:01:55 -0500
    message:
      jra@samba.org (r23513)  2007-06-15 18:52:01 -0500 (Fri, 15 Jun 2007)
          
          Fix one more use of VALUE_PREFIX.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.876
    merged: jra@samba.org-20070616000150-m6n9sutdpuodroi0
    parent: jpeach@samba.org-20070615220054-9caccgvycl73bptb
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 19:01:50 -0500
    message:
      jra@samba.org (r23512)  2007-06-15 18:47:40 -0500 (Fri, 15 Jun 2007)
          
          Fix conflict in #define for SECDESC_PREFIX. Ensure all
          reg #defines use "REG_" prefix. Michael - please check
          gcc warnings on compiles.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.875
    merged: jpeach@samba.org-20070615220054-9caccgvycl73bptb
    parent: obnox@samba.org-20070615214612-ydoi6x4145yzf54a
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 17:00:54 -0500
    message:
      jpeach@samba.org (r23510)  2007-06-15 16:58:49 -0500 (Fri, 15 Jun 2007)
          
          Tidy calls to smb_panic by removing trailing newlines. Print the
          failed expression in SMB_ASSERT.
          
    ------------------------------------------------------------
    revno: 5275.1.874
    merged: obnox@samba.org-20070615214612-ydoi6x4145yzf54a
    parent: jra@samba.org-20070615193149-dp5vube4ht3dswlh
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 16:46:12 -0500
    message:
      obnox@samba.org (r23509)  2007-06-15 16:38:10 -0500 (Fri, 15 Jun 2007)
          
          This activates the global options from the registry in loadparm. 
          The global options are stored as values in the subkey "global"
          of the SMBCONF registry key. 
          
          The activation is accomplished in smb.conf though a new special 
          semantic of the "include" parameter: "include = registry" triggers
          the processing of the registry global options exactly at the
          position of the include statement. Options read from the registry
          take the same precedence as parameters loaded from a file via
          include. Need to reload the registry globals is detected by
          watching the tdb sequence number. 
          
          Registry shares are automatically activated when the registry
          globals are processed.
          
          So a "registry only" configuration can be realized by an
          smb.conf that looks as follows:
          
          ================================
          [global]
          include = registry
          ================================
          
          The global options and registry shares can be conveniently
          edited with the "net conf" utility.
          
          
          Caveat:
          
          A possible pitfall consists in using "include = registry"
          together with the "lock directory" directive in the registry.
          This problem will be addressed in the next time.
          
          
          Note on the code:
          
          Processing of the registry options is accomplished by a function
          process_registry_globals() in loadparm.c The current version is
          only an interim solution: It is handcoded instead of using the
          infrastructure of reg_api.c. The reason for this is that using 
          reg_api still has too large linker dependencies, bloating virtually
          all targets by PASSDB_OBJ, SMBLDAP_OBJ, GROUPDB_OBJ and LDB stuff.
          A version of process_registry_globals that uses reg_api is 
          included but commented out. The goal is to eventually refactor
          and restructure the registry code so that one can use the reg_api
          to access only the registry tdb and not link all the dynamic
          backends with all their linking implications.
          
          
          
    ------------------------------------------------------------
    revno: 5275.1.873
    merged: jra@samba.org-20070615193149-dp5vube4ht3dswlh
    parent: obnox@samba.org-20070615160130-5zp589uv286rwh7a
    committer: jra@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 14:31:49 -0500
    message:
      jra@samba.org (r23508)  2007-06-15 14:24:04 -0500 (Fri, 15 Jun 2007)
          
          Fix sync_file() to return NTSTATUS and return this
          on failure in the write path.
          Jeremy.
          
    ------------------------------------------------------------
    revno: 5275.1.872
    merged: obnox@samba.org-20070615160130-5zp589uv286rwh7a
    parent: obnox@samba.org-20070615104638-d4w30r295x8m4rqh
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 11:01:30 -0500
    message:
      obnox@samba.org (r23507)  2007-06-15 10:51:45 -0500 (Fri, 15 Jun 2007)
          
          Split one general function normalize_dbkey from reg_db.c into util_reg.c
          (To be used in other place in subsequent commit.)
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.871
    merged: obnox@samba.org-20070615104638-d4w30r295x8m4rqh
    parent: jpeach@samba.org-20070614190023-3pcje3oqg11s1a6i
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Fri 2007-06-15 05:46:38 -0500
    message:
      obnox@samba.org (r23504)  2007-06-15 05:40:36 -0500 (Fri, 15 Jun 2007)
          
          Use tdb_wrap_open (instead of usual tdb_open) in reg_db.
          This eliminates the need of maintaining reg_db's own 
          reference counter for the tdb. Maybe as a next step...
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.870
    merged: jpeach@samba.org-20070614190023-3pcje3oqg11s1a6i
    parent: vlendec@samba.org-20070614160053-tkasaprivhbnud3h
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 14:00:23 -0500
    message:
      jpeach@samba.org (r23502)  2007-06-14 13:48:51 -0500 (Thu, 14 Jun 2007)
          
          Restore exit-on-idle.  Small refactoring for clarity. Exit if
          we are idle and we timed out waiting for something to do.
          
    ------------------------------------------------------------
    revno: 5275.1.869
    merged: vlendec@samba.org-20070614160053-tkasaprivhbnud3h
    parent: vlendec@samba.org-20070614150123-k8obgxrl3irxs8wh
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 11:00:53 -0500
    message:
      vlendec@samba.org (r23501)  2007-06-14 10:50:47 -0500 (Thu, 14 Jun 2007)
          
          Move notify_rename before rename_internals_fsp and call it from there.
          
    ------------------------------------------------------------
    revno: 5275.1.868
    merged: vlendec@samba.org-20070614150123-k8obgxrl3irxs8wh
    parent: jerry@samba.org-20070614144600-ncf3y1qttr0ezzio
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 10:01:23 -0500
    message:
      vlendec@samba.org (r23500)  2007-06-14 09:45:37 -0500 (Thu, 14 Jun 2007)
          
          Two changes to survive the now activated test for rename_internals_fsp:
          With the target being open we have to return NT_STATUS_ACCESS_DENIED and
          root_fid != 0 leads to NT_STATUS_INVALID_PARAMETER
          
    ------------------------------------------------------------
    revno: 5275.1.867
    merged: jerry@samba.org-20070614144600-ncf3y1qttr0ezzio
    parent: jerry@samba.org-20070614141539-r8asv3s8g8q52ezm
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 09:46:00 -0500
    message:
      jerry@samba.org (r23497)  2007-06-14 09:35:29 -0500 (Thu, 14 Jun 2007)
          
          Disable building of libaddns (no defined API) and 
          libmsrpc (unmaintained).
          
          
    ------------------------------------------------------------
    revno: 5275.1.866
    merged: jerry@samba.org-20070614141539-r8asv3s8g8q52ezm
    parent: obnox@samba.org-20070614133057-gk385tmyiqoqhl9t
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 09:15:39 -0500
    message:
      jerry@samba.org (r23496)  2007-06-14 09:12:53 -0500 (Thu, 14 Jun 2007)
          
          Fix logic error in getgrnam_recv() that broke
          getgrnam() for machine and domain local groups.
          
          
    ------------------------------------------------------------
    revno: 5275.1.865
    merged: obnox@samba.org-20070614133057-gk385tmyiqoqhl9t
    parent: obnox@samba.org-20070614131541-iaz6xdj1mkqfo7pg
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 08:30:57 -0500
    message:
      obnox@samba.org (r23495)  2007-06-14 08:26:31 -0500 (Thu, 14 Jun 2007)
          
          Replace literal occurrences of libsmb/errormap.o by $(ERRORMAP_OBJ).
          
          
    ------------------------------------------------------------
    revno: 5275.1.864
    merged: obnox@samba.org-20070614131541-iaz6xdj1mkqfo7pg
    parent: obnox@samba.org-20070614123054-y1i79i43vsjqi2ey
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 08:15:41 -0500
    message:
      obnox@samba.org (r23494)  2007-06-14 08:12:32 -0500 (Thu, 14 Jun 2007)
          
          Further reduce the diff between 3_0 and 3_0_26 by some reformatting
          and rearrangements.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.863
    merged: obnox@samba.org-20070614123054-y1i79i43vsjqi2ey
    parent: vlendec@samba.org-20070614121543-df0uoenxvu27plxy
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 07:30:54 -0500
    message:
      obnox@samba.org (r23489)  2007-06-14 07:29:04 -0500 (Thu, 14 Jun 2007)
          
          (Re-)Add tdbtorture as a build target to 3_0_26.
          Add the tdbtorture test to the test script in 3_0 and 3_0_26.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.862
    merged: vlendec@samba.org-20070614121543-df0uoenxvu27plxy
    parent: obnox@samba.org-20070614113056-xuuojmavfg7p3r7e
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 07:15:43 -0500
    message:
      vlendec@samba.org (r23486)  2007-06-14 07:03:46 -0500 (Thu, 14 Jun 2007)
          
          Ok, this time with a hopefully successful make test in the right place:
          Remove two local variables
          
    ------------------------------------------------------------
    revno: 5275.1.861
    merged: obnox@samba.org-20070614113056-xuuojmavfg7p3r7e
    parent: gd@samba.org-20070614100107-3hfommejcrxfdwk4
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 06:30:56 -0500
    message:
      obnox@samba.org (r23485)  2007-06-14 06:29:35 -0500 (Thu, 14 Jun 2007)
          
          This checkin consists mostly of refactorings in preparation of the
          activation of global registry options in loadparm.c, mainly to
          extract functionality from net_conf.c to be made availabel elsewhere
          and to minimize linker dependencies. 
          
          In detail:
          
          * move functions registry_push/pull_value from lib/util_reg.c to new file 
          lib/util_reg_api.c
          
          * create a fake user token consisting of builtin administrators sid and
          se_disk_operators privilege by hand instead of using get_root_nt_token()
          to minimize linker deps for bin/net.
          
          + new function registry_create_admin_token() in new lib/util_reg_smbconf.c
          + move dup_nt_token from auth/token_util.c to new file lib/util_nttoken.c
          + adapt net_conf.c and Makefile.in accordingly. 
          
          * split lib/profiles.c into two parts: new file lib/profiles_basic.c
          takes all the low level mask manipulation and format conversion functions
          (se_priv, privset, luid). the privs array is completely hidden from
          profiles.c by adding some access-functions. some mask-functions are not 
          static anymore.
          
          Generally, SID- and LUID-related stuff that has more dependencies 
          is kept in lib/profiles.c
          
          * Move initialization of regdb from net_conf.c into a function 
          registry_init_regdb() in lib/util_reg_smbconf.c.
          
          Michael
          
          
          
          
    ------------------------------------------------------------
    revno: 5275.1.860
    merged: gd@samba.org-20070614100107-3hfommejcrxfdwk4
    parent: vlendec@samba.org-20070614100102-2uzmflpxk7yyu6j4
    committer: gd@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 05:01:07 -0500
    message:
      gd@samba.org (r23484)  2007-06-14 04:59:07 -0500 (Thu, 14 Jun 2007)
          
          When chasing AD referrals make sure to honor the base returned from the server.
          
          Guenther
          
    ------------------------------------------------------------
    revno: 5275.1.859
    merged: vlendec@samba.org-20070614100102-2uzmflpxk7yyu6j4
    parent: vlendec@samba.org-20070614100056-7lhn3ej5elyahyra
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 05:01:02 -0500
    message:
      vlendec@samba.org (r23483)  2007-06-14 04:51:13 -0500 (Thu, 14 Jun 2007)
          
          Revert 23482, I must have run 'make test' in the wrong subdir.
          
          
    ------------------------------------------------------------
    revno: 5275.1.858
    merged: vlendec@samba.org-20070614100056-7lhn3ej5elyahyra
    parent: jpeach@samba.org-20070614041525-vsotsuodiqww6v0h
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Thu 2007-06-14 05:00:56 -0500
    message:
      vlendec@samba.org (r23482)  2007-06-14 04:45:39 -0500 (Thu, 14 Jun 2007)
          
          Slightly simplify the rename code: Remove two local variables that are
          not really needed.
          
    ------------------------------------------------------------
    revno: 5275.1.857
    merged: jpeach@samba.org-20070614041525-vsotsuodiqww6v0h
    parent: jpeach@samba.org-20070614034527-e5ly2yvhdvhthinn
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 23:15:25 -0500
    message:
      jpeach@samba.org (r23480)  2007-06-13 23:00:35 -0500 (Wed, 13 Jun 2007)
          
          Fix DEVELOPER_CFLAGS quoting.
          
    ------------------------------------------------------------
    revno: 5275.1.856
    merged: jpeach@samba.org-20070614034527-e5ly2yvhdvhthinn
    parent: jerry@samba.org-20070613220056-2dowi5h53clx02fd
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 22:45:27 -0500
    message:
      jpeach@samba.org (r23478)  2007-06-13 22:38:43 -0500 (Wed, 13 Jun 2007)
          
          Change the handling of the developer CFLAGS so that they are always
          
          emited to the Makefile in the DEVELOPER_CFLAGS variable. This makes
          it easy to turn developer mode on and off without waiting for
          configure to run. The developer flags are only added to CFLAGS for
          the --enable-developer and --enable-krb5developer cases.
          
    ------------------------------------------------------------
    revno: 5275.1.855
    merged: jerry@samba.org-20070613220056-2dowi5h53clx02fd
    parent: jpeach@samba.org-20070613214516-0emd3svmvhew49x2
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 17:00:56 -0500
    message:
      jerry@samba.org (r23477)  2007-06-13 16:59:39 -0500 (Wed, 13 Jun 2007)
          
          Build farm fix: Use int rather than MIT's krb5_int32 when setting context flags.
          
          
          
    ------------------------------------------------------------
    revno: 5275.1.854
    merged: jpeach@samba.org-20070613214516-0emd3svmvhew49x2
    parent: jerry@samba.org-20070613210101-97xbtmal50a282wo
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 16:45:16 -0500
    message:
      jpeach@samba.org (r23475)  2007-06-13 16:42:31 -0500 (Wed, 13 Jun 2007)
          
          Fix the prototype for sys_broken_setgroups and log *BSD group list
          truncation a bit more verbosely.
          
    ------------------------------------------------------------
    revno: 5275.1.853
    merged: jerry@samba.org-20070613210101-97xbtmal50a282wo
    parent: jerry@samba.org-20070613204552-3qq2n35fy214a13k
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 16:01:01 -0500
    message:
      jerry@samba.org (r23474)  2007-06-13 15:49:20 -0500 (Wed, 13 Jun 2007)
          
          Here's a small patch that disables the libkrb5.so replay cache 
          when verifying a ticket from winbindd_pam.c.
          
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
          
          
    ------------------------------------------------------------
    revno: 5275.1.852
    merged: jerry@samba.org-20070613204552-3qq2n35fy214a13k
    parent: jerry@samba.org-20070613204547-g7klj1e3c6kae7z8
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 15:45:52 -0500
    message:
      jerry@samba.org (r23472)  2007-06-13 15:43:49 -0500 (Wed, 13 Jun 2007)
          
          add missing default setting for 'winbind nss info' (merge from  3.0.26)
    ------------------------------------------------------------
    revno: 5275.1.851
    merged: jerry@samba.org-20070613204547-g7klj1e3c6kae7z8
    parent: jpeach@samba.org-20070613204542-t9ugrtpd5wl4xe8b
    committer: jerry@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 15:45:47 -0500
    message:
      jerry@samba.org (r23471)  2007-06-13 15:40:54 -0500 (Wed, 13 Jun 2007)
          
          Here's a rough patch for expanding domain group membership
          in the winbindd_getgrnam() call.  Couple of comments:
          
          * Adds "winbind expand groups" parameter which defines the
          max depth winbindd will expand group members.  The default
          is the current behavior of one level of expansion.
          * The entire getrgnam() interface should be async.  I
          haven't done that.
          * Refactors the domain users hack in fill_grent_mem() into
          its own function.
          
          
          
    ------------------------------------------------------------
    revno: 5275.1.850
    merged: jpeach@samba.org-20070613204542-t9ugrtpd5wl4xe8b
    parent: vlendec@samba.org-20070613191538-614xo2hfgk0lhhvc
    committer: jpeach@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 15:45:42 -0500
    message:
      jpeach@samba.org (r23470)  2007-06-13 15:40:50 -0500 (Wed, 13 Jun 2007)
          
          Fix supplementary group list truncation for *BSD. We need to pass
          the correct group list length and only truncate to NGROUPS_MAX if
          it is too long.
          
    ------------------------------------------------------------
    revno: 5275.1.849
    merged: vlendec@samba.org-20070613191538-614xo2hfgk0lhhvc
    parent: obnox@samba.org-20070613133036-en2rebdb3pegu95q
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 14:15:38 -0500
    message:
      vlendec@samba.org (r23469)  2007-06-13 14:01:41 -0500 (Wed, 13 Jun 2007)
          
          Fix a comment
          
    ------------------------------------------------------------
    revno: 5275.1.848
    merged: obnox@samba.org-20070613133036-en2rebdb3pegu95q
    parent: vlendec@samba.org-20070613130042-9yubicg5fj6majul
    committer: obnox@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 08:30:36 -0500
    message:
      obnox@samba.org (r23468)  2007-06-13 08:15:16 -0500 (Wed, 13 Jun 2007)
          
          Open registry.tdb with sequence number.
          Add a function to retrieve the registry db sequence number.
          
          This is in preparation of loadparm integration of registry global
          smb.conf options: this will allow to detect changes in order to trigger reload.
          
          Michael
          
          
    ------------------------------------------------------------
    revno: 5275.1.847
    merged: vlendec@samba.org-20070613130042-9yubicg5fj6majul
    parent: vlendec@samba.org-20070613114544-55r66emhea667s7v
    committer: vlendec@samba.org
    branch nick: SAMBA_3_0.bzr
    timestamp: Wed 2007-06-13 08:00:42 -0500
    message:
      vlendec@samba.org (r23467)  2007-06-13 07:52:36 -0500 (Wed, 13 Jun 2007)
          
          Next little simplification: In rename_internals it's a bit pointless to
          first ask for existence of a file when we do the open_file_ntcreate in
          can_rename later on anyway. That also gets us the right error message in
          case the file is not there automatically.
          

Diff too large for email (6019 lines, the limit is 1000).

                  

Ia-�idc.8u�t,r>
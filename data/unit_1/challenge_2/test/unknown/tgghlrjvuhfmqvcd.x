From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 18 17:19:23 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ILJNL9021989
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 17:19:23 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 857CB163853
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 21:19:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from smtp-vbr2.xs4all.nl (smtp-vbr2.xs4all.nl [194.109.24.22])
	by lists.samba.org (Postfix) with ESMTP id 788EA162BCA
	for <samba-cvs@samba.org>; Mon, 18 Jun 2007 21:18:56 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr2.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5ILIsiv080796
	for <samba-cvs@samba.org>; Mon, 18 Jun 2007 23:18:54 +0200 (CEST)
	(envelope-from jelmer@vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id F3FB210381E
	for <samba-cvs@samba.org>; Mon, 18 Jun 2007 23:18:53 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id IXpEvKGLbrVB for <samba-cvs@samba.org>;
	Mon, 18 Jun 2007 23:18:19 +0200 (CEST)
Received: from ganieda.vernstok.nl (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 8A9BA10381D
	for <samba-cvs@samba.org>; Mon, 18 Jun 2007 23:18:18 +0200 (CEST)
Received: by ganieda.vernstok.nl (Postfix, from userid 1000)
	id 754C25C58B0; Mon, 18 Jun 2007 23:18:18 +0200 (CEST)
To: samba-cvs@samba.org
From: Jelmer Vernooij <jelmer@samba.org>
Message-Id: <20070618211818.754C25C58B0@ganieda.vernstok.nl>
Date: Mon, 18 Jun 2007 23:18:18 +0200 (CEST)
X-Virus-Scanned: by XS4ALL Virus Scanner
Subject: Rev 11194: Merge upstream. in
	file:///home/jelmer/bzr.samba-old/4.0-regwrite/
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

At file:///home/jelmer/bzr.samba-old/4.0-regwrite/

------------------------------------------------------------
revno: 11194
revision-id: jelmer@samba.org-20070618211731-l9oxx2wniv73urji
parent: jelmer@samba.org-20070618211530-94qthtfumeziwpyy
parent: svn-v2:23540@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
committer: Jelmer Vernooij <jelmer@samba.org>
branch nick: 4.0-regwrite
timestamp: Mon 2007-06-18 23:17:31 +0200
message:
  Merge upstream.
removed:
  source/heimdal/lib/des/        svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes
  source/heimdal/lib/des/aes.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2faes.c
  source/heimdal/lib/des/aes.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2faes.h
  source/heimdal/lib/des/bn.c    svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fbn.c
  source/heimdal/lib/des/bn.h    svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fbn.h
  source/heimdal/lib/des/des-tables.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdes%2dtables.h
  source/heimdal/lib/des/des.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdes.c
  source/heimdal/lib/des/des.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdes.h
  source/heimdal/lib/des/dh-imath.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdh%2dimath.c
  source/heimdal/lib/des/dh.c    svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdh.c
  source/heimdal/lib/des/dh.h    svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdh.h
  source/heimdal/lib/des/dsa.c   svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdsa.c
  source/heimdal/lib/des/dsa.h   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fdsa.h
  source/heimdal/lib/des/engine.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fengine.c
  source/heimdal/lib/des/engine.h svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fengine.h
  source/heimdal/lib/des/evp.c   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fevp.c
  source/heimdal/lib/des/evp.h   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fevp.h
  source/heimdal/lib/des/hash.h  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fhash.h
  source/heimdal/lib/des/hmac.c  svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fhmac.c
  source/heimdal/lib/des/hmac.h  svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fhmac.h
  source/heimdal/lib/des/imath/  svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath
  source/heimdal/lib/des/imath/LICENSE svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath%2fLICENSE
  source/heimdal/lib/des/imath/imath.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath%2fimath.c
  source/heimdal/lib/des/imath/imath.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath%2fimath.h
  source/heimdal/lib/des/imath/iprime.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath%2fiprime.c
  source/heimdal/lib/des/imath/iprime.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fimath%2fiprime.h
  source/heimdal/lib/des/md2.c   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd2.c
  source/heimdal/lib/des/md2.h   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd2.h
  source/heimdal/lib/des/md4.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd4.c
  source/heimdal/lib/des/md4.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd4.h
  source/heimdal/lib/des/md5.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd5.c
  source/heimdal/lib/des/md5.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fmd5.h
  source/heimdal/lib/des/pkcs12.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fpkcs12.c
  source/heimdal/lib/des/pkcs12.h svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fpkcs12.h
  source/heimdal/lib/des/pkcs5.c svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fpkcs5.c
  source/heimdal/lib/des/rand-unix.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frand%2dunix.c
  source/heimdal/lib/des/rand.c  svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frand.c
  source/heimdal/lib/des/rand.h  svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frand.h
  source/heimdal/lib/des/rc2.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frc2.c
  source/heimdal/lib/des/rc2.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frc2.h
  source/heimdal/lib/des/rc4.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frc4.c
  source/heimdal/lib/des/rc4.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frc4.h
  source/heimdal/lib/des/resource.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fresource.h
  source/heimdal/lib/des/rijndael-alg-fst.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frijndael%2dalg%2dfst.c
  source/heimdal/lib/des/rijndael-alg-fst.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frijndael%2dalg%2dfst.h
  source/heimdal/lib/des/rnd_keys.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frnd_keys.c
  source/heimdal/lib/des/rsa-imath.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frsa%2dimath.c
  source/heimdal/lib/des/rsa.c   svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frsa.c
  source/heimdal/lib/des/rsa.h   svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2frsa.h
  source/heimdal/lib/des/sha.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fsha.c
  source/heimdal/lib/des/sha.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fsha.h
  source/heimdal/lib/des/sha256.c svn-v2:15192@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fsha256.c
  source/heimdal/lib/des/ui.c    svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fui.c
  source/heimdal/lib/des/ui.h    svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fdes%2fui.h
  source/heimdal/lib/gssapi/gssapi.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fgssapi.h
  source/heimdal/lib/gssapi/krb5/add_oid_set_member.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fadd_oid_set_member.c
  source/heimdal/lib/gssapi/krb5/create_emtpy_oid_set.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcreate_emtpy_oid_set.c
  source/heimdal/lib/gssapi/krb5/release_oid_set.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2frelease_oid_set.c
  source/heimdal/lib/gssapi/krb5/test_oid_set_member.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2ftest_oid_set_member.c
  source/heimdal_build/hcrypto-deps.pl svn-v2:15263@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal_build%2fhcrypto%2ddeps.pl
  source/torture/nsstest.c       svn-v2:2@0c0555d6-39d7-0310-84fc-f1cc0bd64818-trunk-source%2ftorture%2fnsstest.c
  source/torture/nsstest.h       svn-v2:23403@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fnsstest.h
  source/torture/nsstest.m4      svn-v2:23403@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fnsstest.m4
added:
  source/heimdal/lib/gssapi/krb5/prf.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fprf.c
  source/heimdal/lib/gssapi/mech/context.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fcontext.c
  source/heimdal/lib/gssapi/mech/gss_oid_to_str.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_oid_to_str.c
  source/heimdal/lib/hcrypto/    svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto
  source/heimdal/lib/hcrypto/aes.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2faes.c
  source/heimdal/lib/hcrypto/aes.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2faes.h
  source/heimdal/lib/hcrypto/bn.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fbn.c
  source/heimdal/lib/hcrypto/bn.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fbn.h
  source/heimdal/lib/hcrypto/des-tables.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdes%2dtables.h
  source/heimdal/lib/hcrypto/des.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdes.c
  source/heimdal/lib/hcrypto/des.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdes.h
  source/heimdal/lib/hcrypto/dh-imath.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdh%2dimath.c
  source/heimdal/lib/hcrypto/dh.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdh.c
  source/heimdal/lib/hcrypto/dh.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdh.h
  source/heimdal/lib/hcrypto/dsa.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdsa.c
  source/heimdal/lib/hcrypto/dsa.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fdsa.h
  source/heimdal/lib/hcrypto/engine.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fengine.c
  source/heimdal/lib/hcrypto/engine.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fengine.h
  source/heimdal/lib/hcrypto/evp.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fevp.c
  source/heimdal/lib/hcrypto/evp.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fevp.h
  source/heimdal/lib/hcrypto/hash.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fhash.h
  source/heimdal/lib/hcrypto/hmac.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fhmac.c
  source/heimdal/lib/hcrypto/hmac.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fhmac.h
  source/heimdal/lib/hcrypto/imath/ svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath
  source/heimdal/lib/hcrypto/imath/LICENSE svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath%2fLICENSE
  source/heimdal/lib/hcrypto/imath/imath.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath%2fimath.c
  source/heimdal/lib/hcrypto/imath/imath.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath%2fimath.h
  source/heimdal/lib/hcrypto/imath/iprime.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath%2fiprime.c
  source/heimdal/lib/hcrypto/imath/iprime.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fimath%2fiprime.h
  source/heimdal/lib/hcrypto/md2.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd2.c
  source/heimdal/lib/hcrypto/md2.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd2.h
  source/heimdal/lib/hcrypto/md4.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd4.c
  source/heimdal/lib/hcrypto/md4.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd4.h
  source/heimdal/lib/hcrypto/md5.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd5.c
  source/heimdal/lib/hcrypto/md5.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fmd5.h
  source/heimdal/lib/hcrypto/pkcs12.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fpkcs12.c
  source/heimdal/lib/hcrypto/pkcs12.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fpkcs12.h
  source/heimdal/lib/hcrypto/pkcs5.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fpkcs5.c
  source/heimdal/lib/hcrypto/rand-egd.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frand%2degd.c
  source/heimdal/lib/hcrypto/rand-fortuna.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frand%2dfortuna.c
  source/heimdal/lib/hcrypto/rand-unix.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frand%2dunix.c
  source/heimdal/lib/hcrypto/rand.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frand.c
  source/heimdal/lib/hcrypto/rand.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frand.h
  source/heimdal/lib/hcrypto/randi.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frandi.h
  source/heimdal/lib/hcrypto/rc2.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frc2.c
  source/heimdal/lib/hcrypto/rc2.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frc2.h
  source/heimdal/lib/hcrypto/rc4.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frc4.c
  source/heimdal/lib/hcrypto/rc4.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frc4.h
  source/heimdal/lib/hcrypto/resource.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fresource.h
  source/heimdal/lib/hcrypto/rijndael-alg-fst.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frijndael%2dalg%2dfst.c
  source/heimdal/lib/hcrypto/rijndael-alg-fst.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frijndael%2dalg%2dfst.h
  source/heimdal/lib/hcrypto/rnd_keys.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frnd_keys.c
  source/heimdal/lib/hcrypto/rsa-imath.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frsa%2dimath.c
  source/heimdal/lib/hcrypto/rsa.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frsa.c
  source/heimdal/lib/hcrypto/rsa.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2frsa.h
  source/heimdal/lib/hcrypto/sha.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fsha.c
  source/heimdal/lib/hcrypto/sha.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fsha.h
  source/heimdal/lib/hcrypto/sha256.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fsha256.c
  source/heimdal/lib/hcrypto/ui.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fui.c
  source/heimdal/lib/hcrypto/ui.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhcrypto%2fui.h
  source/heimdal/lib/hx509/env.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fenv.c
  source/heimdal/lib/hx509/ks_keychain.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_keychain.c
  source/heimdal/lib/roken/rtbl.c svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2frtbl.c
  source/heimdal/lib/roken/rtbl.h svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2frtbl.h
  source/libcli/raw/rawshadow.c  svn-v2:23519@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flibcli%2fraw%2frawshadow.c
  source/nsswitch/nsstest.c      svn-v2:23481@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fnsswitch%2fnsstest.c
  source/nsswitch/nsstest.h      svn-v2:23481@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fnsswitch%2fnsstest.h
  source/nsswitch/nsstest.m4     svn-v2:23481@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fnsswitch%2fnsstest.m4
modified:
  source/auth/gensec/gensec_gssapi.c svn-v2:6113@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fauth%2fgensec%2fgensec_gssapi.c
  source/client/client.c         svn-v2:2@0c0555d6-39d7-0310-84fc-f1cc0bd64818-trunk-source%2fclient%2fclient.c
  source/configure.ac            svn-v2:15565@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fconfigure.ac
  source/dsdb/schema/schema_init.c svn-v2:20221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fdsdb%2fschema%2fschema_init.c
  source/heimdal/kdc/524.c       svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2f524.c
  source/heimdal/kdc/default_config.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fdefault_config.c
  source/heimdal/kdc/digest.c    svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fdigest.c
  source/heimdal/kdc/headers.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fheaders.h
  source/heimdal/kdc/kaserver.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkaserver.c
  source/heimdal/kdc/kdc-private.h svn-v2:12269@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkdc%2dprivate.h
  source/heimdal/kdc/kdc-protos.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkdc%2dprotos.h
  source/heimdal/kdc/kdc.h       svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkdc.h
  source/heimdal/kdc/kdc_locl.h  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkdc_locl.h
  source/heimdal/kdc/kerberos4.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkerberos4.c
  source/heimdal/kdc/kerberos5.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkerberos5.c
  source/heimdal/kdc/krb5tgs.c   svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkrb5tgs.c
  source/heimdal/kdc/kx509.c     svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fkx509.c
  source/heimdal/kdc/log.c       svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2flog.c
  source/heimdal/kdc/misc.c      svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fmisc.c
  source/heimdal/kdc/pkinit.c    svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fpkinit.c
  source/heimdal/kdc/process.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fprocess.c
  source/heimdal/kdc/rx.h        svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2frx.h
  source/heimdal/kdc/windc.c     svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fwindc.c
  source/heimdal/kdc/windc_plugin.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkdc%2fwindc_plugin.h
  source/heimdal/kuser/kinit.c   svn-v2:22191@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkuser%2fkinit.c
  source/heimdal/kuser/kuser_locl.h svn-v2:22191@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2fkuser%2fkuser_locl.h
  source/heimdal/lib/asn1/CMS.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fCMS.asn1
  source/heimdal/lib/asn1/asn1-common.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fasn1%2dcommon.h
  source/heimdal/lib/asn1/asn1_err.et svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fasn1_err.et
  source/heimdal/lib/asn1/asn1_gen.c svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fasn1_gen.c
  source/heimdal/lib/asn1/asn1_queue.h svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fasn1_queue.h
  source/heimdal/lib/asn1/canthandle.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fcanthandle.asn1
  source/heimdal/lib/asn1/der.c  svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder.c
  source/heimdal/lib/asn1/der.h  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder.h
  source/heimdal/lib/asn1/der_copy.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_copy.c
  source/heimdal/lib/asn1/der_format.c svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_format.c
  source/heimdal/lib/asn1/der_free.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_free.c
  source/heimdal/lib/asn1/der_get.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_get.c
  source/heimdal/lib/asn1/der_length.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_length.c
  source/heimdal/lib/asn1/der_locl.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_locl.h
  source/heimdal/lib/asn1/der_put.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fder_put.c
  source/heimdal/lib/asn1/digest.asn1 svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fdigest.asn1
  source/heimdal/lib/asn1/extra.c svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fextra.c
  source/heimdal/lib/asn1/gen.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen.c
  source/heimdal/lib/asn1/gen_copy.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_copy.c
  source/heimdal/lib/asn1/gen_decode.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_decode.c
  source/heimdal/lib/asn1/gen_encode.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_encode.c
  source/heimdal/lib/asn1/gen_free.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_free.c
  source/heimdal/lib/asn1/gen_glue.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_glue.c
  source/heimdal/lib/asn1/gen_length.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_length.c
  source/heimdal/lib/asn1/gen_locl.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_locl.h
  source/heimdal/lib/asn1/gen_seq.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fgen_seq.c
  source/heimdal/lib/asn1/hash.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fhash.c
  source/heimdal/lib/asn1/hash.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fhash.h
  source/heimdal/lib/asn1/k5.asn1 svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fk5.asn1
  source/heimdal/lib/asn1/kx509.asn1 svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fkx509.asn1
  source/heimdal/lib/asn1/lex.c  svn-v2:14949@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2flex.c
  source/heimdal/lib/asn1/lex.h  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2flex.h
  source/heimdal/lib/asn1/libasn1.h svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2flibasn1.h
  source/heimdal/lib/asn1/main.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fmain.c
  source/heimdal/lib/asn1/parse.c svn-v2:8307@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fparse.c
  source/heimdal/lib/asn1/parse.h svn-v2:8307@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fparse.h
  source/heimdal/lib/asn1/pkcs12.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fpkcs12.asn1
  source/heimdal/lib/asn1/pkcs8.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fpkcs8.asn1
  source/heimdal/lib/asn1/pkcs9.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fpkcs9.asn1
  source/heimdal/lib/asn1/pkinit.asn1 svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fpkinit.asn1
  source/heimdal/lib/asn1/rfc2459.asn1 svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2frfc2459.asn1
  source/heimdal/lib/asn1/symbol.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fsymbol.c
  source/heimdal/lib/asn1/symbol.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2fsymbol.h
  source/heimdal/lib/asn1/test.asn1 svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2ftest.asn1
  source/heimdal/lib/asn1/timegm.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fasn1%2ftimegm.c
  source/heimdal/lib/com_err/com_err.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fcom_err.c
  source/heimdal/lib/com_err/com_err.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fcom_err.h
  source/heimdal/lib/com_err/com_right.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fcom_right.h
  source/heimdal/lib/com_err/compile_et.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fcompile_et.c
  source/heimdal/lib/com_err/compile_et.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fcompile_et.h
  source/heimdal/lib/com_err/error.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2ferror.c
  source/heimdal/lib/com_err/lex.c svn-v2:14949@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2flex.c
  source/heimdal/lib/com_err/lex.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2flex.h
  source/heimdal/lib/com_err/parse.c svn-v2:8307@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fparse.c
  source/heimdal/lib/com_err/parse.h svn-v2:8307@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fcom_err%2fparse.h
  source/heimdal/lib/gssapi/gssapi/gssapi.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fgssapi%2fgssapi.h
  source/heimdal/lib/gssapi/gssapi/gssapi_krb5.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fgssapi%2fgssapi_krb5.h
  source/heimdal/lib/gssapi/gssapi/gssapi_spnego.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fgssapi%2fgssapi_spnego.h
  source/heimdal/lib/gssapi/gssapi_mech.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fgssapi_mech.h
  source/heimdal/lib/gssapi/krb5/8003.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2f8003.c
  source/heimdal/lib/gssapi/krb5/accept_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2faccept_sec_context.c
  source/heimdal/lib/gssapi/krb5/acquire_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2facquire_cred.c
  source/heimdal/lib/gssapi/krb5/add_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fadd_cred.c
  source/heimdal/lib/gssapi/krb5/arcfour.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2farcfour.c
  source/heimdal/lib/gssapi/krb5/canonicalize_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcanonicalize_name.c
  source/heimdal/lib/gssapi/krb5/cfx.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcfx.c
  source/heimdal/lib/gssapi/krb5/cfx.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcfx.h
  source/heimdal/lib/gssapi/krb5/compare_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcompare_name.c
  source/heimdal/lib/gssapi/krb5/compat.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcompat.c
  source/heimdal/lib/gssapi/krb5/context_time.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcontext_time.c
  source/heimdal/lib/gssapi/krb5/copy_ccache.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fcopy_ccache.c
  source/heimdal/lib/gssapi/krb5/decapsulate.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fdecapsulate.c
  source/heimdal/lib/gssapi/krb5/delete_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fdelete_sec_context.c
  source/heimdal/lib/gssapi/krb5/display_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fdisplay_name.c
  source/heimdal/lib/gssapi/krb5/display_status.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fdisplay_status.c
  source/heimdal/lib/gssapi/krb5/duplicate_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fduplicate_name.c
  source/heimdal/lib/gssapi/krb5/encapsulate.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fencapsulate.c
  source/heimdal/lib/gssapi/krb5/export_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fexport_name.c
  source/heimdal/lib/gssapi/krb5/export_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fexport_sec_context.c
  source/heimdal/lib/gssapi/krb5/external.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fexternal.c
  source/heimdal/lib/gssapi/krb5/get_mic.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fget_mic.c
  source/heimdal/lib/gssapi/krb5/gkrb5_err.et svn-v2:19681@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fgkrb5_err.et
  source/heimdal/lib/gssapi/krb5/gsskrb5-private.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fgsskrb5%2dprivate.h
  source/heimdal/lib/gssapi/krb5/gsskrb5_locl.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fgsskrb5_locl.h
  source/heimdal/lib/gssapi/krb5/import_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fimport_name.c
  source/heimdal/lib/gssapi/krb5/import_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fimport_sec_context.c
  source/heimdal/lib/gssapi/krb5/indicate_mechs.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2findicate_mechs.c
  source/heimdal/lib/gssapi/krb5/init.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finit.c
  source/heimdal/lib/gssapi/krb5/init_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finit_sec_context.c
  source/heimdal/lib/gssapi/krb5/inquire_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_context.c
  source/heimdal/lib/gssapi/krb5/inquire_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_cred.c
  source/heimdal/lib/gssapi/krb5/inquire_cred_by_mech.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_cred_by_mech.c
  source/heimdal/lib/gssapi/krb5/inquire_cred_by_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_cred_by_oid.c
  source/heimdal/lib/gssapi/krb5/inquire_mechs_for_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_mechs_for_name.c
  source/heimdal/lib/gssapi/krb5/inquire_names_for_mech.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_names_for_mech.c
  source/heimdal/lib/gssapi/krb5/inquire_sec_context_by_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2finquire_sec_context_by_oid.c
  source/heimdal/lib/gssapi/krb5/process_context_token.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fprocess_context_token.c
  source/heimdal/lib/gssapi/krb5/release_buffer.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2frelease_buffer.c
  source/heimdal/lib/gssapi/krb5/release_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2frelease_cred.c
  source/heimdal/lib/gssapi/krb5/release_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2frelease_name.c
  source/heimdal/lib/gssapi/krb5/sequence.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fsequence.c
  source/heimdal/lib/gssapi/krb5/set_cred_option.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fset_cred_option.c
  source/heimdal/lib/gssapi/krb5/set_sec_context_option.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fset_sec_context_option.c
  source/heimdal/lib/gssapi/krb5/unwrap.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2funwrap.c
  source/heimdal/lib/gssapi/krb5/verify_mic.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fverify_mic.c
  source/heimdal/lib/gssapi/krb5/wrap.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fkrb5%2fwrap.c
  source/heimdal/lib/gssapi/mech/context.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fcontext.h
  source/heimdal/lib/gssapi/mech/cred.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fcred.h
  source/heimdal/lib/gssapi/mech/gss_accept_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_accept_sec_context.c
  source/heimdal/lib/gssapi/mech/gss_acquire_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_acquire_cred.c
  source/heimdal/lib/gssapi/mech/gss_add_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_add_cred.c
  source/heimdal/lib/gssapi/mech/gss_add_oid_set_member.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_add_oid_set_member.c
  source/heimdal/lib/gssapi/mech/gss_buffer_set.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_buffer_set.c
  source/heimdal/lib/gssapi/mech/gss_canonicalize_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_canonicalize_name.c
  source/heimdal/lib/gssapi/mech/gss_compare_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_compare_name.c
  source/heimdal/lib/gssapi/mech/gss_context_time.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_context_time.c
  source/heimdal/lib/gssapi/mech/gss_create_empty_oid_set.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_create_empty_oid_set.c
  source/heimdal/lib/gssapi/mech/gss_decapsulate_token.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_decapsulate_token.c
  source/heimdal/lib/gssapi/mech/gss_delete_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_delete_sec_context.c
  source/heimdal/lib/gssapi/mech/gss_display_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_display_name.c
  source/heimdal/lib/gssapi/mech/gss_display_status.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_display_status.c
  source/heimdal/lib/gssapi/mech/gss_duplicate_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_duplicate_name.c
  source/heimdal/lib/gssapi/mech/gss_duplicate_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_duplicate_oid.c
  source/heimdal/lib/gssapi/mech/gss_encapsulate_token.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_encapsulate_token.c
  source/heimdal/lib/gssapi/mech/gss_export_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_export_name.c
  source/heimdal/lib/gssapi/mech/gss_export_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_export_sec_context.c
  source/heimdal/lib/gssapi/mech/gss_get_mic.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_get_mic.c
  source/heimdal/lib/gssapi/mech/gss_import_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_import_name.c
  source/heimdal/lib/gssapi/mech/gss_import_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_import_sec_context.c
  source/heimdal/lib/gssapi/mech/gss_indicate_mechs.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_indicate_mechs.c
  source/heimdal/lib/gssapi/mech/gss_init_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_init_sec_context.c
  source/heimdal/lib/gssapi/mech/gss_inquire_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_context.c
  source/heimdal/lib/gssapi/mech/gss_inquire_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_cred.c
  source/heimdal/lib/gssapi/mech/gss_inquire_cred_by_mech.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_cred_by_mech.c
  source/heimdal/lib/gssapi/mech/gss_inquire_cred_by_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_cred_by_oid.c
  source/heimdal/lib/gssapi/mech/gss_inquire_mechs_for_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_mechs_for_name.c
  source/heimdal/lib/gssapi/mech/gss_inquire_names_for_mech.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_names_for_mech.c
  source/heimdal/lib/gssapi/mech/gss_inquire_sec_context_by_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_inquire_sec_context_by_oid.c
  source/heimdal/lib/gssapi/mech/gss_krb5.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_krb5.c
  source/heimdal/lib/gssapi/mech/gss_mech_switch.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_mech_switch.c
  source/heimdal/lib/gssapi/mech/gss_names.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_names.c
  source/heimdal/lib/gssapi/mech/gss_oid_equal.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_oid_equal.c
  source/heimdal/lib/gssapi/mech/gss_process_context_token.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_process_context_token.c
  source/heimdal/lib/gssapi/mech/gss_release_buffer.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_release_buffer.c
  source/heimdal/lib/gssapi/mech/gss_release_cred.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_release_cred.c
  source/heimdal/lib/gssapi/mech/gss_release_name.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_release_name.c
  source/heimdal/lib/gssapi/mech/gss_release_oid.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_release_oid.c
  source/heimdal/lib/gssapi/mech/gss_release_oid_set.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_release_oid_set.c
  source/heimdal/lib/gssapi/mech/gss_seal.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_seal.c
  source/heimdal/lib/gssapi/mech/gss_set_cred_option.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_set_cred_option.c
  source/heimdal/lib/gssapi/mech/gss_set_sec_context_option.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_set_sec_context_option.c
  source/heimdal/lib/gssapi/mech/gss_sign.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_sign.c
  source/heimdal/lib/gssapi/mech/gss_test_oid_set_member.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_test_oid_set_member.c
  source/heimdal/lib/gssapi/mech/gss_unseal.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_unseal.c
  source/heimdal/lib/gssapi/mech/gss_unwrap.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_unwrap.c
  source/heimdal/lib/gssapi/mech/gss_utils.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_utils.c
  source/heimdal/lib/gssapi/mech/gss_verify.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_verify.c
  source/heimdal/lib/gssapi/mech/gss_verify_mic.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_verify_mic.c
  source/heimdal/lib/gssapi/mech/gss_wrap.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_wrap.c
  source/heimdal/lib/gssapi/mech/gss_wrap_size_limit.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgss_wrap_size_limit.c
  source/heimdal/lib/gssapi/mech/gssapi.asn1 svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fgssapi.asn1
  source/heimdal/lib/gssapi/mech/mech_locl.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fmech_locl.h
  source/heimdal/lib/gssapi/mech/mech_switch.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fmech_switch.h
  source/heimdal/lib/gssapi/mech/name.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2fname.h
  source/heimdal/lib/gssapi/mech/utils.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fmech%2futils.h
  source/heimdal/lib/gssapi/spnego/accept_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2faccept_sec_context.c
  source/heimdal/lib/gssapi/spnego/compat.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fcompat.c
  source/heimdal/lib/gssapi/spnego/context_stubs.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fcontext_stubs.c
  source/heimdal/lib/gssapi/spnego/cred_stubs.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fcred_stubs.c
  source/heimdal/lib/gssapi/spnego/external.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fexternal.c
  source/heimdal/lib/gssapi/spnego/init_sec_context.c svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2finit_sec_context.c
  source/heimdal/lib/gssapi/spnego/spnego.asn1 svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fspnego.asn1
  source/heimdal/lib/gssapi/spnego/spnego_locl.h svn-v2:19604@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fgssapi%2fspnego%2fspnego_locl.h
  source/heimdal/lib/hdb/db.c    svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fdb.c
  source/heimdal/lib/hdb/ext.c   svn-v2:9413@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fext.c
  source/heimdal/lib/hdb/hdb-protos.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb%2dprotos.h
  source/heimdal/lib/hdb/hdb.asn1 svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb.asn1
  source/heimdal/lib/hdb/hdb.c   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb.c
  source/heimdal/lib/hdb/hdb.h   svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb.h
  source/heimdal/lib/hdb/hdb_err.et svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb_err.et
  source/heimdal/lib/hdb/hdb_locl.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fhdb_locl.h
  source/heimdal/lib/hdb/keys.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fkeys.c
  source/heimdal/lib/hdb/keytab.c svn-v2:13107@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fkeytab.c
  source/heimdal/lib/hdb/mkey.c  svn-v2:9413@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fmkey.c
  source/heimdal/lib/hdb/ndbm.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhdb%2fndbm.c
  source/heimdal/lib/hx509/ca.c  svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fca.c
  source/heimdal/lib/hx509/cert.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fcert.c
  source/heimdal/lib/hx509/cms.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fcms.c
  source/heimdal/lib/hx509/collector.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fcollector.c
  source/heimdal/lib/hx509/crmf.asn1 svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fcrmf.asn1
  source/heimdal/lib/hx509/crypto.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fcrypto.c
  source/heimdal/lib/hx509/error.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2ferror.c
  source/heimdal/lib/hx509/file.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2ffile.c
  source/heimdal/lib/hx509/hx509-private.h svn-v2:20648@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fhx509%2dprivate.h
  source/heimdal/lib/hx509/hx509-protos.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fhx509%2dprotos.h
  source/heimdal/lib/hx509/hx509.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fhx509.h
  source/heimdal/lib/hx509/hx509_err.et svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fhx509_err.et
  source/heimdal/lib/hx509/hx_locl.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fhx_locl.h
  source/heimdal/lib/hx509/keyset.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fkeyset.c
  source/heimdal/lib/hx509/ks_dir.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_dir.c
  source/heimdal/lib/hx509/ks_file.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_file.c
  source/heimdal/lib/hx509/ks_mem.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_mem.c
  source/heimdal/lib/hx509/ks_null.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_null.c
  source/heimdal/lib/hx509/ks_p11.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_p11.c
  source/heimdal/lib/hx509/ks_p12.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fks_p12.c
  source/heimdal/lib/hx509/lock.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2flock.c
  source/heimdal/lib/hx509/name.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fname.c
  source/heimdal/lib/hx509/ocsp.asn1 svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2focsp.asn1
  source/heimdal/lib/hx509/peer.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fpeer.c
  source/heimdal/lib/hx509/pkcs10.asn1 svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fpkcs10.asn1
  source/heimdal/lib/hx509/print.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2fprint.c
  source/heimdal/lib/hx509/req.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2freq.c
  source/heimdal/lib/hx509/revoke.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2frevoke.c
  source/heimdal/lib/hx509/test_name.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fhx509%2ftest_name.c
  source/heimdal/lib/krb5/acache.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2facache.c
  source/heimdal/lib/krb5/add_et_list.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fadd_et_list.c
  source/heimdal/lib/krb5/addr_families.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2faddr_families.c
  source/heimdal/lib/krb5/appdefault.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fappdefault.c
  source/heimdal/lib/krb5/asn1_glue.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fasn1_glue.c
  source/heimdal/lib/krb5/auth_context.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fauth_context.c
  source/heimdal/lib/krb5/build_ap_req.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fbuild_ap_req.c
  source/heimdal/lib/krb5/build_auth.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fbuild_auth.c
  source/heimdal/lib/krb5/cache.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcache.c
  source/heimdal/lib/krb5/changepw.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fchangepw.c
  source/heimdal/lib/krb5/codec.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcodec.c
  source/heimdal/lib/krb5/config_file.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fconfig_file.c
  source/heimdal/lib/krb5/config_file_netinfo.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fconfig_file_netinfo.c
  source/heimdal/lib/krb5/constants.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fconstants.c
  source/heimdal/lib/krb5/context.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcontext.c
  source/heimdal/lib/krb5/convert_creds.c svn-v2:22191@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fconvert_creds.c
  source/heimdal/lib/krb5/copy_host_realm.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcopy_host_realm.c
  source/heimdal/lib/krb5/crc.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcrc.c
  source/heimdal/lib/krb5/creds.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcreds.c
  source/heimdal/lib/krb5/crypto.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fcrypto.c
  source/heimdal/lib/krb5/data.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fdata.c
  source/heimdal/lib/krb5/eai_to_heim_errno.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2feai_to_heim_errno.c
  source/heimdal/lib/krb5/error_string.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ferror_string.c
  source/heimdal/lib/krb5/expand_hostname.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fexpand_hostname.c
  source/heimdal/lib/krb5/fcache.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ffcache.c
  source/heimdal/lib/krb5/free.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ffree.c
  source/heimdal/lib/krb5/free_host_realm.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ffree_host_realm.c
  source/heimdal/lib/krb5/generate_seq_number.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fgenerate_seq_number.c
  source/heimdal/lib/krb5/generate_subkey.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fgenerate_subkey.c
  source/heimdal/lib/krb5/get_cred.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_cred.c
  source/heimdal/lib/krb5/get_default_principal.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_default_principal.c
  source/heimdal/lib/krb5/get_default_realm.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_default_realm.c
  source/heimdal/lib/krb5/get_for_creds.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_for_creds.c
  source/heimdal/lib/krb5/get_host_realm.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_host_realm.c
  source/heimdal/lib/krb5/get_in_tkt.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_in_tkt.c
  source/heimdal/lib/krb5/get_in_tkt_with_keytab.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_in_tkt_with_keytab.c
  source/heimdal/lib/krb5/get_port.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fget_port.c
  source/heimdal/lib/krb5/heim_err.et svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fheim_err.et
  source/heimdal/lib/krb5/heim_threads.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fheim_threads.h
  source/heimdal/lib/krb5/init_creds.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2finit_creds.c
  source/heimdal/lib/krb5/init_creds_pw.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2finit_creds_pw.c
  source/heimdal/lib/krb5/k524_err.et svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fk524_err.et
  source/heimdal/lib/krb5/kcm.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkcm.c
  source/heimdal/lib/krb5/keyblock.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeyblock.c
  source/heimdal/lib/krb5/keytab.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab.c
  source/heimdal/lib/krb5/keytab_any.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab_any.c
  source/heimdal/lib/krb5/keytab_file.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab_file.c
  source/heimdal/lib/krb5/keytab_keyfile.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab_keyfile.c
  source/heimdal/lib/krb5/keytab_krb4.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab_krb4.c
  source/heimdal/lib/krb5/keytab_memory.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkeytab_memory.c
  source/heimdal/lib/krb5/krb5-private.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5%2dprivate.h
  source/heimdal/lib/krb5/krb5-protos.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5%2dprotos.h
  source/heimdal/lib/krb5/krb5-v4compat.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5%2dv4compat.h
  source/heimdal/lib/krb5/krb5.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5.h
  source/heimdal/lib/krb5/krb5_ccapi.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5_ccapi.h
  source/heimdal/lib/krb5/krb5_err.et svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5_err.et
  source/heimdal/lib/krb5/krb5_locl.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrb5_locl.h
  source/heimdal/lib/krb5/krbhst.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fkrbhst.c
  source/heimdal/lib/krb5/locate_plugin.h svn-v2:19681@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2flocate_plugin.h
  source/heimdal/lib/krb5/log.c  svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2flog.c
  source/heimdal/lib/krb5/mcache.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmcache.c
  source/heimdal/lib/krb5/misc.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmisc.c
  source/heimdal/lib/krb5/mit_glue.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmit_glue.c
  source/heimdal/lib/krb5/mk_error.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmk_error.c
  source/heimdal/lib/krb5/mk_priv.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmk_priv.c
  source/heimdal/lib/krb5/mk_rep.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmk_rep.c
  source/heimdal/lib/krb5/mk_req.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmk_req.c
  source/heimdal/lib/krb5/mk_req_ext.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fmk_req_ext.c
  source/heimdal/lib/krb5/n-fold.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fn%2dfold.c
  source/heimdal/lib/krb5/pac.c  svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fpac.c
  source/heimdal/lib/krb5/padata.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fpadata.c
  source/heimdal/lib/krb5/pkinit.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fpkinit.c
  source/heimdal/lib/krb5/plugin.c svn-v2:19681@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fplugin.c
  source/heimdal/lib/krb5/principal.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fprincipal.c
  source/heimdal/lib/krb5/prompter_posix.c svn-v2:22191@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fprompter_posix.c
  source/heimdal/lib/krb5/rd_cred.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2frd_cred.c
  source/heimdal/lib/krb5/rd_error.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2frd_error.c
  source/heimdal/lib/krb5/rd_priv.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2frd_priv.c
  source/heimdal/lib/krb5/rd_rep.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2frd_rep.c
  source/heimdal/lib/krb5/rd_req.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2frd_req.c
  source/heimdal/lib/krb5/replay.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2freplay.c
  source/heimdal/lib/krb5/send_to_kdc.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fsend_to_kdc.c
  source/heimdal/lib/krb5/set_default_realm.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fset_default_realm.c
  source/heimdal/lib/krb5/store.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fstore.c
  source/heimdal/lib/krb5/store_emem.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fstore_emem.c
  source/heimdal/lib/krb5/store_fd.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fstore_fd.c
  source/heimdal/lib/krb5/store_mem.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fstore_mem.c
  source/heimdal/lib/krb5/ticket.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fticket.c
  source/heimdal/lib/krb5/time.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ftime.c
  source/heimdal/lib/krb5/transited.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2ftransited.c
  source/heimdal/lib/krb5/v4_glue.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fv4_glue.c
  source/heimdal/lib/krb5/version.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fversion.c
  source/heimdal/lib/krb5/warn.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fkrb5%2fwarn.c
  source/heimdal/lib/ntlm/heimntlm-protos.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fntlm%2fheimntlm%2dprotos.h
  source/heimdal/lib/ntlm/heimntlm.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fntlm%2fheimntlm.h
  source/heimdal/lib/ntlm/ntlm.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fntlm%2fntlm.c
  source/heimdal/lib/roken/base64.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fbase64.c
  source/heimdal/lib/roken/base64.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fbase64.h
  source/heimdal/lib/roken/bswap.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fbswap.c
  source/heimdal/lib/roken/closefrom.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fclosefrom.c
  source/heimdal/lib/roken/copyhostent.c svn-v2:8464@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fcopyhostent.c
  source/heimdal/lib/roken/dumpdata.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fdumpdata.c
  source/heimdal/lib/roken/ecalloc.c svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fecalloc.c
  source/heimdal/lib/roken/emalloc.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2femalloc.c
  source/heimdal/lib/roken/erealloc.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2ferealloc.c
  source/heimdal/lib/roken/estrdup.c svn-v2:9221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2festrdup.c
  source/heimdal/lib/roken/freeaddrinfo.c svn-v2:8463@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2ffreeaddrinfo.c
  source/heimdal/lib/roken/freehostent.c svn-v2:8464@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2ffreehostent.c
  source/heimdal/lib/roken/gai_strerror.c svn-v2:8463@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgai_strerror.c
  source/heimdal/lib/roken/get_window_size.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fget_window_size.c
  source/heimdal/lib/roken/getaddrinfo.c svn-v2:8463@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetaddrinfo.c
  source/heimdal/lib/roken/getarg.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetarg.c
  source/heimdal/lib/roken/getarg.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetarg.h
  source/heimdal/lib/roken/getipnodebyaddr.c svn-v2:8464@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetipnodebyaddr.c
  source/heimdal/lib/roken/getipnodebyname.c svn-v2:8464@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetipnodebyname.c
  source/heimdal/lib/roken/getnameinfo.c svn-v2:23209@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetnameinfo.c
  source/heimdal/lib/roken/getprogname.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fgetprogname.c
  source/heimdal/lib/roken/h_errno.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fh_errno.c
  source/heimdal/lib/roken/hex.c svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fhex.c
  source/heimdal/lib/roken/hex.h svn-v2:14198@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fhex.h
  source/heimdal/lib/roken/hostent_find_fqdn.c svn-v2:8464@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fhostent_find_fqdn.c
  source/heimdal/lib/roken/inet_aton.c svn-v2:9107@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2finet_aton.c
  source/heimdal/lib/roken/inet_ntop.c svn-v2:23209@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2finet_ntop.c
  source/heimdal/lib/roken/inet_pton.c svn-v2:23209@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2finet_pton.c
  source/heimdal/lib/roken/issuid.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fissuid.c
  source/heimdal/lib/roken/net_read.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fnet_read.c
  source/heimdal/lib/roken/net_write.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fnet_write.c
  source/heimdal/lib/roken/parse_bytes.h svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fparse_bytes.h
  source/heimdal/lib/roken/parse_time.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fparse_time.c
  source/heimdal/lib/roken/parse_time.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fparse_time.h
  source/heimdal/lib/roken/parse_units.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fparse_units.c
  source/heimdal/lib/roken/parse_units.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fparse_units.h
  source/heimdal/lib/roken/resolve.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fresolve.c
  source/heimdal/lib/roken/resolve.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fresolve.h
  source/heimdal/lib/roken/roken-common.h svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2froken%2dcommon.h
  source/heimdal/lib/roken/roken_gethostby.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2froken_gethostby.c
  source/heimdal/lib/roken/setprogname.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fsetprogname.c
  source/heimdal/lib/roken/signal.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fsignal.c
  source/heimdal/lib/roken/simple_exec.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fsimple_exec.c
  source/heimdal/lib/roken/socket.c svn-v2:19681@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fsocket.c
  source/heimdal/lib/roken/strcollect.c svn-v2:20640@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrcollect.c
  source/heimdal/lib/roken/strlwr.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrlwr.c
  source/heimdal/lib/roken/strpool.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrpool.c
  source/heimdal/lib/roken/strsep.c svn-v2:15155@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrsep.c
  source/heimdal/lib/roken/strsep_copy.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrsep_copy.c
  source/heimdal/lib/roken/strupr.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fstrupr.c
  source/heimdal/lib/roken/vis.c svn-v2:8302@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2froken%2fvis.c
  source/heimdal/lib/vers/print_version.c svn-v2:9680@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal%2flib%2fvers%2fprint_version.c
  source/heimdal_build/asn1_deps.pl svn-v2:8985@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal_build%2fasn1_deps.pl
  source/heimdal_build/config.mk svn-v2:7322@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fheimdal_build%2fconfig.mk
  source/kdc/hdb-ldb.c           svn-v2:7241@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fkdc%2fhdb%2dldb.c
  source/kdc/kdc.c               svn-v2:7221@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fkdc%2fkdc.c
  source/lib/socket_wrapper/socket_wrapper.c svn-v2:6139@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flib%2fsocket_wrapper%2fsocket_wrapper.c
  source/libcli/config.mk        svn-v2:1436@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flibcli%2fconfig.mk
  source/libcli/raw/interfaces.h svn-v2:13654@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flibcli%2fraw%2finterfaces.h
  source/libcli/raw/rawrequest.c svn-v2:6@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2flibcli%2fraw%2frawrequest.c
  source/nsswitch/config.mk      svn-v2:3170@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fnsswitch%2fconfig.mk
  source/param/loadparm.c        svn-v2:2@0c0555d6-39d7-0310-84fc-f1cc0bd64818-trunk-source%2fparam%2floadparm.c
  source/static_deps.mk          svn-v2:14554@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2fstatic_deps.mk
  source/torture/basic/misc.c    svn-v2:19339@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fbasic%2fmisc.c
  source/torture/config.mk       svn-v2:860@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fconfig.mk
  source/torture/nbench/nbench.c svn-v2:6@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fnbench%2fnbench.c
  source/torture/nbench/nbio.c   svn-v2:6@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fnbench%2fnbio.c
  source/torture/raw/raw.c       svn-v2:16333@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fraw%2fraw.c
  source/torture/raw/setfileinfo.c svn-v2:6@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0-source%2ftorture%2fraw%2fsetfileinfo.c
    ------------------------------------------------------------
    revno: 11140.1.1229
    revision-id: svn-v2:23540@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23535@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: ab
    timestamp: Mon 2007-06-18 14:06:04 +0000
    message:
      Continue fixing bench-readwrite. We need to initialize state->readcnt not only when file is written but at initial write as well.
    ------------------------------------------------------------
    revno: 11140.1.1228
    revision-id: svn-v2:23535@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23534@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sun 2007-06-17 21:54:11 +0000
    message:
      
      accept numeric ntstatus codes in nbench load files (ronnies wireshark
      script generates numeric codes)
    ------------------------------------------------------------
    revno: 11140.1.1227
    revision-id: svn-v2:23534@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23533@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sun 2007-06-17 20:04:57 +0000
    message:
      
      honour the targetrate even for loadfiles with timestamps
    ------------------------------------------------------------
    revno: 11140.1.1226
    revision-id: svn-v2:23533@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23532@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sun 2007-06-17 20:03:31 +0000
    message:
      
      added --option torture:targetrate=rate to target a particular
      throughput in MBytes/sec
    ------------------------------------------------------------
    revno: 11140.1.1225
    revision-id: svn-v2:23532@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23531@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sun 2007-06-17 20:02:56 +0000
    message:
      
      added lp_parm_double()
    ------------------------------------------------------------
    revno: 11140.1.1224
    revision-id: svn-v2:23531@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23529@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sun 2007-06-17 19:35:00 +0000
    message:
      
      added optional latency reporting in BENCH-NBENCH. To use it, you need
      to have a load file that puts a timestamp in the first column. That
      tells NBENCH to target the same throughput as the capture, and to
      report the maximum amount of latency miss in the test
      
      This allows you to quickly see how many clients you can run with while
      still meeting a given target
    ------------------------------------------------------------
    revno: 11140.1.1223
    revision-id: svn-v2:23529@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23521@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: ab
    timestamp: Sun 2007-06-17 16:46:44 +0000
    message:
      When using READX, fill in readx fields. Thanks to Metze for spotting it.
    ------------------------------------------------------------
    revno: 11140.1.1222
    revision-id: svn-v2:23521@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23520@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sat 2007-06-16 17:54:36 +0000
    message:
      
      NT_STATUS_OBJECT_NAME_NOT_FOUND is not an error either
    ------------------------------------------------------------
    revno: 11140.1.1221
    revision-id: svn-v2:23520@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23519@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sat 2007-06-16 17:14:02 +0000
    message:
      
      display shadow copy information in 'allinfo'
    ------------------------------------------------------------
    revno: 11140.1.1220
    revision-id: svn-v2:23519@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23506@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: tridge
    timestamp: Sat 2007-06-16 17:13:42 +0000
    message:
      
      added libcli code for fetching shadow copy information
    ------------------------------------------------------------
    revno: 11140.1.1219
    revision-id: svn-v2:23506@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23505@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: ab
    timestamp: Fri 2007-06-15 12:23:14 +0000
    message:
      Turn back to RAW_READ_READ because buildfarm fails. Investigating.
    ------------------------------------------------------------
    revno: 11140.1.1218
    revision-id: svn-v2:23505@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23503@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: ab
    timestamp: Fri 2007-06-15 11:16:19 +0000
    message:
      Use RAW_READ_READX, not RAW_READ_READ in BENCH-READWRITE test (we already write with RAW_WRITE_WRITEX). Noticed by Gomati Mohanan
    ------------------------------------------------------------
    revno: 11140.1.1217
    revision-id: svn-v2:23503@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23493@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: abartlet
    timestamp: Fri 2007-06-15 00:14:11 +0000
    message:
      use hdb_dbc not hdb_openp.
      
      Andrew Bartlett
    ------------------------------------------------------------
    revno: 11140.1.1216
    revision-id: svn-v2:23493@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23492@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Thu 2007-06-14 13:02:55 +0000
    message:
      regenerate lex.c files with flex 2.5.33
      this makes sure we include config.h as first header
      
      hopefully fixes the build on SerNet-aix
      
      metze
    ------------------------------------------------------------
    revno: 11140.1.1215
    revision-id: svn-v2:23492@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23491@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: vlendec
    timestamp: Thu 2007-06-14 13:02:31 +0000
    message:
      Also activate the split out test...
    ------------------------------------------------------------
    revno: 11140.1.1214
    revision-id: svn-v2:23491@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23490@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: vlendec
    timestamp: Thu 2007-06-14 13:01:58 +0000
    message:
      Split out the RENAME trans2 call into a separate test
    ------------------------------------------------------------
    revno: 11140.1.1213
    revision-id: svn-v2:23490@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23488@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Thu 2007-06-14 12:33:40 +0000
    message:
      try to fix the build without automatic dependencies
      
      metze
    ------------------------------------------------------------
    revno: 11140.1.1212
    revision-id: svn-v2:23488@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23487@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Thu 2007-06-14 12:19:53 +0000
    message:
      hdb_openp has changed from void * to int...
      
      lha: what is the reason for this? it's really bad to use
           an int for storing a pointer value...
      
      metze
    ------------------------------------------------------------
    revno: 11140.1.1211
    revision-id: svn-v2:23487@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23481@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Thu 2007-06-14 12:05:08 +0000
    message:
      fix the build with automatic dependencies
      
      metze
    ------------------------------------------------------------
    revno: 11140.1.1210
    revision-id: svn-v2:23481@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: kai
    timestamp: Thu 2007-06-14 06:05:27 +0000
    message:
      As per metze's suggestion, move the nsstest files from torture/ to nsswitch/
    ------------------------------------------------------------
    revno: 11140.1.1209
    revision-id: svn-v2:23456@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23455@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: abartlet
    timestamp: Wed 2007-06-13 05:44:24 +0000
    message:
      Update Samba4 to current lorikeet-heimdal.
      
      Andrew Bartlett
    ------------------------------------------------------------
    revno: 11140.1.1208
    revision-id: svn-v2:23455@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23420@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: abartlet
    timestamp: Wed 2007-06-13 05:14:00 +0000
    message:
      These buffers may not be null terminated. Ensure we don't run past the
      end of teh buffer printing the error strings.
      
      Andrew Bartlett
    ------------------------------------------------------------
    revno: 11140.1.1207
    revision-id: svn-v2:23420@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23419@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Mon 2007-06-11 14:41:14 +0000
    message:
      try to make the IBM checker happy
      
      metze
    ------------------------------------------------------------
    revno: 11140.1.1206
    revision-id: svn-v2:23419@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    parent: svn-v2:23418@0c0555d6-39d7-0310-84fc-f1cc0bd64818-branches%2fSAMBA_4_0
    committer: metze
    timestamp: Mon 2007-06-11 14:40:23 +0000
    message:
      initialize variable...
      
      metze

Diff too large for email (53733 lines, the limit is 1000).

                 

iii3+s/
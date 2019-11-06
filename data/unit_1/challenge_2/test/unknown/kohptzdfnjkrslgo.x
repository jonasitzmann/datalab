From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jul  5 09:23:15 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65DNFL9026532
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 09:23:15 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id F3AD81639DB
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  5 Jul 2007 13:23:10 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=3.8 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12, RCVD_IN_DSBL, SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 4B994162C26
	for <samba-cvs@samba.org>; Thu,  5 Jul 2007 13:22:18 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id BB02620C54C; Thu,  5 Jul 2007 15:22:16 +0200 (CEST)
Message-ID: <468C979D.9030403@samba.org>
Date: Thu, 05 Jul 2007 09:02:53 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: samba-technical@lists.samba.org
References: <20070705030659.CF38C162C44@lists.samba.org>
In-Reply-To: <20070705030659.CF38C162C44@lists.samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23718 -
 in	branches/SAMBA_4_0/source/dsdb/samdb/ldb_modules: .
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

abartlet@samba.org schrieb:
> Author: abartlet
> Date: 2007-07-05 03:06:59 +0000 (Thu, 05 Jul 2007)
> New Revision: 23718
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23718
> 
> Log:
> Make Samba4 work against the LDAP backend again. 
> 
> When we set up the schema, we don't have a partitions container yet.
> The LDAP error differs from that given by LDB, so I think we still
> have some conformance work to do.

yes, the problem is that ldb_tdb returns just 0 search results, but
success when the basedn isn't present. And it realy should return
LDB_ERR_NO_SUCH_OBJECT in this case, but we have too many code not
checking for LDB_ERR_NO_SUCH_OBJECT, so that we would break a lot
if we would let ldb_tdb return LDB_ERR_NO_SUCH_OBJECT.

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGjJedm70gjA5TCD8RAvtzAKCCgnVcVwcFP3V1pz+wjU2bINpinQCfbEsR
3KRfSGvVt6vZLGomR1TCy3E=
=F/Na
-----END PGP SIGNATURE-----

        

y	05<"nG,Aa35
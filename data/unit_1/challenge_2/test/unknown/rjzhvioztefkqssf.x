From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 14:01:09 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QI19L9014816
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 14:01:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A62501639C9
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 18:01:06 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 89AEE163855
	for <samba-cvs@samba.org>; Tue, 26 Jun 2007 18:00:00 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id B7EBE20C54C; Tue, 26 Jun 2007 19:58:57 +0200 (CEST)
Message-ID: <4681540B.9030800@samba.org>
Date: Tue, 26 Jun 2007 19:59:39 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: samba-technical@lists.samba.org
References: <20070621051414.3B91B162AD8@lists.samba.org>
In-Reply-To: <20070621051414.3B91B162AD8@lists.samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23558 - in branches/SAMBA_4_0/testprogs/ejs:
 .
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
> Date: 2007-06-21 05:14:13 +0000 (Thu, 21 Jun 2007)
> New Revision: 23558
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23558
> 
> Log:
> MMC seems to ask for this, so I think we need to include it in our schema.
> 
> Andrew Bartlett
> 
> Modified:
>    branches/SAMBA_4_0/testprogs/ejs/minschema.js
> 
> 
> Changeset:
> Modified: branches/SAMBA_4_0/testprogs/ejs/minschema.js
> ===================================================================
> --- branches/SAMBA_4_0/testprogs/ejs/minschema.js	2007-06-21 01:28:33 UTC (rev 23557)
> +++ branches/SAMBA_4_0/testprogs/ejs/minschema.js	2007-06-21 05:14:13 UTC (rev 23558)
> @@ -73,6 +73,7 @@
>  			"subClassOf",
>  			"governsID",
>  			"possSuperiors",
> +                        "possibleInferiors",

this attribute is constructed and we should generate it instead of store
it...

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGgVQLm70gjA5TCD8RAkaIAKCgkPE3U8E/eQ93PXJM3onKWxABnACg0mLx
iEQ/+7wVOBr+HFrH8PSL+R8=
=JTDS
-----END PGP SIGNATURE-----

            

sbrpry
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 08:38:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62CcmL9013695
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 08:38:48 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 8935F163985
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 12:38:44 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 07ABD162ADF;
	Mon,  2 Jul 2007 12:38:17 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 860102F1FD;
	Mon,  2 Jul 2007 07:38:16 -0500 (CDT)
Message-ID: <4688F1B8.2060301@samba.org>
Date: Mon, 02 Jul 2007 07:38:16 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: gd@samba.org
References: <20070702094619.3359A162AD8@lists.samba.org>
In-Reply-To: <20070702094619.3359A162AD8@lists.samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23672 - in branches:
 SAMBA_3_0/source/nsswitch SAMBA_3_0_26/source/nsswitch
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

gd@samba.org wrote:
> Author: gd
> Date: 2007-07-02 09:46:18 +0000 (Mon, 02 Jul 2007)
> New Revision: 23672
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23672
> 
> Log:
> Allow msrpc_name_to_sid() to be called without a domain_name and just a name.

Guenther, If this was to allow name2sid to resolve a UPN, you
need to be careful since the cache name2sid method will store
the forward and reverse mappings when you really only want the
UPN -> SID mapping stored and allow the SID to always resolve
back to DOMAIN\name and not name@REALM.





cheers, jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGiPG4IR7qMdg1EfYRAiBsAJ0ZaeF9du43PxFGarfkw6XKfWE2LgCgxhN7
h5ChzVyLLEnN0q6Q22Qjsrw=
=CPWW
-----END PGP SIGNATURE-----

     

t8 e ta
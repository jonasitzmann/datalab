From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 09:47:47 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54DllhB028589
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 09:47:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6F3CE163979
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 13:47:41 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_BLARS_RBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id B472F162AC1;
	Mon,  4 Jun 2007 13:47:21 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 0F5622F1F2;
	Mon,  4 Jun 2007 08:47:20 -0500 (CDT)
Message-ID: <466417EB.30206@samba.org>
Date: Mon, 04 Jun 2007 08:47:23 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Michael Adam <ma@sernet.de>
References: <20070604104048.8504C162AF7@lists.samba.org>
	<46640C66.9070109@samba.org> <E1HvCbl-0000j1-CD@intern.SerNet.DE>
In-Reply-To: <E1HvCbl-0000j1-CD@intern.SerNet.DE>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Volker Lendecke <Volker.Lendecke@sernet.de>,
   samba-technical@lists.samba.org, kseeger@samba.org
Subject: Re: svn commit: samba-docs r1120 - in trunk/smbdotconf/winbind: .
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

Michael Adam wrote:

> For my taste, _all_ options that can be used in smb.conf
> should also be listed in the smb.conf(5) manpager, possibly
> marked winbindd or whatever appropriate. 
> 
> But I understand smb.conf(5) a the compendium for all options.

My main objection is that by this philosophy you would have
to include all of the various VFS and imap plugin options as
well.





cheers, jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGZBfrIR7qMdg1EfYRAsf8AJ0Q4ANyQrdEGSN/IDLcHawe1cN10QCePhmJ
RLbWPhwl4GEVFRguf1UgKhI=
=7OyZ
-----END PGP SIGNATURE-----

        

>  ola.
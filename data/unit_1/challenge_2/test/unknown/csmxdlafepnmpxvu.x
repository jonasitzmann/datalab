From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 16:07:54 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63K7sL9000805
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 16:07:54 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 14D62163851
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 20:07:50 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL,UPPERCASE_25_50 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id E197D162AC0;
	Tue,  3 Jul 2007 20:07:22 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 6B0142F272;
	Tue,  3 Jul 2007 15:07:22 -0500 (CDT)
Message-ID: <468AAC7A.8070106@samba.org>
Date: Tue, 03 Jul 2007 15:07:22 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: James Peach <jpeach@samba.org>
References: <20070703195504.D0A88162AC0@lists.samba.org>
	<182DBC42-BCD0-49FD-84A7-1BB9695DE24E@samba.org>
In-Reply-To: <182DBC42-BCD0-49FD-84A7-1BB9695DE24E@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23689 - in branches/SAMBA_3_0/source: .
	exports
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

James Peach wrote:

>> +SHLD_DSO = $(SHLD) $(LDSHFLAGS) $(DSO_EXPORTS)
> 
> You should be able to make this
> 
> SHLD_DSO = $(SHLD) $(LDSHFLAGS) $(LDFLAGS) $(DSO_EXPORTS) -o $@

I know.  It was just personal preference to leave the -o
option in the target line.  I don't know why except it
made the line read better to me.  But if you or someone
else feel strongly about it, I'll defer.






cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGiqx6IR7qMdg1EfYRAqEMAKC56lvHB+vzXinVq+Y55d00OlhYdgCeMHXO
5BpM1/ZjD/n1ZH7W+g13sDo=
=aNgT
-----END PGP SIGNATURE-----



TgTNdean[
o
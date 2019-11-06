From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 30 18:51:56 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UMpuL9012615
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 18:51:56 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id B0AED163862
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 22:51:52 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 38BBE162BDC;
	Sat, 30 Jun 2007 22:50:55 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id BFE2A2F1D1;
	Sat, 30 Jun 2007 17:50:54 -0500 (CDT)
Message-ID: <4686DE4E.8080804@samba.org>
Date: Sat, 30 Jun 2007 17:50:54 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <11832417882495-git-send-email-jerry@samba.org>	
	<1183242652.2895.232.camel@localhost.localdomain>	
	<4686DB8E.2080409@samba.org>
	<1183243352.2895.235.camel@localhost.localdomain>
In-Reply-To: <1183243352.2895.235.camel@localhost.localdomain>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: gd@samba.org, jra@samba.org, samba-technical@samba.org
Subject: Re: [PATCH] Implement simple means of supporting pam_winbind UPN
 logins.
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

Simo,

> Ok, but in this case, why don't you simply pass the 
> unresolved name to winbind_auth_request() and let winbindd
> resolve internally the name? I am not a fan of doing
> stuff on the "client" side of the fence.

Much bigger change.  See Gunther's original patch.

What is your technical objection to the upn->sid->name
conversion?  Not "being a fan" is too vague.

IMO the client side is the perfect place to do much of
this stuff and if "winbind use default domain" had been in
the client code to begin with, winbindd itself would have
had many fewer bugs wrt to name translation.

Also doing combination operations like this prevent the
winbindd API from inheriting esoteric calls.  Why add a
new call to the API when you can write a wrapper around
to existing calls.  Given that pam_winbind is not
performance critical, as long as we don't introduce
inappropriate delays, this should be fine.






cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGht5OIR7qMdg1EfYRAo4BAKCFC+XmXDRIcwZrT49DDKF13VrtmgCff10S
OCHyeCcXQtFyyoz3Gytyg5o=
=2c0D
-----END PGP SIGNATURE-----

   

l0 lO AeSa<d i
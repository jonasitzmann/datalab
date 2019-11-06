From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 05:57:31 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l569vUhB020039
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 05:57:30 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 520FB1638B7
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 09:57:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 558CC162ACC
	for <samba-technical@lists.samba.org>;
	Wed,  6 Jun 2007 09:56:37 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id E815420C54C; Wed,  6 Jun 2007 11:55:53 +0200 (CEST)
Message-ID: <466684DA.6010105@samba.org>
Date: Wed, 06 Jun 2007 11:56:42 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: tridge@samba.org
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>	<1180906540.24923.198.camel@localhost.localdomain>	<46636B0C.2030202@samba.org>	<1180928372.24923.238.camel@localhost.localdomain>	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>	<18021.64361.164851.672386@samba.org>	<5A8F8CFA-D862-4C8D-8134-A88913D85DED@samba.org>	<Pine.LNX.4.64.0706052130040.22014@dolby.south.ad.plainjoe.org>	<18022.10164.545376.678905@samba.org>	<1181120497.22989.7.camel@henriknordstrom.net>
	<18022.32796.218979.239891@samba.org>
In-Reply-To: <18022.32796.218979.239891@samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: Samba Technical <samba-technical@lists.samba.org>,
   Henrik Nordstrom <henrik@henriknordstrom.net>
Subject: Re: getting rid of mkproto.sh from Samba3
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

tridge@samba.org schrieb:
> Henrik,
> 
>  > gcc -Wmissing-prototypes
>  > 
>  > a gcc option every programmer should use.
> 
> that looks very useful, thanks!
> 
> hmm, strangely enough, we have a check for it in check_cc.m4, but its
> commented out. Metze or Jelmer, do you happen to know why its
> disabled?

Maybe they produced to much noise when I tried them so that new warnings
from the other flags would not be noticed because of this noise.
I added them disabled to remind me to enable them when I have time to
also fix the warnings.

I'm currently looking at them again and will may enable them
and also add some others we don't have yet...

metze

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGZoTZm70gjA5TCD8RAmigAKCO5zF6hwi58m4z+zlCSUf+OSWwdgCgprDD
Uy9VpbDcjPrUrVvKq+CNCQE=
=T0/P
-----END PGP SIGNATURE-----

             

a sn
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 14 08:28:05 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ECS4L9021359
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 08:28:05 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E4D3E1639CF
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 12:28:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL,UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 0AD03162AC0;
	Thu, 14 Jun 2007 12:27:19 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 19ADA20C54C; Thu, 14 Jun 2007 14:26:29 +0200 (CEST)
Message-ID: <4671340B.1080106@samba.org>
Date: Thu, 14 Jun 2007 14:26:51 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: =?UTF-8?B?TG92ZSBIw7ZybnF1aXN0IMOFc3RyYW5k?= <lha@kth.se>,
   Andrew Bartlett <abartlet@samba.org>,
   Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: krb5_abortx()
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

Hi Love, hi Andrew,

I just noticed we panic on some older platforms
(HP-UX and Solaris) because seed_something() in
krb5_generate_random_block() fails, it would be cool
if this could be fixed...

metze

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGcTQLm70gjA5TCD8RAvCrAKDFQGFaP8jj1FLH7TDjr9JylrQi8QCeOb2L
0CB985IyXTfQWGwAimnXzDc=
=K1hK
-----END PGP SIGNATURE-----

            

-C	et.
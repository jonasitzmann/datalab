From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 03:40:08 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l547e6hB024835
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 03:40:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 183F216387B
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 07:40:00 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.8 tests=AWL,BAYES_00,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 31405162AF7;
	Mon,  4 Jun 2007 07:39:28 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 2A97A20C54C; Mon,  4 Jun 2007 09:38:45 +0200 (CEST)
Message-ID: <4663C1B6.4050002@samba.org>
Date: Mon, 04 Jun 2007 09:39:34 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: "Christopher R. Hertel" <crh@ubiqx.mn.org>
References: <517eb05c0705271430q471246a9jac9cd62775dafc2c@mail.gmail.com>		<18010.6363.787216.619457@samba.org>		<517eb05c0705271903k720873a1hee666908f8977e00@mail.gmail.com>		<465A51D4.70503@ubiqx.mn.org>		<c9a3e4540706030001m1499fd91ub98b2b097de195@mail.gmail.com>		<466312ED.3060309@ubiqx.mn.org>	<18019.13041.277110.609886@samba.org>		<4663608B.3040103@ubiqx.mn.org>	<c9a3e4540706031843s300fd456vdd762967b3528aa7@mail.gmail.com>
	<46639739.1040102@ubiqx.mn.org>
In-Reply-To: <46639739.1040102@ubiqx.mn.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: tridge@samba.org, samba-technical@samba.org
Subject: Re: first swipe at ctdb spec file
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

Christopher R. Hertel schrieb:
> ronnie sahlberg wrote:
>> There is currently no pCIFS   so I "took" the name. :-)
> 
> Hmmm...
> 
> It's a good name to take, but...
> - I think it'll cause some people to confuse the behavior of your pCIFS
>   with that of pNFS.
> - As I mentioned, Peter Bram did put out something (a proposal, at least)
>   using the name pCIFS.  People in the pNFS community are using the name
>   pCIFS when they talk about something that'd behave like pNFS.
> 
> As with the "Samba" name, my guess is that something better will come along.

I think it should be cCIFS "Clustered IFS"...

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGY8G1m70gjA5TCD8RAmyZAKCCmeomfoqlYofLqxGYufp0PUaCJwCgo3Ht
G2AnKLOFEzoq4i6YiA44JBc=
=D5Xq
-----END PGP SIGNATURE-----

               

D@sL
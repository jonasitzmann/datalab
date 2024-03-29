From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 09:59:28 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56DxRhB022282
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 09:59:27 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 85FD9163B8F
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 13:59:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id EC04D163895
	for <samba-technical@lists.samba.org>;
	Wed,  6 Jun 2007 13:58:43 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 3C6AB20C54C; Wed,  6 Jun 2007 15:58:00 +0200 (CEST)
Message-ID: <4666BD99.90307@samba.org>
Date: Wed, 06 Jun 2007 15:58:49 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: Volker.Lendecke@SerNet.DE
References: <1180928372.24923.238.camel@localhost.localdomain>	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>	<18021.64361.164851.672386@samba.org>	<5A8F8CFA-D862-4C8D-8134-A88913D85DED@samba.org>	<Pine.LNX.4.64.0706052130040.22014@dolby.south.ad.plainjoe.org>	<18022.10164.545376.678905@samba.org>
	<46662AD0.50301@samba.org>	<18022.12332.550130.866023@samba.org>
	<4666A3D3.5070009@samba.org>	<18022.43695.79583.817856@samba.org>
	<E1Hvuzt-0005is-M0@intern.SerNet.DE>
In-Reply-To: <E1Hvuzt-0005is-M0@intern.SerNet.DE>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, tridge@samba.org,
   samba-technical@lists.samba.org
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

Volker Lendecke schrieb:
> On Wed, Jun 06, 2007 at 10:38:07PM +1000, tridge@samba.org wrote:
>> nope. If we do it manually we will screw up, just like every other C
>> project has screwed it up. Maybe there is a perfect team of
>> programmers somewhere in the world, but we are not it. It's not
>> philosphy to realise that we are fallible.
> 
> I can certainly only speak for me, but for the ctdb protocol
> wrapper for S3 I coded up the attached little packet
> wrapper. It has helped me immensly to be forced to manually
> write down the header file in getting the abstraction in
> place.

Yes, it is always good to define the interface before doing the coding!
I typically do something like this but with structure hierachies in
within a header file or start like you've done but within a C file
returning NT_STATUS_NOT_IMPLEMENTED in the function bodies.
And when a sample caller of the API has all it needs I start
filling the function bodies.

The main thing I would like a tool for is syncing the header file with
the source file (it can be a manual called script), because syncing
prototypes and comments by hand is real pain and only lead to bugs...

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGZr2Zm70gjA5TCD8RAq1uAKDD9kf0X1nELU1R+p1898vW7rYdEwCeIeBh
ImuY7gvPt5zMEmnfMW2n1GA=
=C7sq
-----END PGP SIGNATURE-----

                   

beest e
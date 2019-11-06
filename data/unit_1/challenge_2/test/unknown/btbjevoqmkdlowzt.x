From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun  3 21:30:52 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l541UphB021709
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 21:30:51 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 172C7162AED
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 01:30:46 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_BLARS_RBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 7169C162AC5;
	Mon,  4 Jun 2007 01:29:51 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id EE1902F23E;
	Sun,  3 Jun 2007 20:29:50 -0500 (CDT)
Message-ID: <46636B0C.2030202@samba.org>
Date: Sun, 03 Jun 2007 20:29:48 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>
	<1180906540.24923.198.camel@localhost.localdomain>
In-Reply-To: <1180906540.24923.198.camel@localhost.localdomain>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
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

Simo,

> On Sun, 2007-06-03 at 14:31 -0700, James Peach wrote:
>> Hi all,
>>
>> Is there any interest in moving Samba3 from generated prototypes to  
>> static headers. ie. getting rid of mkproto.sh and "make headers"? I'd  
>> like to start doing a bit of work in this area, but I don't want to  
>> upset anyone if there's a lot of love out there for generated  
>> prototypes ...
> 
> If that means you can come out with another method to 
> avoid changing .h files by hand, then you are welcome.
> Otherwise I think it would just be a step back I really 
> don't see the need for.

mkproto.sh promotes lazing programming, leads to bad interfaces
and to monolithic code.

We should all suffer the pain of change *.h and *.c when
change an interface.  I strongly agree with James on this one
since it was already on my list of things to work on.





cheers, jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGY2sMIR7qMdg1EfYRAokCAJ4zDXWhzii78CuqZYw3xu2rCrccMQCg6j2V
f0dkybSKMJwGjKp6kkQrw9k=
=cZtB
-----END PGP SIGNATURE-----

     

r:3vaQSy
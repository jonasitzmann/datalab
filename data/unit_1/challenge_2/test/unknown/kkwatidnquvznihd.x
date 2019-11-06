From sugar-bounces@lists.laptop.org  Tue Jun 12 03:35:50 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C7ZoL9023607
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 03:35:50 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 9836458BC7D4;
	Tue, 12 Jun 2007 03:35:24 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 5FF7358BC7DD; Tue, 12 Jun 2007 03:35:23 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 5E3F158BC7D4
	for <sugar@laptop.org>; Tue, 12 Jun 2007 03:35:23 -0400 (EDT)
X-ASG-Debug-ID: 1181633747-78d6000a0000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: alnrmhc16.comcast.net[206.18.177.56]
X-Barracuda-Start-Time: 1181633747
Received: from alnrmhc16.comcast.net (alnrmhc16.comcast.net [206.18.177.56])
	by spam.laptop.org (Spam Firewall) with ESMTP id 5329915BAB
	for <sugar@laptop.org>; Tue, 12 Jun 2007 03:35:47 -0400 (EDT)
Received: from beast.coderanger.net
	(c-65-96-210-168.hsd1.ma.comcast.net[65.96.210.168])
	by comcast.net (alnrmhc16) with ESMTP
	id <20070612073546b1600gbc4ve>; Tue, 12 Jun 2007 07:35:46 +0000
Received: from [192.168.1.121] (ang.coderanger.net [192.168.1.121])
	by beast.coderanger.net (Postfix) with ESMTP id 2002B2B8067;
	Mon, 11 Jun 2007 23:35:47 -0400 (EDT)
Message-ID: <466E4C77.8020907@rpi.edu>
Date: Tue, 12 Jun 2007 03:34:15 -0400
From: Noah Kantrowitz <kantrn@rpi.edu>
User-Agent: Thunderbird 1.5.0.10 (Macintosh/20070221)
MIME-Version: 1.0
To: Simon Schamijer <simon@schampijer.de>, sugar@laptop.org
X-ASG-Orig-Subj: Re: [sugar] olpc-games osc protocol
References: <466D2CA8.7080703@schampijer.de>
In-Reply-To: <466D2CA8.7080703@schampijer.de>
X-Enigmail-Version: 0.94.3.0
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0001 1.0000 -2.0202
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19684
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: [sugar] olpc-games osc protocol
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0617044928580541312=="
Mime-version: 1.0
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0617044928580541312==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigAEF927F35578D620F7B26241"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigAEF927F35578D620F7B26241
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Simon Schamijer wrote:
> Hi,
>
> memosono is using the osc protocol=20
> (http://opensoundcontrol.org/spec-1_0) to communicate with the game=20
> server and to talk to the csound server. I think it is an easy to use=20
> protocol and maybe some other games or activities want to use it as wel=
l.
>
> An osc message consists of an OSC address pattern (a path) followed by =

> an OSC type tag string followed by zero or more OSC arguments.
>
> '/MEMOSONO/test', 'ifs', [1, 3.4, 'test']
>
> osc is callback based. On the receiver side the osc path and the type=20
> tag is used to dispatch the right callback.
>
> A python implementation of the osc protocol and a basic api for=20
> receiving and sending osc messages can be found in the memosono tree in=
=20
> the osc folder. There exist python bindings for the osc library liblo a=
s=20
> well (http://das.nasophon.de/pyliblo/).
>
>  =20
What is the benefit of using this instead of SDL_mixer (as exposed
through pygame.mixer)? Most games have no need to deal with a remote
sound daemon, so I see no actual reason to use this.

--Noah


--------------enigAEF927F35578D620F7B26241
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (Darwin)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGbkx3A9fEp2eRsU8RAqlyAKD2g0FYr0jzY/zafUgcNHMnAPjg0gCg5kmY
rjiscmryO7jdzW4juHiqKes=
=xAqg
-----END PGP SIGNATURE-----

--------------enigAEF927F35578D620F7B26241--

--===============0617044928580541312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

--===============0617044928580541312==--

            

yh.LI
From sugar-bounces@lists.laptop.org  Mon Jun 11 08:07:20 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BC7JL9013684
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 08:07:19 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 0240158BC7C2;
	Mon, 11 Jun 2007 08:06:56 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id E694D58BC7CB; Mon, 11 Jun 2007 08:06:54 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id E2EBB58BC7C2
	for <sugar@laptop.org>; Mon, 11 Jun 2007 08:06:54 -0400 (EDT)
X-ASG-Debug-ID: 1181563636-6f3d00050000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mo-p00-ob.rzone.de[81.169.146.161]
X-Barracuda-Start-Time: 1181563636
Received: from mo-p00-ob.rzone.de (mo-p00-ob.rzone.de [81.169.146.161])
	by spam.laptop.org (Spam Firewall) with ESMTP id 2B11D1550A
	for <sugar@laptop.org>; Mon, 11 Jun 2007 08:07:16 -0400 (EDT)
Received: from [192.168.1.39] (p57AD3D11.dip0.t-ipconnect.de [87.173.61.17])
	by post.webmailer.de (klopstock mo19) (RZmta 7.2)
	with ESMTP id G05269j5BAg9ra ; Mon, 11 Jun 2007 14:07:14 +0200 (MEST)
In-Reply-To: <466D2CA8.7080703@schampijer.de>
References: <466D2CA8.7080703@schampijer.de>
Mime-Version: 1.0 (Apple Message framework v752.3)
Message-Id: <2C147E26-BDA7-4456-9C43-F2CDD4D6CD90@freudenbergs.de>
From: Bert Freudenberg <bert@freudenbergs.de>
X-ASG-Orig-Subj: Re: [sugar] olpc-games osc protocol
Date: Mon, 11 Jun 2007 14:07:13 +0200
To: Simon Schamijer <simon@schampijer.de>
X-Mailer: Apple Mail (2.752.3)
X-RZG-AUTH: klDUxUd2aRrnQr9PAdUndyTugUZ8lgF4ymAgUtj97vJmLo3U6xIazPETSS2gxQ==
X-RZG-CLASS-ID: mo00
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19605
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: sugar@laptop.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

On Jun 11, 2007, at 13:06 , Simon Schamijer wrote:

> Hi,
>
> memosono is using the osc protocol
> (http://opensoundcontrol.org/spec-1_0) to communicate with the game
> server and to talk to the csound server.

Which game server? I thought osc is about sound?

> I think it is an easy to use
> protocol and maybe some other games or activities want to use it as  
> well.

Does that mean an osc server will be running? Or does it have to be  
started by each activity?

> An osc message consists of an OSC address pattern (a path) followed by
> an OSC type tag string followed by zero or more OSC arguments.
>
> '/MEMOSONO/test', 'ifs', [1, 3.4, 'test']
>
> osc is callback based. On the receiver side the osc path and the type
> tag is used to dispatch the right callback.
>
> A python implementation of the osc protocol and a basic api for
> receiving and sending osc messages can be found in the memosono  
> tree in
> the osc folder. There exist python bindings for the osc library  
> liblo as
> well (http://das.nasophon.de/pyliblo/).

There is an OSC package for Squeak at

http://map.squeak.org/package/61f807be-83a3-4944-bfa1-686ddac7153c

Now, to try that I would need to have csound (and an osc server?)  
running in jhbuild. I saw chatter about this, but did anybody  
actually make it available?

- Bert -


_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

 

UCn fa6ecewrr
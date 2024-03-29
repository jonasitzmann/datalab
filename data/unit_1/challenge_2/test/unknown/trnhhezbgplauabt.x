From sugar-bounces@lists.laptop.org  Mon Jun 11 09:25:05 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BDP5L9014400
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 09:25:05 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 2E33958BC7E2;
	Mon, 11 Jun 2007 09:24:41 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 9E3F858BC7E6; Mon, 11 Jun 2007 09:24:39 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 9AC9D58BC7E2
	for <sugar@laptop.org>; Mon, 11 Jun 2007 09:24:39 -0400 (EDT)
X-ASG-Debug-ID: 1181568300-7ace00230000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: moutng.kundenserver.de[212.227.126.187]
X-Barracuda-Start-Time: 1181568300
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by spam.laptop.org (Spam Firewall) with ESMTP id 9BFBE154E2
	for <sugar@laptop.org>; Mon, 11 Jun 2007 09:25:00 -0400 (EDT)
Received: from [85.178.239.91] (helo=[192.168.0.101])
	by mrelayeu.kundenserver.de (node=mrelayeu2) with ESMTP (Nemesis),
	id 0MKwtQ-1HxjtA0Dos-0003Ev; Mon, 11 Jun 2007 15:24:59 +0200
Message-ID: <466D4D21.7040908@schampijer.de>
Date: Mon, 11 Jun 2007 15:24:49 +0200
From: Simon Schamijer <simon@schampijer.de>
User-Agent: Thunderbird 1.5.0.12 (X11/20070530)
MIME-Version: 1.0
To: Bert Freudenberg <bert@freudenbergs.de>
X-ASG-Orig-Subj: Re: [sugar] olpc-games osc protocol
References: <466D2CA8.7080703@schampijer.de>
	<2C147E26-BDA7-4456-9C43-F2CDD4D6CD90@freudenbergs.de>
In-Reply-To: <2C147E26-BDA7-4456-9C43-F2CDD4D6CD90@freudenbergs.de>
X-Provags-ID: V01U2FsdGVkX1/mVeh6FqUCD7zO+07x0EYC5qaiskT4SpXKtlp
	dTENK5bWf3lq1rDt3cjCUjNpuA3knoL3zXG4BgW415EEXhtCXt
	V8oxYVZt2X1C5vXrQMbt1kbmgEzACmt
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19609
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

Bert Freudenberg wrote:
> On Jun 11, 2007, at 13:06 , Simon Schamijer wrote:
> 
>> Hi,
>>
>> memosono is using the osc protocol
>> (http://opensoundcontrol.org/spec-1_0) to communicate with the game
>> server and to talk to the csound server.
> 
> Which game server? I thought osc is about sound?

The initial idea of osc was to use it in sound applications but it does 
not mean it only works in sound applications. Memosono uses osc to talk 
to the game server and to the soundserver(which is activity wide at the 
moment) as well.

>> I think it is an easy to use
>> protocol and maybe some other games or activities want to use it as well.
> 
> Does that mean an osc server will be running? Or does it have to be 
> started by each activity?

Each activity has an osc server running. I thought about inner activity 
communication. In memosono for example you may want to use the mesh 
network to play the game. In this case the person who shares the game 
will open a game server. The game server listens for osc messages from 
the other players (switched tile x etc) and uses osc messages to 
communicate the game state to the players.


> 
>> An osc message consists of an OSC address pattern (a path) followed by
>> an OSC type tag string followed by zero or more OSC arguments.
>>
>> '/MEMOSONO/test', 'ifs', [1, 3.4, 'test']
>>
>> osc is callback based. On the receiver side the osc path and the type
>> tag is used to dispatch the right callback.
>>
>> A python implementation of the osc protocol and a basic api for
>> receiving and sending osc messages can be found in the memosono tree in
>> the osc folder. There exist python bindings for the osc library liblo as
>> well (http://das.nasophon.de/pyliblo/).
> 
> There is an OSC package for Squeak at
> 
> http://map.squeak.org/package/61f807be-83a3-4944-bfa1-686ddac7153c
> 
> Now, to try that I would need to have csound (and an osc server?) 
> running in jhbuild. I saw chatter about this, but did anybody actually 
> make it available?
> 
> - Bert -
> 

The initial olpc-csound-server was started by an init.d daemon on 
startup. The idea to use csound as the olpc csound server has been 
deprecated afaik. Memosono was the only activity using this service. I 
have moved the sound server to the memosono activity and changed it to 
use osc messages to control it.
However if it is not used system wide the easier way is to create a 
csound instance in the activity and use it directly (assuming we have 
only one activity using the sound device at a time).

Best,
    Simon


_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

 

 e �y
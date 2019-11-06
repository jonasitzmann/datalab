From sugar-bounces@lists.laptop.org  Mon Jun 11 07:06:34 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BB6XL9013224
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 07:06:34 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id B51D658BC7CB;
	Mon, 11 Jun 2007 07:06:09 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 4695A58BC7CD; Mon, 11 Jun 2007 07:06:08 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 425B458BC7CB
	for <sugar@laptop.org>; Mon, 11 Jun 2007 07:06:08 -0400 (EDT)
X-ASG-Debug-ID: 1181559990-61a200010000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: moutng.kundenserver.de[212.227.126.187]
X-Barracuda-Start-Time: 1181559990
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by spam.laptop.org (Spam Firewall) with ESMTP id 71C85154ED
	for <sugar@laptop.org>; Mon, 11 Jun 2007 07:06:30 -0400 (EDT)
Received: from [85.178.239.91] (helo=[192.168.0.101])
	by mrelayeu.kundenserver.de (node=mrelayeu6) with ESMTP (Nemesis),
	id 0ML29c-1Hxhj52u2Y-0002lv; Mon, 11 Jun 2007 13:06:29 +0200
Message-ID: <466D2CA8.7080703@schampijer.de>
Date: Mon, 11 Jun 2007 13:06:16 +0200
From: Simon Schamijer <simon@schampijer.de>
User-Agent: Thunderbird 1.5.0.12 (X11/20070530)
MIME-Version: 1.0
To: sugar@laptop.org
X-ASG-Orig-Subj: olpc-games osc protocol
X-Provags-ID: V01U2FsdGVkX1+oKtSIX8AHDCWsfCbMo0lVQKpMvEALJ9bgXOC
	gXHBl24aIe1SSIZdCNew8PYp6ziQO25BThw+f5gVBXOtbHyWHR
	bQbIfuD4UO474i+dbDGhNUgd2gpdR8V
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0104 1.0000 -1.9530
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -1.95
X-Barracuda-Spam-Status: No, SCORE=-1.95 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19601
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: [sugar] olpc-games osc protocol
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

Hi,

memosono is using the osc protocol 
(http://opensoundcontrol.org/spec-1_0) to communicate with the game 
server and to talk to the csound server. I think it is an easy to use 
protocol and maybe some other games or activities want to use it as well.

An osc message consists of an OSC address pattern (a path) followed by 
an OSC type tag string followed by zero or more OSC arguments.

'/MEMOSONO/test', 'ifs', [1, 3.4, 'test']

osc is callback based. On the receiver side the osc path and the type 
tag is used to dispatch the right callback.

A python implementation of the osc protocol and a basic api for 
receiving and sending osc messages can be found in the memosono tree in 
the osc folder. There exist python bindings for the osc library liblo as 
well (http://das.nasophon.de/pyliblo/).

Best,
    Simon
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

                  

m-t f
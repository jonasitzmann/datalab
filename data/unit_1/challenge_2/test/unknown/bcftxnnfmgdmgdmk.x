From sugar-bounces@lists.laptop.org  Tue Jun  5 15:08:16 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55J8FhB012775
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 15:08:15 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 1890558BC7BB;
	Tue,  5 Jun 2007 15:07:57 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 2F12058BC7E4; Tue,  5 Jun 2007 15:07:56 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 1F9C158BC7BB
	for <sugar@laptop.org>; Tue,  5 Jun 2007 15:07:56 -0400 (EDT)
X-ASG-Debug-ID: 1181070485-53b500140000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mail.station1.mxsweep.com[212.147.136.149]
X-Barracuda-Start-Time: 1181070485
Received: from sc-analyser1.mxsweep.com (mail.station1.mxsweep.com
	[212.147.136.149])
	by spam.laptop.org (Spam Firewall) with ESMTP id A7570131B6
	for <sugar@laptop.org>; Tue,  5 Jun 2007 15:08:05 -0400 (EDT)
Received: from sc-analyser1.mxsweep.com (127.0.0.1) by
	sc-analyser1.mxsweep.com (MlfMTA v3.2r1b3) id hcmqas0171ss for
	<sugar@laptop.org>;
	Tue, 5 Jun 2007 19:08:14 +0000 (envelope-from <P@draigBrady.com>)
Received: from yzordderrex.lincor.com ([212.17.35.167])
	by sc-analyser1.mxsweep.com (mxsweep)
	with ESMTP; Tue, 05 Jun 2007 19:08:13 +0000
Received: from jumpgate ([84.203.137.218] helo=[192.168.2.25])
	by yzordderrex.lincor.com with asmtp (Exim 3.35 #1 (Debian))
	id 1HveNg-0007jF-00; Tue, 05 Jun 2007 20:07:48 +0100
Message-ID: <4665B473.5090100@draigBrady.com>
Date: Tue, 05 Jun 2007 20:07:31 +0100
From: =?ISO-8859-1?Q?P=E1draig_Brady?= <P@draigBrady.com>
User-Agent: Thunderbird 1.5.0.8 (X11/20061116)
MIME-Version: 1.0
To: Simon Schamijer <simon@schampijer.de>
X-ASG-Orig-Subj: Re: [sugar] setup.py #!/usr/bin/env python
References: <466512AA.3040704@schampijer.de>
In-Reply-To: <466512AA.3040704@schampijer.de>
X-Enigmail-Version: 0.94.0.0
X-Mlf-Version: 5.0.3.8711
X-Mlf-UniqueId: o200706051908130125462
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0005 1.0000 -2.0179
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19057
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: sugar@laptop.org
Subject: Re: [sugar] setup.py #!/usr/bin/env python
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55J8FhB012775

Simon Schamijer wrote:
> Hi,
> 
> I think the #!/usr/bin/python in setup.py in some of the activities 
> should be changed to use #!/usr/bin/env python. Otherwise the right 
> environment which is set to sugar shell will not be used - correct me if 
> i am wrong.
> I had this problem in memosono and saw it at least in the write activity 
> as well.

Just a point to note about that, is that
if you use /usr/bin/env, the process name
in the process list will be "python" rather
than the name of the executable.

cheers,
P�draig.

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

                 

T� a0Rv:gt e
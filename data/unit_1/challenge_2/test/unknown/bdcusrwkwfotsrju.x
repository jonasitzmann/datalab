From sugar-bounces@lists.laptop.org  Tue Jun  5 04:05:04 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55851hB006119
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 04:05:01 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id BDEAB58BC7CB;
	Tue,  5 Jun 2007 04:04:44 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 436B058BC7CE; Tue,  5 Jun 2007 04:04:43 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 4108958BC7CB
	for <sugar@laptop.org>; Tue,  5 Jun 2007 04:04:43 -0400 (EDT)
X-ASG-Debug-ID: 1181030693-35d500020000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mx1.redhat.com[66.187.233.31]
X-Barracuda-Start-Time: 1181030693
Received: from mx1.redhat.com (mx1.redhat.com [66.187.233.31])
	by spam.laptop.org (Spam Firewall) with ESMTP id AC71512EFE
	for <sugar@laptop.org>; Tue,  5 Jun 2007 04:04:53 -0400 (EDT)
Received: from int-mx1.corp.redhat.com (int-mx1.corp.redhat.com
	[172.16.52.254])
	by mx1.redhat.com (8.13.1/8.13.1) with ESMTP id l5584q2X005676;
	Tue, 5 Jun 2007 04:04:52 -0400
Received: from mail.boston.redhat.com (mail.boston.redhat.com [172.16.76.12])
	by int-mx1.corp.redhat.com (8.13.1/8.13.1) with ESMTP id
	l5584paC001854; Tue, 5 Jun 2007 04:04:52 -0400
Received: from localhost.localdomain (vpn-14-19.rdu.redhat.com [10.11.14.19])
	by mail.boston.redhat.com (8.13.1/8.13.1) with ESMTP id
	l5584oPY014826; Tue, 5 Jun 2007 04:04:51 -0400
Message-ID: <46651812.4000200@redhat.com>
Date: Tue, 05 Jun 2007 10:00:18 +0200
From: Marco Pesenti Gritti <mpg@redhat.com>
User-Agent: Thunderbird 2.0.0.0 (X11/20070419)
MIME-Version: 1.0
To: Simon Schamijer <simon@schampijer.de>
X-ASG-Orig-Subj: Re: [sugar] setup.py #!/usr/bin/env python
References: <466512AA.3040704@schampijer.de>
In-Reply-To: <466512AA.3040704@schampijer.de>
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19013
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

Simon Schamijer wrote:
> Hi,
>
> I think the #!/usr/bin/python in setup.py in some of the activities 
> should be changed to use #!/usr/bin/env python. Otherwise the right 
> environment which is set to sugar shell will not be used - correct me if 
> i am wrong.
> I had this problem in memosono and saw it at least in the write activity 
> as well.
>   

Hey Simon,

you are right. I replaced it in some of the activities already. All 
activities should use "#!/usr/bin/env python" to work properly in jhbuild.

Marco
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

  

itu->iHliotT f
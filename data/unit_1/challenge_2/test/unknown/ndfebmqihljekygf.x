From sugar-bounces@lists.laptop.org  Tue Jun 12 04:43:24 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C8hOL9024538
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 04:43:24 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 9876958BC7CD;
	Tue, 12 Jun 2007 04:42:58 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 1B22F58BC7E1; Tue, 12 Jun 2007 04:42:57 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 18FF658BC7CD
	for <sugar@laptop.org>; Tue, 12 Jun 2007 04:42:57 -0400 (EDT)
X-ASG-Debug-ID: 1181637800-177700050000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mx1.redhat.com[66.187.233.31]
X-Barracuda-Start-Time: 1181637800
Received: from mx1.redhat.com (mx1.redhat.com [66.187.233.31])
	by spam.laptop.org (Spam Firewall) with ESMTP
	id D021015C55; Tue, 12 Jun 2007 04:43:20 -0400 (EDT)
Received: from int-mx1.corp.redhat.com (int-mx1.corp.redhat.com
	[172.16.52.254])
	by mx1.redhat.com (8.13.1/8.13.1) with ESMTP id l5C8hKCQ011731;
	Tue, 12 Jun 2007 04:43:20 -0400
Received: from mail.boston.redhat.com (mail.boston.redhat.com [172.16.76.12])
	by int-mx1.corp.redhat.com (8.13.1/8.13.1) with ESMTP id
	l5C8hJFa022040; Tue, 12 Jun 2007 04:43:19 -0400
Received: from localhost.localdomain (vpn-4-78.str.redhat.com [10.32.4.78])
	by mail.boston.redhat.com (8.13.1/8.13.1) with ESMTP id l5C8hIXV006476; 
	Tue, 12 Jun 2007 04:43:18 -0400
Message-ID: <466E5B72.60605@redhat.com>
Date: Tue, 12 Jun 2007 10:38:10 +0200
From: Marco Pesenti Gritti <mpg@redhat.com>
User-Agent: Thunderbird 2.0.0.0 (X11/20070419)
MIME-Version: 1.0
To: Sugar Tinderbox <cjb@laptop.org>
X-ASG-Orig-Subj: Re: [sugar] Tinderbox results, 20070611-1805-f7
References: <86ejkidmza.fsf@pullcord.laptop.org>
In-Reply-To: <86ejkidmza.fsf@pullcord.laptop.org>
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19688
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: sugar@laptop.org
Subject: Re: [sugar] Tinderbox results, 20070611-1805-f7
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

Sugar Tinderbox wrote:
>   (Down to one activity failing!  Simon, it would be great if you could
>   fix memosono in jhbuild.  Including the python csnd library is okay
>   with me..)
>
> Modules:  
>    http://dev.laptop.org/tinderbox/sugar-tinder/20070611-1805-f7
>    * all built successfully
>
> Activities:  
>    http://dev.laptop.org/tinderbox/sugar-tinder/20070611-1805-f7/activities.html
>    * Memosono.activity failed
>
>    
> Details:
>
> Memosono.activity: Failed:
>   

Hi Chris,

I removed memosono from the activities we build by default, we will need 
to solve the csound issue at some point, but it's tricky. Not sure if 
this will automatically be reflected in the activities you launch in the 
tinderbox.

Marco
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

          

- 0isNuutAYe 
From sugar-bounces@lists.laptop.org  Tue Jun  5 14:30:34 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55IUYhB012405
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 14:30:34 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 4913058BC7E4;
	Tue,  5 Jun 2007 14:30:16 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 718E658BC805; Tue,  5 Jun 2007 14:30:15 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 6E4CE58BC7E7
	for <sugar@laptop.org>; Tue,  5 Jun 2007 14:30:15 -0400 (EDT)
X-ASG-Debug-ID: 1181068226-4d3400010000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mx1.redhat.com[66.187.233.31]
X-Barracuda-Start-Time: 1181068226
Received: from mx1.redhat.com (mx1.redhat.com [66.187.233.31])
	by spam.laptop.org (Spam Firewall) with ESMTP
	id 4C55A1339E; Tue,  5 Jun 2007 14:30:26 -0400 (EDT)
Received: from int-mx1.corp.redhat.com (int-mx1.corp.redhat.com
	[172.16.52.254])
	by mx1.redhat.com (8.13.1/8.13.1) with ESMTP id l55IUMw2023749;
	Tue, 5 Jun 2007 14:30:22 -0400
Received: from mail.boston.redhat.com (mail.boston.redhat.com [172.16.76.12])
	by int-mx1.corp.redhat.com (8.13.1/8.13.1) with ESMTP id
	l55IULYg026762; Tue, 5 Jun 2007 14:30:21 -0400
Received: from [10.11.14.107] (vpn-14-107.rdu.redhat.com [10.11.14.107])
	by mail.boston.redhat.com (8.13.1/8.13.1) with ESMTP id l55IUKvU031977; 
	Tue, 5 Jun 2007 14:30:20 -0400
X-ASG-Orig-Subj: Re: [sugar] Tinderbox results, 20070605-0145.
From: Dan Williams <dcbw@redhat.com>
To: Marco Pesenti Gritti <mpg@redhat.com>
In-Reply-To: <4665A2E6.6070003@redhat.com>
References: <86vee3ey9k.fsf@pullcord.laptop.org> <4665A2E6.6070003@redhat.com>
Date: Tue, 05 Jun 2007 14:34:45 -0400
Message-Id: <1181068485.3168.7.camel@xo-28-0B-88.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.8.3 (2.8.3-2.fc6) 
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19055
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Sugar Tinderbox <cjb@laptop.org>, sugar@laptop.org
Subject: Re: [sugar] Tinderbox results, 20070605-0145.
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

On Tue, 2007-06-05 at 19:52 +0200, Marco Pesenti Gritti wrote:
> Sugar Tinderbox wrote:
> > All modules built successfully:
> >   http://dev.laptop.org/sugar-tinder/20070605-0145/
> >
> > The following activities failed to run:
> >   http://dev.laptop.org/sugar-tinder/20070605-0145/activities.html
> >
> > ** Read.activity:
> >
> > STDERR - Traceback (most recent call last):
> >   File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77,
> >   in ?
> >     activityfactoryservice.run(activity_info.path)
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py",
> >   line 162, in run
> >     bundle.get_class())
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py",
> >   line 83, in __init__
> >     module = __import__(module_name)
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/share/activities/Read.activity/XbookActivity.py",
> >   line 26, in ?
> >     from sugar.p2p import network
> > ImportError: No module named p2p
> > STDERR -
> > ERROR - Traceback (most recent call last):
> >   File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77,
> >   in ?
> >     activityfactoryservice.run(activity_info.path)
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py",
> >   line 162, in run
> >     bundle.get_class())
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py",
> >   line 83, in __init__
> >     module = __import__(module_name)
> >   File
> >   "/home/cjb/git/sugar-jhbuild/build/share/activities/Read.activity/XbookActivity.py",
> >   line 26, in ?
> >     from sugar.p2p import network
> > ImportError: No module named p2p
> >
> >   
> 
> Should be fixed, this is awesome btw :)

Grr, forgot to push xbook this morning when I fixed sugar for this bug
too :)

Dan

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

                 

m JK
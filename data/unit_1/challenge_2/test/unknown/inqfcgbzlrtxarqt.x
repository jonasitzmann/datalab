From sugar-bounces@lists.laptop.org  Wed Jun  6 09:25:51 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56DPohB021965
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 09:25:50 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id DFF2258BC7E4;
	Wed,  6 Jun 2007 09:25:30 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 5F4BE58BC7E6; Wed,  6 Jun 2007 09:25:30 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 5CB0A58BC7E4
	for <sugar@laptop.org>; Wed,  6 Jun 2007 09:25:30 -0400 (EDT)
X-ASG-Debug-ID: 1181136342-3d3200000000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: wr-out-0506.google.com[64.233.184.227]
X-Barracuda-Start-Time: 1181136342
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.227])
	by spam.laptop.org (Spam Firewall) with ESMTP id EF221139BD
	for <sugar@laptop.org>; Wed,  6 Jun 2007 09:25:42 -0400 (EDT)
Received: by wr-out-0506.google.com with SMTP id 36so115939wra
	for <sugar@laptop.org>; Wed, 06 Jun 2007 06:25:42 -0700 (PDT)
Received: by 10.90.27.13 with SMTP id a13mr325354aga.1181136342304;
	Wed, 06 Jun 2007 06:25:42 -0700 (PDT)
Received: by 10.35.119.15 with HTTP; Wed, 6 Jun 2007 06:25:42 -0700 (PDT)
Message-ID: <5396c0d10706060625r64456509kdaa77e5137fc10d6@mail.gmail.com>
Date: Wed, 6 Jun 2007 09:25:42 -0400
From: "Samuel Klein" <meta.sj@gmail.com>
To: "Zvi Devir" <zdevir@cs.technion.ac.il>
X-ASG-Orig-Subj: Re: [sugar] eBook Reader user interface
In-Reply-To: <1181112163.46665763e985d@webmail.technion.ac.il>
MIME-Version: 1.0
Content-Disposition: inline
References: <463C1F77.1040301@DonHopkins.com>
	<46477BBF.4090707@cs.technion.ac.il> <4665BB9A.4010003@DonHopkins.com>
	<1181075711.7644.42.camel@xo-28-0B-88.localdomain>
	<Pine.LNX.4.63.0706052335010.31313@csd.cs.technion.ac.il>
	<1181078484.27640.6.camel@xo-28-0B-88.localdomain>
	<1181112163.46665763e985d@webmail.technion.ac.il>
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.19116
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: triggerfingersoftware@att.net, John Gilmore <gnu@toad.com>,
   Sugar List <sugar@laptop.org>
Subject: Re: [sugar] eBook Reader user interface
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

Push + directional key makes a lot of sense to me.  Adding memory of
the rotation direction used the last time the machine was in a given
ebook/non-ebook state, as has been suggested before, would help avoi
dextra presses as well.

SJ

On 6/6/07, Zvi Devir <zdevir@cs.technion.ac.il> wrote:
> Quoting Dan Williams <dcbw@redhat.com>:
>
> > On Tue, 2007-06-05 at 23:50 +0300, Zvi Devir wrote:
> > > On Tue, 5 Jun 2007, Dan Williams wrote:
> > >
> > > > On Tue, 2007-06-05 at 12:38 -0700, Don Hopkins wrote:
> > > >
> > > >> you press the button again, but require you to either press and hold
> > > >> the button, or press another button (like the arrow keys) to actually
> > > >> rotate the screen or power the system down.
> > > >
> > > > That's pretty indirect; I'd argue the more direct the better.  The
> > > > button has a rotation icon, and when you press it, it should rotate the
> > > > screen.
> > > >
> > >
> > > I think regarding the rotation key as a "modifier" is very intuitive.
> > > Pressing the rotation key + gamepad UP/DOWN/LEFT/RIGHT rotates the screen
> > > to the appropriate direction (see the ticket). It will also prevent
> > > unwanted and expensive rotations
> >
> > Though, if it's unwanted, why was the button pressed?  Users will
> > certainly learn what the buttons do and when to press them and when not
> > to press them.
> >
> > dan
> >
>
> I meant that, for example, after rotating the screen once, the user has to press
> the rotate button three more times in order to get back to the original
> orientation. Two out of the three rotation operations are intermediate steps
> which can be skipped.
>
> Zvi
> _______________________________________________
> Sugar mailing list
> Sugar@lists.laptop.org
> http://lists.laptop.org/listinfo/sugar
>
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

                  

d1y0eeH
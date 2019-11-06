From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 10:58:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KEw9L9011367
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:58:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEvbeR024839;
	Wed, 20 Jun 2007 16:57:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.228])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEWe6v015007
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:32:40 +0200
Received: by wx-out-0506.google.com with SMTP id s19so199519wxc
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 07:32:40 -0700 (PDT)
Received: by 10.70.31.14 with SMTP id e14mr1225481wxe.1182349959953;
	Wed, 20 Jun 2007 07:32:39 -0700 (PDT)
Received: by 10.70.71.14 with HTTP; Wed, 20 Jun 2007 07:32:39 -0700 (PDT)
Message-ID: <d332d3e10706200732t3f37f65bsebaa656d54a57c65@mail.gmail.com>
Date: Wed, 20 Jun 2007 10:32:39 -0400
From: "David L. Van Brunt, Ph.D." <dlvanbrunt@gmail.com>
To: "Matthew Keller" <mckellercran@gmail.com>
In-Reply-To: <3f547caa0706191409w3c8f92f0me3dbc44ea56f2674@mail.gmail.com>
MIME-Version: 1.0
References: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAABwQr1ccyxkyN/Yw5Qh9faQEAAAAA@o2.pl>
	<3f547caa0706191409w3c8f92f0me3dbc44ea56f2674@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Speed up R
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

FWIW, I have a dual processor G5 Mac (not dual core... 2 separate, 2GHz
processors-- not even made anymore, so you might find a deal if trying to
save $$. If not, go for the octo-core Mac Pro--- 2 quad cores in one very
expensive box).

On my system I have found that with 5G RAM installed, I can either
1) launch an R64 session that is truly 64 bit R environment, and address
very large objects in RAM, or
2) do what has been described here and launch 2 sessions (in the command
line, or batch sessions, or 1 GUI and 1 CLI session) and get nearly full
speed out of both... a glance at the system activity  monitor shows both
processors pegged when I do this.

But if I use one regular R session, I still have a very responsive system
for other tasks. Good opportunity to use GnuCash to pay my bills....

I've never tried launching more than 2 sessions, since I only have the 2
cpus...



On 6/19/07, Matthew Keller <mckellercran@gmail.com> wrote:
>
> Hi Robert,
>
> Here's my 2 cents.
>
> 64-bit is a memory issue, not a speed issue per se. If a concern is
> increasing RAM (which is important in R since objects are stored in
> RAM), then you will want to get 64 bit if you plan on getting a
> computer with over 4GB RAM. I'm not sure about this (someone correct
> me if I'm wrong), but I think that windows has problems addressing
> that much RAM (surely the 64bit Vista is OK with it though... surely).
> Linux or Apple (the powermac) might be better bets if you're wanting
> to work with programs that use a lot of RAM. BTW, Intel does make 64
> bit chips now. They use them in macs.
>
> As for speed, go with multicore processors with as much GHz as possible.
>
> On 6/19/07, Robert McFadden <robert-mcfadden@o2.pl> wrote:
> > Dear R Users,
> > I hope that there is someone who has an experience with a problem that I
> > describe below and will help me.
> > I must buy new desktop computer and I'm wondering which processor to
> choose
> > if my only aim is to speed up R. I would like to reduce a simulation
> time -
> > sometimes it takes days. I consider buying one of them (I'm working
> under
> > Win XP 32 bit):
> > 1. Intel Core2 Duo E6700 2.67 GHz
> > 2. Dual-Core Intel Xeon processor 3070 - 2,66 GHz
> > 3. AMD Athlon 64 X2 6000+
> > Or simple Pentium 4?
> >
> > I'm very confused because I'm not sure whether R takes advantage
> dual-core
> > or not. If not, probably Athlon would be better, wouldn't be?
> > I would appreciate any help.
> > Rob
> >
> > ______________________________________________
> > R-help@stat.math.ethz.ch mailing list
> > https://stat.ethz.ch/mailman/listinfo/r-help
> > PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> > and provide commented, minimal, self-contained, reproducible code.
> >
>
>
> --
> Matthew C Keller
> Postdoctoral Fellow
> Virginia Institute for Psychiatric and Behavioral Genetics
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
---------------------------------------
David L. Van Brunt, Ph.D.
mailto:dlvanbrunt@gmail.com

"If Tyranny and Oppression come to this land, it will be in the guise of
fighting a foreign enemy."
--James Madison

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

aftnU >ohCnGio
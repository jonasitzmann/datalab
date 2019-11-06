From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 10:33:12 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KEXBL9011036
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:33:12 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEViqM014523;
	Wed, 20 Jun 2007 16:31:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from wr-out-0506.google.com (wr-out-0506.google.com [64.233.184.224])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KEG21o008243
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 16:16:03 +0200
Received: by wr-out-0506.google.com with SMTP id 69so187655wra
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 07:16:02 -0700 (PDT)
Received: by 10.100.41.8 with SMTP id o8mr424458ano.1182348962402;
	Wed, 20 Jun 2007 07:16:02 -0700 (PDT)
Received: by 10.100.4.4 with HTTP; Wed, 20 Jun 2007 07:16:02 -0700 (PDT)
Message-ID: <3f547caa0706200716t493e63adq22214914dbf92f74@mail.gmail.com>
Date: Wed, 20 Jun 2007 10:16:02 -0400
From: "Matthew Keller" <mckellercran@gmail.com>
To: "Robert McFadden" <robert-mcfadden@o2.pl>
In-Reply-To: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAA9ZipM0jYbkSnDRXmTyd7zgEAAAAA@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
References: <Pine.LNX.4.64.0706192216270.12443@gannet.stats.ox.ac.uk>
	<!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAA9ZipM0jYbkSnDRXmTyd7zgEAAAAA@o2.pl>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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

Robert,

I'm not exactly an expert, but here's what I think. If you have only
786 MB of RAM on your machine and you are using ~500 of it in a
session of R, that could slow things down considerably because your
machine is trying to find free blocks of memory that haven't been used
yet. I would buy additional RAM.

As for Mike Prager's point about the type of hard drive being
important, I'm not sure this is right (someone correct me if I'm
misunderstanding). R stores and accesses objects through RAM - they
aren't stored and accessed on the hard drive except when reading and
writing. So hard drive type probably won't make much difference to
speed in R.

Matt

On 6/20/07, Robert McFadden <robert-mcfadden@o2.pl> wrote:
>
> > -----Original Message-----
> > From: Prof Brian Ripley [mailto:ripley@stats.ox.ac.uk]
> > The advantage of dual processors is that you can use the
> > machine for several things at once, including multiple R
> > jobs.  For example, when I am doing package checking I am
> > typically checking 4 packages at once on a dual processor
> > machine to get continuous high utilization.
>
> I would like to thank very much everybody taking part in discussion.
> Does an answer above suggest that I can open two R console and do
> simulations simultaneously? If so, all simulations take more or less 1/2
> times - or much less then doing it in turn?
>
> During our discussion one mentioned that RAM is important. But in my
> computing I do not use up more then 500 MB. I have 786 MB it means
> (probably) that I have enough.
> Am I right?
>
> Best,
> Rob
>
>
>
> > I have little doubt that a Pentium 4 would be much slower
> > than the others.
> >
> > I've just bought an Intel Core 2 Duo E6600 primarily to run
> > 64-bit Linux, but it also has Vista 64 and XP (32-bit) on it.
> >  I don't think the differences between the current dual-core
> > chips are really enough to worry about: they will all look
> > slow in less than a year.
> >
> > --
> > Brian D. Ripley,                  ripley@stats.ox.ac.uk
> > Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
> > University of Oxford,             Tel:  +44 1865 272861 (self)
> > 1 South Parks Road,                     +44 1865 272866 (PA)
> > Oxford OX1 3TG, UK                Fax:  +44 1865 272595
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>


-- 
Matthew C Keller
Postdoctoral Fellow
Virginia Institute for Psychiatric and Behavioral Genetics

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

2eco n
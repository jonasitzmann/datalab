From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 16:29:36 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KKTZL9014556
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 16:29:36 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KKSdxX030418;
	Wed, 20 Jun 2007 22:29:05 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=5.0 tests=AWL, BAYES_95,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KKPE9X029401
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 22:25:15 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I16hX-0004is-VD
	for r-help@stat.math.ethz.ch; Wed, 20 Jun 2007 22:22:52 +0200
Received: from nat.ccfhr.noaa.gov ([192.154.40.252])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 22:22:51 +0200
Received: from mike.prager by nat.ccfhr.noaa.gov with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 22:22:51 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Mike Prager <mike.prager@noaa.gov>
Date: Wed, 20 Jun 2007 16:21:18 -0400
Organization: NOAA SEFSC, Beaufort NC
Lines: 32
Message-ID: <882j739u87c61h6hv6e5uneitfp84kemck@4ax.com>
References: <Pine.LNX.4.64.0706192216270.12443@gannet.stats.ox.ac.uk>
	<!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAA9ZipM0jYbkSnDRXmTyd7zgEAAAAA@o2.pl>
	<3f547caa0706200716t493e63adq22214914dbf92f74@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: nat.ccfhr.noaa.gov
X-Newsreader: Forte Agent 3.3/32.846
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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

"Matthew Keller" <mckellercran@gmail.com> wrote:

> Robert,
... 
> As for Mike Prager's point about the type of hard drive being
> important, I'm not sure this is right (someone correct me if I'm
> misunderstanding). R stores and accesses objects through RAM - they
> aren't stored and accessed on the hard drive except when reading and
> writing. So hard drive type probably won't make much difference to
> speed in R.

In my experience, it makes a substantial difference if any
swapping to disk is going on. That will happen if, e.g., other
processes or Windows itself need RAM. Though R keeps the data in
RAM, under Windows, non-SCSI disk I/O puts a noticeable load on
the CPU. As SCSI controllers have CPUs of their own, they
offload much of that work from the system CPU.

I have compared dual-processor computers with equal RAM, one
with a SCSI subsystem and one with fast (7200 RPM) ATA disks and
slightly faster CPUs.  One was my work machine, one my home. The
difference was not subtle.  For another example, think of how
slow laptops seem when multitasking, compared to a good
workstation. It is usually the poor disk subsystem that's the
bottleneck, not the CPU.

Mike

-- 
Mike Prager, NOAA, Beaufort, NC
* Opinions expressed are personal and not represented otherwise.
* Any use of tradenames does not constitute a NOAA endorsement.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

-i teTnfs.R.
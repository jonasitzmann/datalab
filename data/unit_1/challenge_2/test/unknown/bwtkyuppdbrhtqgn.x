From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 06:00:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l66A04L9006159
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 06:00:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669xQ12020391;
	Fri, 6 Jul 2007 11:59:37 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l669xLp8020351
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 11:59:21 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1I6kap-0000CY-9n
	for r-help@stat.math.ethz.ch; Fri, 06 Jul 2007 11:59:15 +0200
Received: from sl392.st-edmunds.cam.ac.uk ([131.111.223.202])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 06 Jul 2007 11:59:15 +0200
Received: from sdl.web by sl392.st-edmunds.cam.ac.uk with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Fri, 06 Jul 2007 11:59:15 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Leo <sdl.web@gmail.com>
Date: Fri, 06 Jul 2007 10:57:11 +0100
Lines: 27
Message-ID: <m2odipua6g.fsf@cam.ac.uk>
References: <m28x9tvre8.fsf@cam.ac.uk>
	<Pine.LNX.4.64.0707061043200.22312@gannet.stats.ox.ac.uk>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: sl392.st-edmunds.cam.ac.uk
Face: iVBORw0KGgoAAAANSUhEUgAAACgAAAAoBAMAAAB+0KVeAAAAG1BMVEUAAAA9Cgm3Hx1WWFWA
	gn+WmJWsrqv4+vcCAwCRl2MkAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAAAYoA
	AAGKATOXMFgAAAAHdElNRQfXAQwDNR+ZJmElAAABIklEQVQoz22SPW+DQAyGWUq65qasd9PNUSX4
	AZHK2C1rJy5jpDS4IwRVup9dn7GNafpKIPPgzztXFSujqq1eM2n8h22oMkvxI/i9C97kRfMRUN55
	dS3BrsAwBXUtMLAO4lryh8kTjOxKpQNniNxAgZOEe4bZwsDTFhKdqZRLNII4OQNHhEuq/RMkm6Cj
	TnnEA/fk0BorcYn5qA3oaeAxbaBOLrX+9G48NZ2Fzc2tzDM8Q+tMypEOqYHh8mAWaaK3U/cDMOT5
	aMZMABgPXc7zPMs1A8DXO756GFJ/4fMEq47hTsAdn5avoxZ4ywl0c2w4Flu2Ybeyb3S+EqxX2DYA
	H8veJGEDTnHnrXvRaPyt+2kSfK6rfBZ2tUtfP/mR+pR6sX8BUZ/cDV7tvkoAAAAASUVORK5CYII=
User-Agent: Gnus/5.110007 Emacs/23.0.0 (20070616) Fedora 7 (gnu/linux)
Cancel-Lock: sha1:1xWNgly1UadEAPqItVn4UKqmnuQ=
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Warning message: cannot create HTML package index
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

On 06/07/2007, Prof Brian Ripley wrote:
> On Fri, 6 Jul 2007, Leo wrote:
>
>> I have set R_LIBS=~/R_lib as I don't have root access.
>>
>> The following message shown up every time after installing a package:
>>
>>  ......
>>  The downloaded packages are in
>>  	/tmp/RtmpBoIPoz/downloaded_packages
>>  Warning message:
>>  cannot create HTML package index in: tools:::unix.packages.html(.Library)
>>
>> Any ideas?
>
> It is a correct warning.  What is the problem with being warned?
>
> R tries to maintain an HTML page of installed packages, but you don't have 
> permission to update it.

Where is that HTML page located on a GNU/Linux system?

Is it possible to maintain a user HTML page of installed packages?

Thanks,
-- 
Leo <sdl.web AT gmail.com>                         (GPG Key: 9283AA3F)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

s<>Xm/s2aCaE
g
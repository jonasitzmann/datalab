From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 17:11:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JLAxL9001594
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 17:11:00 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JLAAm0030281;
	Tue, 19 Jun 2007 23:10:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JL91Kj029852
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 23:09:01 +0200
Received: by an-out-0708.google.com with SMTP id b2so407529ana
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:09:01 -0700 (PDT)
Received: by 10.100.142.12 with SMTP id p12mr4785779and.1182287340659;
	Tue, 19 Jun 2007 14:09:00 -0700 (PDT)
Received: by 10.100.4.4 with HTTP; Tue, 19 Jun 2007 14:09:00 -0700 (PDT)
Message-ID: <3f547caa0706191409w3c8f92f0me3dbc44ea56f2674@mail.gmail.com>
Date: Tue, 19 Jun 2007 17:09:00 -0400
From: "Matthew Keller" <mckellercran@gmail.com>
To: "Robert McFadden" <robert-mcfadden@o2.pl>
In-Reply-To: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAABwQr1ccyxkyN/Yw5Qh9faQEAAAAA@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
References: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAfHU8PP2E50qGgSIBTaVydsKAAAAQAAAABwQr1ccyxkyN/Yw5Qh9faQEAAAAA@o2.pl>
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

Hi Robert,

Here's my 2 cents.

64-bit is a memory issue, not a speed issue per se. If a concern is
increasing RAM (which is important in R since objects are stored in
RAM), then you will want to get 64 bit if you plan on getting a
computer with over 4GB RAM. I'm not sure about this (someone correct
me if I'm wrong), but I think that windows has problems addressing
that much RAM (surely the 64bit Vista is OK with it though... surely).
Linux or Apple (the powermac) might be better bets if you're wanting
to work with programs that use a lot of RAM. BTW, Intel does make 64
bit chips now. They use them in macs.

As for speed, go with multicore processors with as much GHz as possible.

On 6/19/07, Robert McFadden <robert-mcfadden@o2.pl> wrote:
> Dear R Users,
> I hope that there is someone who has an experience with a problem that I
> describe below and will help me.
> I must buy new desktop computer and I'm wondering which processor to choose
> if my only aim is to speed up R. I would like to reduce a simulation time -
> sometimes it takes days. I consider buying one of them (I'm working under
> Win XP 32 bit):
> 1. Intel Core2 Duo E6700 2.67 GHz
> 2. Dual-Core Intel Xeon processor 3070 - 2,66 GHz
> 3. AMD Athlon 64 X2 6000+
> Or simple Pentium 4?
>
> I'm very confused because I'm not sure whether R takes advantage dual-core
> or not. If not, probably Athlon would be better, wouldn't be?
> I would appreciate any help.
> Rob
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

                  

k>
2amiY
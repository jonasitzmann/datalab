From perl6-all-return-81921-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 16:24:15 2007
Return-Path: <perl6-all-return-81921-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CKODL9031451
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 16:24:13 -0400
Received: (qmail 669 invoked by uid 514); 12 Jun 2007 20:24:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 663 invoked from network); 12 Jun 2007 20:24:11 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of nick@flirble.org designates 194.70.3.20 as permitted sender)
Date: Tue, 12 Jun 2007 21:23:09 +0100
From: Nicholas Clark <nick@ccl4.org>
To: Mark Glines <mark@glines.org>
Cc: Allison Randal <allison@perl.org>, jerry gay <jerry.gay@gmail.com>,
   Perl 6 Internals <perl6-internals@perl.org>
Subject: Re: Removing #pragma
Message-ID: <20070612202309.GL20876@plum.flirble.org>
Mail-Followup-To: Mark Glines <mark@glines.org>,
	Allison Randal <allison@perl.org>, jerry gay <jerry.gay@gmail.com>,
	Perl 6 Internals <perl6-internals@perl.org>
References: <9F00A4F2-6AF4-429C-97D4-53B543738069@petdance.com> <1d9a3f400706120738q4f1c7132q5c2db61522b2ffab@mail.gmail.com> <466EE867.6060601@perl.org> <20070612131344.4455a056@chirp>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070612131344.4455a056@chirp>
User-Agent: Mutt/1.4.2.1i
X-Organisation: Tetrachloromethane
Sender: Nicholas Clark <nick@flirble.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Tue, Jun 12, 2007 at 01:13:44PM -0700, Mark Glines wrote:
> On Tue, 12 Jun 2007 11:39:35 -0700
> Allison Randal <allison@perl.org> wrote:

> > Do we have any proof that it does speed up compilation with msvc? 
> > Littering our code with "optimizations" for odd compilers is also an 
> > unhealthy precedent.

> I just came up with an artificial benchmark and found that gcc-3.4.6
> runs slightly faster with #pragma once protecting a header that includes
> lots of other headers. (a chain of 200 other headers, in my test.)  By
> "slightly", I mean "compare a 0.86 second average to a 0.92 second
> average, for 10 runs each".
> 
> For a more realistic benchmark, parrot r18883 compiles in 3m29.363s,
> parrot r18884 compiles in 3m29.190s.  So, for gcc-3.4.6 at least, I
> think the difference might be lost in the noise.

Or better yet, lose it by using ccache.

> On the other hand, will #pragma once allow us to get rid of all of
> those ugly header guard macros?  If so, I would argue to keep it for
> maintenance reasons, regardless of any performance benefits.

No, because you cannot rely on it working.

Nicholas Clark

            

gUxmE
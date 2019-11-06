From perl6-all-return-81711-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 09:32:27 2007
Return-Path: <perl6-all-return-81711-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51DWQhB010314
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 09:32:26 -0400
Received: (qmail 7791 invoked by uid 514); 1 Jun 2007 13:32:19 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7785 invoked from network); 1 Jun 2007 13:32:18 -0000
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
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Fri, 1 Jun 2007 06:30:16 -0700
From: Mark Glines <mark@glines.org>
To: parrotbug-followup@parrotcode.org
Cc: perl6-internals@perl.org, bugs-bitbucket@netlabs.develooper.com
Subject: Re: [perl #42938] [BUG] allocation failures in res_lea.c
Message-ID: <20070601063016.1ccb67b8@chirp>
In-Reply-To: <20070531230954.59217ae9@chirp>
References: <RT-Ticket-42938@perl.org>
	<46460EC3.2090008@perl.org>
	<rt-3.6.HEAD-12281-1178996726-291.42938-72-0@perl.org>
	<20070531230954.59217ae9@chirp>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.12; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.9 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_HELO_PASS,SPF_PASS

On Thu, 31 May 2007 23:09:54 -0700
Mark Glines <mark@glines.org> wrote:
> Might be worth it to prereserve 8 bytes or so, to avoid having to
> realloc as often, if this will be called a lot.  Currently it just
> reallocs the minimum necessary to fit the existing string, the new
> character and a null terminator.

There is a performance impact from the additional check, but I don't
think the above optimization is necessary... or its possible
Parrot_reallocate_string() already reserves extra room internally.
Either way, I don't see enough of a performance hit from the patch
to be too worried about this.

I tried "prove t/op t/library" with different scenarios, to try to
measure the performance impact.  Here are the setups and the results:

Configure.pl with no args, and no patches applied

All tests successful, 2 tests and 172 subtests skipped.
Files=56, Tests=2488, 73 wallclock secs (51.64 cusr + 11.49 csys = 63.13 CPU)


Configure.pl with no args, #42938 patch applied

All tests successful, 2 tests and 172 subtests skipped.
Files=56, Tests=2488, 72 wallclock secs (51.73 cusr + 11.59 csys = 63.32 CPU)


Configure.pl --gc=libc, no patches applied

Failed Test              Stat Wstat Total Fail  List of Failed
-------------------------------------------------------------------------------
t/library/string_utils.t    0     6    29    4  28-29
t/op/stringu.t              2   512    25    2  1 19
2 tests and 176 subtests skipped.
Failed 2/56 test scripts. 4/2488 subtests failed.
Files=56, Tests=2488, 69 wallclock secs (50.57 cusr + 11.19 csys = 61.76 CPU)
Failed 2/56 test programs. 4/2488 subtests failed.


Configure.pl --gc=libc, #42938 patch applied

All tests successful, 2 tests and 176 subtests skipped.
Files=56, Tests=2488, 70 wallclock secs (50.67 cusr + 11.24 csys = 61.91 CPU)


Mark

 

3 yplKn=g qe 
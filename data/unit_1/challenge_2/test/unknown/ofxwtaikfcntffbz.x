From perl6-all-return-82560-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 23:06:12 2007
Return-Path: <perl6-all-return-82560-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l66369L9002225
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 23:06:10 -0400
Received: (qmail 31548 invoked by uid 514); 6 Jul 2007 03:06:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31543 invoked from network); 6 Jul 2007 03:06:04 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Thu, 5 Jul 2007 21:58:50 -0500
From: "Patrick R. Michaud" <pmichaud@pobox.com>
To: chromatic <chromatic@wgz.org>
Cc: parrot-porters@perl.org
Subject: Re: Odd Memory Corruption
Message-ID: <20070706025850.GB25972@host.pmichaud.com>
References: <200707051830.44805.chromatic@wgz.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <200707051830.44805.chromatic@wgz.org>
User-Agent: Mutt/1.4.2.1i
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.pmichaud.com
X-AntiAbuse: Original Domain - perl.org
X-AntiAbuse: Originator/Caller UID/GID - [32003 505] / [47 12]
X-AntiAbuse: Sender Address Domain - host.pmichaud.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Thu, Jul 05, 2007 at 06:30:44PM -0700, chromatic wrote:
> In theory, this patch should apply and run cleanly.  It doesn't.
> 
> Thus, something somewhere pokes into memory it shouldn't.
> 
> Any ideas?  Alternately, any comments on this analysis?

I also get segfaults after applying this patch.

However, if I change the patch such that the "size_t sentinel;"
line goes at the end of the struct PMC instead of the beginning, 
then everything appears to compile and run.  

In fact, if "size_t sentinel;" is placed as the second or third
line in the struct (i.e., after "pobj_t obj;" or "VTABLE *vtable;")
then things still appear to compile and run.  It's only when the
sentinel is given as the first line that I get errors.

So, I'm guessing there's some code somewhere that assumes that
"obj" is always the first component of PMC.

Pm

     

eI  -�
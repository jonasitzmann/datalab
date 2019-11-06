From perl6-all-return-82523-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 14:18:20 2007
Return-Path: <perl6-all-return-82523-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63IIJL9032185
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 14:18:19 -0400
Received: (qmail 19421 invoked by uid 514); 3 Jul 2007 18:18:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19416 invoked from network); 3 Jul 2007 18:18:14 -0000
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
Date: Tue, 3 Jul 2007 10:02:56 -0700
From: Mark Glines <mark@glines.org>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #43481] t/examples/shootout.t (shootout_16.pir) fails on
 gentoo/x86
Message-ID: <20070703100256.5ead2c99@chirp>
In-Reply-To: <rt-3.6.HEAD-25329-1183480468-447.43481-74-0@perl.org>
References: <RT-Ticket-43481@perl.org>
	<20070702164623.5c0a64f3@chirp>
	<rt-3.6.HEAD-20473-1183420014-385.43481-72-0@perl.org>
	<20070702202752.10abda93@chirp>
	<rt-3.6.HEAD-20473-1183433306-679.43481-74-0@perl.org>
	<rt-3.6.HEAD-25329-1183480468-447.43481-74-0@perl.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Tue, 03 Jul 2007 09:34:29 -0700
"Andy Lester via RT" <parrotbug-followup@parrotcode.org> wrote:

> > Sooo... I'm not sure if the "rep" argument is NULL for the same
> > *reason* as the above script (a comment from Coke has made me
> > paranoid that a DOD run may be to blame), but should this emit an
> > error message, or fix it up by using '' instead, or punt to the
> > 3-argument substr() instead, rather than segfaulting?
> 
> The problem seems to be that string_replace's rep should indeed be NN,
> not NULLOK.  Do you see when it would make sense to pass in NULL rep
> to string_replace?

I don't think so, there's a separate string_substr() function for that,
and the other variants of the "substr" op use that one instead of this.

I think the problem is two-fold.
Problem 1, why does string_replace() crash when passed a NULL rep
argument?

Problem 2, why is this test case passing a NULL pointer all of a
sudden, exposing Problem #1?  Presumably, this used to work.

My simplified test case demonstrates Problem #1, but I've thus far
failed to figure Problem #2 out.

Mark

              

 u-D
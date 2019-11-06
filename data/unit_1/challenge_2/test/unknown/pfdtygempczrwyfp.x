From perl6-all-return-81804-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 17:34:02 2007
Return-Path: <perl6-all-return-81804-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54LY1hB000489
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 17:34:02 -0400
Received: (qmail 7717 invoked by uid 514); 4 Jun 2007 21:33:55 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7708 invoked from network); 4 Jun 2007 21:33:55 -0000
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
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Mon, 4 Jun 2007 13:42:37 -0700
From: Mark Glines <mark@glines.org>
To: Jonathan Worthington <jonathan@jnthn.net>
Cc: parrotbug@parrotcode.org, perl6-internals@perl.org
Subject: Re: GC bug on freebsd/x86, triggered by a perl6 test
Message-ID: <20070604134237.4decb648@chirp>
In-Reply-To: <4664786C.9090003@jnthn.net>
References: <20070604124945.36989852@chirp>
	<4664786C.9090003@jnthn.net>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.12; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_HELO_PASS,SPF_PASS

On Mon, 04 Jun 2007 21:39:08 +0100
Jonathan Worthington <jonathan@jnthn.net> wrote:
> > Assertion failed: (s->encoding && s->charset
> > && !PObj_on_free_list_TEST(s)), function string_hash, file
> > src/string.c, line 2024. Abort trap (core dumped)
> >   
> I'm betting that it's the !PObj_on_free_list_TEST(s) bit of the 
> assertion that failed, and my guess is also that it's related to the 
> Perl 6 GC failures I posted about yesterday, which cause most of the 
> Perl 6 test suite to fail on Win32. Is it just the one that fails on 
> FreeBSD like this?

The rest of the failures are also failures I see on Linux, and
according to pmichaud, are expected.

[08:55] <@pmichaud> we don't have implementations of end blocks, for, ref, or test yet

The only unexpected failure is t/00-parrot/05-var-array.t, and I see
it on FreeBSD but it passes on Linux.

Mark

                

h8i;3anu>tpamp
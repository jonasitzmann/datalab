From perl6-all-return-82258-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:03:17 2007
Return-Path: <perl6-all-return-82258-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MN3GL9010437
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:03:17 -0400
Received: (qmail 9718 invoked by uid 514); 22 Jun 2007 17:36:33 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9713 invoked from network); 22 Jun 2007 17:36:32 -0000
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
Received-SPF: softfail (x1.develooper.com: transitioning domain of chromatic@wgz.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: Mark Glines <mark@glines.org>
Subject: Re: [svn:parrot] r19231 - trunk/languages/perl6/src/pmc
Date: Fri, 22 Jun 2007 10:35:00 -0700
User-Agent: KMail/1.9.6
Cc: Nicholas Clark <nick@ccl4.org>, parrot-porters@perl.org
References: <20070621190535.61B17CB9E1@x12.develooper.com> <200811071428.40407.chromatic@wgz.org> <20070622093040.1fb41cda@chirp>
In-Reply-To: <20070622093040.1fb41cda@chirp>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706221035.01060.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

On Friday 22 June 2007 09:30:40 Mark Glines wrote:

> > If we're passing in a string literal, it seems silly to pass in a
> > length of 0, as we're recalculating a constant on every call.  I
> > don't see that this macro fixes that.

> It uses sizeof, not strlen.  So, it pushes the calculation to
> compile-time, so you only have to do it once, and never at runtime.

> Also, using sizeof() will fix some cases that strlen() doesn't handle
> correctly, specifically, strings containing explicit null characters.
> src/objects.c has a few examples of that.  string_to_cstring(interp,
> "\0", 0) will get the size wrong, but string_to_cstring_literal(interp,
> "\0") will get it right.  So I don't really see a good excuse for not
> using it everywhere.

You and Nicholas are both right.  I saw sizeof() but thought strlen().  With 
Patrick's suggestion to use the name string_from_literal() instead, I'm 
satisfied.

-- c

  

hcohXv 
From perl6-all-return-82264-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:17:43 2007
Return-Path: <perl6-all-return-82264-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNHgL9010798
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:17:42 -0400
Received: (qmail 2624 invoked by uid 514); 22 Jun 2007 19:41:03 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2618 invoked from network); 22 Jun 2007 19:41:03 -0000
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
Date: Fri, 22 Jun 2007 12:40:05 -0700
User-Agent: KMail/1.9.6
Cc: Nicholas Clark <nick@ccl4.org>, parrot-porters@perl.org
References: <20070621190535.61B17CB9E1@x12.develooper.com> <200706221100.12383.chromatic@wgz.org> <20070622112511.6aee3cae@chirp>
In-Reply-To: <20070622112511.6aee3cae@chirp>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706221240.06075.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

On Friday 22 June 2007 11:25:11 Mark Glines wrote:

> Since I have a little more time, this patch is the same thing, but I
> used a slightly less stupid regex for my search/replace this time, so
> it caught more cases. (Previous regex was too dependent on commas and
> missed things like string_from_cstring(interp, ",", 0), oops.)
>
> Oh, and I didn't forget about the *.ops files this time around, so
> they're fixed up too.

Thanks, applied as r19260.

-- c

   

x ��
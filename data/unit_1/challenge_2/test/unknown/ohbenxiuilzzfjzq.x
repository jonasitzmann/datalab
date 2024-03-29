From beginners-return-92682-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:06:14 2007
Return-Path: <beginners-return-92682-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MN6DL9010524
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:06:13 -0400
Received: (qmail 19994 invoked by uid 514); 22 Jun 2007 21:34:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19985 invoked from network); 22 Jun 2007 21:34:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 21:34:53 -0000
Received: (qmail 21278 invoked by uid 225); 22 Jun 2007 21:34:53 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21264 invoked by alias); 22 Jun 2007 21:34:52 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.231 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.231)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 14:34:49 -0700
Received: by nz-out-0506.google.com with SMTP id x7so1042677nzc
        for <beginners@perl.org>; Fri, 22 Jun 2007 14:34:43 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Ns2tALqBRHbyXE3V45/++vx3HL8KS6O7fvByREY09ppZqB0qyegXZLfa5PyIEDlpF5BuA2Se0Pl6mPpZk3WnO6OF0cWkhE3OViMV1tCn40ne/1j8EcIs1GAmiB2d5ElRavW2OIA2E+0q5hZ/2a60B5vB+0y9EcbnNWXZdMqzoFA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=uQsuKXevldr1oR6g8wpeMxGACk1hif0iT1gK9NzPab9MkMyp6whtHRLz57/aUkUkOs/Ah5HCG+/hNFYtlXzQD9L77v3rU8jKac/FFEx0TmZ6wgBZfDf/EVPjTSr3vJ4cgS8ethuQlrbW9ZYFyQBa3yRRP5/Z5UHKwD0tZ1YjYZM=
Received: by 10.114.199.1 with SMTP id w1mr3345734waf.1182548083359;
        Fri, 22 Jun 2007 14:34:43 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 22 Jun 2007 14:34:43 -0700 (PDT)
Message-ID: <58ce48dc0706221434k2fc6a3afj372635aaf67cff5d@mail.gmail.com>
Date: Fri, 22 Jun 2007 17:34:43 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: a_arya2000 <a_arya2000@yahoo.com>
Subject: Re: Uninstalling a PERL module
Cc: beginners@perl.org
In-Reply-To: <58ce48dc0706221409g58a95a1fhc1c7864260448afd@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <882559.44783.qm@web60124.mail.yahoo.com>
	 <58ce48dc0706221404ga390e20k5d4ba04b753ea5a@mail.gmail.com>
	 <58ce48dc0706221409g58a95a1fhc1c7864260448afd@mail.gmail.com>

On 6/22/07, Chas Owens <chas.owens@gmail.com> wrote:
> On 6/22/07, Chas Owens <chas.owens@gmail.com> wrote:
> snip
> > Why do you uninstall a module in the first place?  This is something I
> > have never understood.  I have tons of modules installed and the
> > everything in @INC (baring the current directory) takes up less than
> > 50 megs, so it can't be space issues.
> snip
>
> I need more caffeine.  That should have been
>     Why do you want to uninstall a module in the first place?
> and
>     (barring the current directory)
> I am not even sure how to bare a directory, but it sounds nasty.
>

Just because I was curious* about exactly how much space was eaten up
by my Perl modules:

#!/usr/bin/perl

use strict;
use File::Find;

my $size;

find(
        sub { $size += (stat $File::Find::name)[7] },
        grep { $_ ne '.' } @INC #ignore current directory
);

my $k = $size/1024;
my $m = $k/1024;
my $g = $m/1024;
printf "Modules take up %d bytes or %.2f k or %.2f megs %.2f gigs\n",
        $size, $k, $m, $g;


* one-liner: perl -MFile::Find -le
'pop@INC;find(sub{$s+=(stat)[7]},@INC);print$s'

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

z9rawk.fCt
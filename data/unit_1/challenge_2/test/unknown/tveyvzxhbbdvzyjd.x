From beginners-return-92913-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 18:44:12 2007
Return-Path: <beginners-return-92913-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TMiCL9031967
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 18:44:12 -0400
Received: (qmail 20738 invoked by uid 514); 29 Jun 2007 22:43:31 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 30144 invoked from network); 29 Jun 2007 15:00:14 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of alex.jamestin@gmail.com designates 209.85.132.241 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=GjXCN4nitNLCUawRm8+yuriEMfHZW3hjhEWVTlkiA+ID1JdB1TRh92pwJA99QZ3IVyBp3rp69MUpbOR8riRmZ4KeyJcI4erN3c9o/QSrYHhQ4QuqZ4LCzbWp5ewfmM3bX7pMVyj3dirwy4E8iX7o6xkdMPuYmzqmucmERBXff4A=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=rAgKXC00c3GqolpspFwev5Cj2tRX71UBPtNudsdeByo1cnIcZVpY0xdw9M2jf/3Fl3BJ4HgMnoI2OZnZlqie2kmtaGTnWpf3fUoqVx7K1maLZwg2jWHuTKuYRyRYHHViXLTRiMdSTP/D2E8Qc2IVSWkZrPl5t7vzkT79CTitURU=
Message-ID: <36d2ae560706290800g65c29343j4d0d59f0224a5729@mail.gmail.com>
Date: Fri, 29 Jun 2007 20:30:02 +0530
From: "Alex Jamestin" <alex.jamestin@gmail.com>
To: "Chas Owens" <chas.owens@gmail.com>
Subject: Re: How can i make a perl program lauch another perl program that takes options
Cc: "Perl Beginners" <beginners@perl.org>
In-Reply-To: <36d2ae560706290734k61a8fe11q491d98e69f9345d3@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
	 <58ce48dc0706290604n6df3210cj7bbeecf5b7ec3587@mail.gmail.com>
	 <36d2ae560706290610k54a2d56dx880bdd47f9e7aa8f@mail.gmail.com>
	 <36d2ae560706290621u79eb2467t6755cc3048f2024@mail.gmail.com>
	 <58ce48dc0706290702v27dc96e1ge4a5448b27902570@mail.gmail.com>
	 <36d2ae560706290717i508af525te4a66ecdb4b9c2c5@mail.gmail.com>
	 <58ce48dc0706290723q36092d8aj365a66ca117c166d@mail.gmail.com>
	 <36d2ae560706290734k61a8fe11q491d98e69f9345d3@mail.gmail.com>

Tried that but it still won't work. Doh! Stupid bug :\

I'd run this test script below -

#! /usr/bin/perl
use strict;
use warnings;

my $vplan_parent_path = "\/pdd\/qes\/vsuites\/vplan";


system("perl $vplan_parent_path\/vplan_all.pl") == 0
   or die "perl blew up: $!";


And the o/p got is -

vp_all: USAGE: perl vplan_all.pl <Version> <Build> <File_name_to_be_created>

perl blew up: No such file or directory at test2.pl line 8.


Interesting thing is, while perl locates the second perl prog
successfully - it still calls die after that.


Anyways, gotta leave for friday (I'm on the other side of the world :))
Thx,
Alex

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




8ienOimsrlt ai
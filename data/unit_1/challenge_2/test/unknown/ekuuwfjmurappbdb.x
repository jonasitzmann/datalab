From perl6-all-return-81725-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 17:44:47 2007
Return-Path: <perl6-all-return-81725-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51LijhB015173
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 17:44:45 -0400
Received: (qmail 6782 invoked by uid 514); 1 Jun 2007 21:44:39 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6777 invoked from network); 1 Jun 2007 21:44:38 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: moderator for perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
In-Reply-To: <200706011326.23992.chromatic@wgz.org>
References: <20070601202152.33278CB9B8@x12.develooper.com> <200706011326.23992.chromatic@wgz.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <5EECFE3C-3A37-42B7-AAF8-9D1AFD98C423@petdance.com>
Cc: parrot-porters@perl.org
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: [svn:parrot] r18726 - trunk/include/parrot
Date: Fri, 1 Jun 2007 15:30:57 -0500
To: chromatic <chromatic@wgz.org>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE


On Jun 1, 2007, at 3:26 PM, chromatic wrote:

>> Log:
>> Add function attributes for noreturn to help GCC
>
> Are those C89 attributes?  Do they break other compilers?

They're stolen from p5, and they're macros that go away if you don't  
define things like -DHASATTRIBUTE_NORETURN.

I'm all over the portability, c.

xoxo,
Andy

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance






F mv C0arTW
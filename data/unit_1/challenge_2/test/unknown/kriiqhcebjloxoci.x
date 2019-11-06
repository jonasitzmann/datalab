From perl6-all-return-81872-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 09:47:16 2007
Return-Path: <perl6-all-return-81872-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l57DlFhB002835
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 09:47:15 -0400
Received: (qmail 23288 invoked by uid 514); 7 Jun 2007 13:47:07 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23282 invoked from network); 7 Jun 2007 13:47:07 -0000
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
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
In-Reply-To: <20070607123403.GA28246@kirk.peters.homeunix.org>
References: <FAB3A5D1-5681-4720-8C07-2EC1A57153B4@petdance.com> <20070607123403.GA28246@kirk.peters.homeunix.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <9B045020-5F85-4397-9D25-11DDFE8E241A@petdance.com>
Cc: perl6-internals List <perl6-internals@perl.org>
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: Building with icc
Date: Thu, 7 Jun 2007 08:46:15 -0500
To: Steve Peters <steve@fisharerojo.org>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME


On Jun 7, 2007, at 7:34 AM, Steve Peters wrote:

>
> perl Configure.pl --cc=icc --link=icc --ld=icc

I get test many warnings when I run this, and then when I try to run  
make I get

andy@uniqua[~/parrot]$ make
Compiling with:
xx.c
icc -I./include -D_REENTRANT -D_GNU_SOURCE -pipe -Wdeclaration-after- 
statement -I/usr/local/include -D_LARGEFILE_SOURCE - 
D_FILE_OFFSET_BITS=64 -I/usr/include/gdbm -fPIC -g -fPIC -I. -o xx.o - 
c xx.c
/usr/bin/perl tools/build/ops2c.pl C --core
/usr/bin/perl tools/build/ops2c.pl CSwitch --core
src/ops/core_ops.c
icc: command line warning #10156: ignoring option '-W'; no argument  
required
icc: error #10149: option '-cxxlib-gcc' not supported with the  
current installed GCC
make: *** [src/ops/core_ops.o] Error 1

What is icc looking for in gcc that I don't have?


--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




  

Pe0Xefr 
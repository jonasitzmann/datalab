From perl6-all-return-81802-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 17:02:50 2007
Return-Path: <perl6-all-return-81802-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54L2mhB032709
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 17:02:49 -0400
Received: (qmail 27491 invoked by uid 514); 4 Jun 2007 21:02:42 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 27486 invoked from network); 4 Jun 2007 21:02:42 -0000
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
Date: Mon, 4 Jun 2007 13:39:01 -0700
From: Mark Glines <mark@glines.org>
To: chromatic <chromatic@wgz.org>
Cc: perl6-internals@perl.org, parrotbug@parrotcode.org
Subject: Re: GC bug on freebsd/x86, triggered by a perl6 test
Message-ID: <20070604133901.6330f443@chirp>
In-Reply-To: <200706041307.18113.chromatic@wgz.org>
References: <20070604124945.36989852@chirp>
	<200706041307.18113.chromatic@wgz.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.12; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Mon, 4 Jun 2007 13:07:18 -0700
chromatic <chromatic@wgz.org> wrote:

> On Monday 04 June 2007 12:49:45 Mark Glines wrote:
> 
> > (the LD_LIBRARY_PATH bit is required on freebsd so parrot can find
> > libparrot.so.)
> 
> The GNU linker supports a flag to mark a relocatable shared library.
> From my Makefile:
> 
> 	 -Wl,-rpath=/home/chromatic/dev/parrot/blib/lib
> 
> I don't know which linker you use on FreeBSD, but is there a similar
> flag?  If so, using it could clear up some of the dynamic loading
> problems (especially for dynops and dynpmcs).

$ ld --version
GNU ld version 2.15 [FreeBSD] 2004-05-23

So it probably supports that flag.  I know next to nothing about
FreeBSD, but here's how libparrot.so.* is currently linked:

cc -shared  -L/usr/local/lib -Wl,-E -L/usr/local/lib -o blib/lib/libparrot.so.0.4.12 -Wl,-soname=libparrot.so.0.4.12 [list of objects] -lm -lcrypt -lutil -pthread -lreadline


Soo... is that just something missing from the freebsd hints file,
then?

Mark

              

3vr9rotasQ>r
From perl6-all-return-82269-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:37:54 2007
Return-Path: <perl6-all-return-82269-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNbrL9011110
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:37:53 -0400
Received: (qmail 15675 invoked by uid 514); 22 Jun 2007 20:01:13 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 15670 invoked from network); 22 Jun 2007 20:01:12 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: [perl #43187] [BUG] MinGW (build) busted?
Date: Fri, 22 Jun 2007 12:52:59 -0700
User-Agent: KMail/1.9.6
Cc: Ron Blaschke (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-43187@perl.org> <466DA1AD.9090809@rblasch.org> <rt-3.6.HEAD-7948-1181712506-1050.43187-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-7948-1181712506-1050.43187-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706221252.59501.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Tuesday 12 June 2007 22:28:26 Ron Blaschke wrote:

> I tried to build r18933 and received the following error message:
>
> ...
> src\global_setup.c
> src\interpreter.c
> In file included from src\interpreter.c:38:
> ./include/parrot/oplib/core_ops.h:1: internal compiler error:
> Segmentation fault
> Please submit a full bug report,
> with preprocessed source if appropriate.
> See <URL:http://www.mingw.org/bugs.shtml> for instructions.
> mingw32-make: *** [src\interpreter.o] Error 1
>
> FWIW, the last successful smoke seems to be r18881 on 2007-06-08. [1]

Sorry for the delay.  Can you provide a backtrace?

-- c

           

3s	333nmr
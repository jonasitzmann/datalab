From beginners-return-92490-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 14:20:44 2007
Return-Path: <beginners-return-92490-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GIKgL9018238
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 14:20:43 -0400
Received: (qmail 10260 invoked by uid 514); 16 Jun 2007 18:20:36 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 10242 invoked from network); 16 Jun 2007 18:20:34 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 16 Jun 2007 18:20:34 -0000
Received: (qmail 9315 invoked by uid 225); 16 Jun 2007 18:20:34 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9310 invoked by alias); 16 Jun 2007 18:20:34 -0000
X-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.166.177 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.177)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 16 Jun 2007 11:20:30 -0700
Received: by py-out-1112.google.com with SMTP id f47so2408417pye
        for <beginners@perl.org>; Sat, 16 Jun 2007 11:20:26 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=hLwsPh1EMhTE2r1UOla1MiZv1saiM3iKEktRl5l2TyK0jpOU7M85f751ElUUPgvu5tJbSMDnHgIzlnNjoDpJF0vPOd64LAJLjQDgfYM9blAxk1EpET5/rUkyyL0l3ioZcqOSSa9SebAkvzhJN67p2iyUpcdi6h88YpEiasW7Fj0=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=G8qU2ZSIo/pgO4VMLixr9iRFh0EiQKhRc0i8LzBuI3PBF0RQYjp7SIansizu985agLyPkIpvA6/dbZleabto1F7Otd/tjR6Sy8utv+p9wU0tmOVCAMAR9SyPhn8OcP9UmT59qG5WPLdt5a23UjwwyKcjZdMzobX6HTI9PDV/9xs=
Received: by 10.114.14.1 with SMTP id 1mr4356126wan.1182018025627;
        Sat, 16 Jun 2007 11:20:25 -0700 (PDT)
Received: by 10.115.54.19 with HTTP; Sat, 16 Jun 2007 11:20:25 -0700 (PDT)
Message-ID: <58ce48dc0706161120gf416f40x41804579b7f10c92@mail.gmail.com>
Date: Sat, 16 Jun 2007 14:20:25 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: sivasakthi <msivasakthi@gmail.com>
Subject: Re: Comparing the Perl encrypted files
Cc: "Jenda Krynicky" <Jenda@krynicky.cz>, beginners@perl.org
In-Reply-To: <1181966034.2496.1.camel@sim-co.kovaiteam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181903790.3743.3.camel@sim-co.kovaiteam.com>
	 <46729A8D.2868.B034110@Jenda.Krynicky.cz>
	 <1181909217.3743.16.camel@sim-co.kovaiteam.com>
	 <58ce48dc0706150729h658e70ebi5721f99fa17d956e@mail.gmail.com>
	 <1181966034.2496.1.camel@sim-co.kovaiteam.com>

On 6/15/07, sivasakthi <msivasakthi@gmail.com> wrote:
>
> > text mode: Line endings are translated to/from Perl's end-of-line
> > character "\n" to the host operating system's end-of-line character
> > (CRLF for DOS based machines, LF for UNIX based machines, etc.)
> >
> > binary mode (aka raw): No translations are made.  Characters/bytes are
> > written directly to the file.
> >
> > encryption: A method of making data (hopeful) unreadable, but
> > recoverable, using an algorithm.  The output can be either binary or
> > text depending on the algorithm.
> >
> > Do you want to compare two binary files to see if they have the same contents?
>
>
> Yes..i need  to compare the contents of  two binary files..

Alright, now that we understand what you want the question becomes why?

Why use Perl?  Is this part of some larger script?
Is an approximation of equality good enough?
Are we talking about equality or equivalence (every byte the same or
contains the same records, but possibly in a different order)?
How large are the files?

Here is a simple script that will compare two or more files in a
binary fashion, but it is no better than the standard Unix utilities.

#!/usr/bin/perl

use strict;
use warnings;

die "you must specify at least two files\n" unless @ARGV >= 2;

my @files = map { open my $f, '<', $_ or die "could not open $_"; $f } @ARGV;

$/ = \4096;

my $chunk = 0;
while (1) {
        my @chunks = grep { defined } map { scalar <$_> } @files;

        last if @chunks == 0;

        die "files don't match\n" unless @chunks == @files;

        my $first = shift @chunks;
        die "files don't match\n" if grep { $_ ne $first } @chunks;
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

PlhH2oonn
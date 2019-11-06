From beginners-return-92626-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 09:04:08 2007
Return-Path: <beginners-return-92626-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LD47L9024090
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 09:04:07 -0400
Received: (qmail 7139 invoked by uid 514); 21 Jun 2007 13:03:55 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7129 invoked from network); 21 Jun 2007 13:03:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 13:03:53 -0000
Received: (qmail 13146 invoked by uid 225); 21 Jun 2007 13:03:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13136 invoked by alias); 21 Jun 2007 13:03:52 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 204.209.205.52 as permitted sender)
Received: from mx01.telus.net (HELO defout.telus.net) (204.209.205.52)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 06:03:48 -0700
Received: from priv-edmwaa12.telusplanet.net ([154.20.131.28])
          by priv-edmwes34.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070621130344.YVHY26880.priv-edmwes34.telusplanet.net@priv-edmwaa12.telusplanet.net>
          for <beginners@perl.org>; Thu, 21 Jun 2007 07:03:44 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edmwaa12.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id FBJREX5Q2G
	for <beginners@perl.org>; Thu, 21 Jun 2007 07:03:44 -0600 (MDT)
Message-ID: <467A772F.7010804@telus.net>
Date: Thu, 21 Jun 2007 06:03:43 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: read a list of subdirectories
References: <58ff33550706210515o264c9ccdp5a129856cb6789e9@mail.gmail.com>
In-Reply-To: <58ff33550706210515o264c9ccdp5a129856cb6789e9@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Luba Pardo wrote:
> Dear list,

Hello,

> I want to parse through some files of a list of directories. Every 
> directory
> have the same files, which means that I can make a loop and repeat the
> process for each directory. I managed to write the code to process the 
> files
> of a single directory but I do not exaclty how to read a list of 
> directories
> and open one by one. I can only print the directories that are in the
> parental directory , but I can't make the script to open the directory and
> read the list of files. I do not what is the function to use to either open
> everydir or read the 'subdirectories'. I hope someone can help
> The beginning of the script looks like:
> 
> #! /usr/bin/perl
> use strict;
> use warnings;
> 
> my $pwd=$ENV{'PWD'};

use Cwd;

my $pwd = cwd;


>  my @filedir =<*ctt>;

You are populating @filedir with all entries ending in 'ctt', including those 
that are *not* subdirectories.


>  foreach my $filedir (@filedir) {
>      opendir ($filedir) || die  "can't \n";

perldoc -f opendir

You need a directory handle (same as open() needs a filehandle.)  You should 
also include the $! variable in the error message so you know *why* it failed.


>       my @f = <mlc*>;

You are populating @f with all entries beginning in 'mlc' in the *current* 
*directory*, not in the $filedir directory.


>       foreach my $f(@f) {
>    open (IN,"$f") or die "$!\n";

perldoc -q quoting

You are trying to open the file $f in the *current* *directory*, not in the 
$filedir directory.


>    print "$f\n";
>    my @a2= (<IN>);
>   ...

You *may* want someting like this (UNTESTED):

#!/usr/bin/perl
use strict;
use warnings;

use Cwd;

my $pwd = cwd;

for my $filedir ( grep -d, <*ctt> ) {
     for my $f ( grep -f, <$filedir/mlc*> ) {
         open my $IN, '<', $f or die "Cannot open '$f' $!\n";
         print "$f\n";
         my @a2 = <$IN>;
         ...




John
-- 
Perl isn't a toolbox, but a small machine shop where you
can special-order certain sorts of tools at low cost and
in short order.                            -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

Gey  
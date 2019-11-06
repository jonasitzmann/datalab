From beginners-return-92062-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 10:31:40 2007
Return-Path: <beginners-return-92062-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51EVZhB010933
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 10:31:39 -0400
Received: (qmail 29460 invoked by uid 514); 1 Jun 2007 14:31:23 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29451 invoked from network); 1 Jun 2007 14:31:23 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 14:31:23 -0000
Received: (qmail 7966 invoked by uid 225); 1 Jun 2007 14:31:23 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7957 invoked by alias); 1 Jun 2007 14:31:22 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from nemesis.sciencephoto.co.uk (HELO nemesis.sciencephoto.co.uk) (194.200.237.131)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 07:29:13 -0700
Received: from [194.200.237.196] (helo=[194.200.237.196])
	by nemesis.sciencephoto.co.uk with esmtp (Exim 4.50)
	id 1Hu87n-0003fP-TF
	for beginners@perl.org; Fri, 01 Jun 2007 15:29:08 +0100
From: "Beginner" <dermot@sciencephoto.com>
To: beginners@perl.org
Date: Fri, 01 Jun 2007 15:29:03 +0100
MIME-Version: 1.0
Subject: Algorithm or module needed 
Message-ID: <46603B3F.23143.2A6306BB@dermot.sciencephoto.com>
Priority: normal
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

Hi,

I am trying to copy some file from a removable HDD to a network 
drive. I want replicate the directory structure and omit un-needed 
files.

The directory paths a 4-5 levels deep and I am trying to work out an 
efficient way to recreate the directory path.

What I've been doing is using File::Find to collect the file and then 
in the coderef calling the following subroutine to check the path but 
i didn't go too far as my method seems....well not well formed.

The path to a source file looks like:

e:/Dir1/Day 1/AM/01/myfile.jpg


use strict;
use warnings;
...
...snip

sub check_dir {

# @_ = File::Find::dir

 my $path = shift;
 return unless (-e $path);

# Split the path on it's parts.
 my @parts = split('/',$path);

# Loop from 1 to skip the first part of the path.
 for (my $i = 1; $i <= $#parts; ++$i)  {

	my $l = $dist.'/'.$parts[$i];
	if (! -e $l) {
		print "Checking $l\n";
		my $j = $i + 1;			# urg!
		my $lev = $dist.'/'.$parts[$i].'/'.$parts[$j];
		if (! -e $lev) {
			print "Checking $lev\n";
		}
	}
 }

Can anyone offer me some advice with this?
Thanx,
Dp.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

iy@<U

From beginners-return-92624-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 08:15:19 2007
Return-Path: <beginners-return-92624-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LCFIL9023573
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 08:15:18 -0400
Received: (qmail 15013 invoked by uid 514); 21 Jun 2007 12:15:11 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15004 invoked from network); 21 Jun 2007 12:15:11 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 12:15:11 -0000
Received: (qmail 17676 invoked by uid 225); 21 Jun 2007 12:15:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17667 invoked by alias); 21 Jun 2007 12:15:10 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of lubapardo@gmail.com designates 209.85.146.183 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 05:15:07 -0700
Received: by wa-out-1112.google.com with SMTP id v27so288967wah
        for <beginners@perl.org>; Thu, 21 Jun 2007 05:15:03 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
        b=AV5B/4vWyhRokXIjFEkjnYHiardbsxYhA6N/PQm0hC00DnRTm7bC+UiikQLPoBfvzV1fmgXkTylkwixcNHCDeMXI/UWJ5EM4fdnY3uQFrhzbYUXObrlWBQvPVREZ9dBechhG+j4UMYpPQODShnaao2LlfteMWAWj3ujWqTAJYlY=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type;
        b=F9y89hGgNGIPL3rDXyPFaDesY96LzekI2NHENdaDcv85H3j9CD/nlhefV5RrYrofNnWfNw0JA+FlnXYUerpu7x57gYuJ9QKroQqrCGWBtQPT6PbtxKfp9WxiH2fUKVxr4WxmvNfhfe1PIvPyH/GUXWfP5OqUckpseS1Hxlsw9Ko=
Received: by 10.114.80.4 with SMTP id d4mr1528166wab.1182428103108;
        Thu, 21 Jun 2007 05:15:03 -0700 (PDT)
Received: by 10.114.208.17 with HTTP; Thu, 21 Jun 2007 05:15:03 -0700 (PDT)
Message-ID: <58ff33550706210515o264c9ccdp5a129856cb6789e9@mail.gmail.com>
Date: Thu, 21 Jun 2007 14:15:03 +0200
From: "Luba Pardo" <lubapardo@gmail.com>
To: beginners@perl.org
Subject: read a list of subdirectories
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_131881_9822094.1182428103083"

------=_Part_131881_9822094.1182428103083
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Dear list,
I want to parse through some files of a list of directories. Every directory
have the same files, which means that I can make a loop and repeat the
process for each directory. I managed to write the code to process the files
of a single directory but I do not exaclty how to read a list of directories
and open one by one. I can only print the directories that are in the
parental directory , but I can't make the script to open the directory and
read the list of files. I do not what is the function to use to either open
everydir or read the 'subdirectories'. I hope someone can help
The beginning of the script looks like:

#! /usr/bin/perl
use strict;
use warnings;

 my $pwd=$ENV{'PWD'};
  my @filedir =<*ctt>;
  foreach my $filedir (@filedir) {
      opendir ($filedir) || die  "can't \n";
       my @f = <mlc*>;
       foreach my $f(@f) {
    open (IN,"$f") or die "$!\n";
    print "$f\n";
    my @a2= (<IN>);
   ...



Thanks in advance,

L. Pardo

------=_Part_131881_9822094.1182428103083--

            

o.4ecuy9  F
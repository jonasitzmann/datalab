From beginners-return-92389-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 06:02:59 2007
Return-Path: <beginners-return-92389-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EA2wL9019920
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 06:02:58 -0400
Received: (qmail 19492 invoked by uid 514); 14 Jun 2007 10:02:52 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19480 invoked from network); 14 Jun 2007 10:02:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 10:02:51 -0000
Received: (qmail 11092 invoked by uid 225); 14 Jun 2007 10:02:50 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11080 invoked by alias); 14 Jun 2007 10:02:49 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jalmeida@math.ist.utl.pt designates 193.136.196.1 as permitted sender)
Received: from cubo.math.ist.utl.pt (HELO cubo.math.ist.utl.pt) (193.136.196.1)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 03:02:47 -0700
Received: from jmaa.math.ist.utl.pt (jmaa.math.ist.utl.pt [193.136.196.112])
	by cubo.math.ist.utl.pt (8.13.8/8.13.6) with ESMTP id l5EA4qe1008299
	for <beginners@perl.org>; Thu, 14 Jun 2007 11:04:52 +0100
Received: (qmail 3076 invoked from network); 14 Jun 2007 11:04:51 +0100
Received: from unknown (HELO localhost) (127.0.0.1)
  by localhost with SMTP; 14 Jun 2007 11:04:51 +0100
Date: Thu, 14 Jun 2007 11:04:51 +0100 (WEST)
From: Jorge Almeida <jalmeida@math.ist.utl.pt>
To: beginners@perl.org
Subject: regexp problem
Message-ID: <Pine.LNX.4.64.0706141057570.2747@jmaa.math.ist.utl.pt>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed

I'm missing something about Perl's regexp:

   1 #!/usr/bin/perl -w
   2 use strict;
   3 my $s=<STDIN>;
   4 $s=~s/\D*//;
   5 $s=~s/\D*//;
   6 print "$s\n";

When input is 'a123b', I get '123b', but I expected '123'. I know I
can substitute line 4 by '$s=~s/\D*//g;' and comment out line 5. It will
work then, but that is not the point. I could also substitute line 5 by
'$s=~s/\D+//;' and it would also work...

-- 
Jorge Almeida

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

onco3nleWr�3 ioQ
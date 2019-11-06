From beginners-return-92401-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 07:37:25 2007
Return-Path: <beginners-return-92401-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EBbOL9020799
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 07:37:24 -0400
Received: (qmail 2686 invoked by uid 514); 14 Jun 2007 11:37:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2677 invoked from network); 14 Jun 2007 11:37:18 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 11:37:18 -0000
Received: (qmail 25489 invoked by uid 225); 14 Jun 2007 11:37:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25479 invoked by alias); 14 Jun 2007 11:37:17 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from grant.njpservices.com (HELO smtp.njpservices.co.uk) (84.45.106.4)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 04:37:13 -0700
Received: from [85.92.161.155] (85-92-161-155.eurisp.net [85.92.161.155] (may be forged))
	by smtp.njpservices.co.uk (8.10.2/8.10.2) with ESMTP id l5EBb1F08581;
	Thu, 14 Jun 2007 12:37:01 +0100
Message-ID: <4671285E.9020009@350.com>
Date: Thu, 14 Jun 2007 12:37:02 +0100
From: Rob Dixon <rob.dixon@350.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: beginners@perl.org
CC: Jorge Almeida <jalmeida@math.ist.utl.pt>
Subject: Re: regexp problem
References: <Pine.LNX.4.64.0706141057570.2747@jmaa.math.ist.utl.pt>
In-Reply-To: <Pine.LNX.4.64.0706141057570.2747@jmaa.math.ist.utl.pt>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Jorge Almeida wrote:
> I'm missing something about Perl's regexp:
> 
>   1 #!/usr/bin/perl -w
>   2 use strict;
>   3 my $s=<STDIN>;
>   4 $s=~s/\D*//;
>   5 $s=~s/\D*//;
>   6 print "$s\n";
> 
> When input is 'a123b', I get '123b', but I expected '123'. I know I
> can substitute line 4 by '$s=~s/\D*//g;' and comment out line 5. It will
> work then, but that is not the point. I could also substitute line 5 by
> '$s=~s/\D+//;' and it would also work...

The * quantifier allows for zero or more occurrences of the pattern, so
the regex successfully matches zero non-digits at the start of the
string and the substitution has no effect.

HTH,

Rob

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

hei2c
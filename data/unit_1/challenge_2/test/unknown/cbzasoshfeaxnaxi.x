From beginners-return-92390-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 06:05:07 2007
Return-Path: <beginners-return-92390-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EA56L9019952
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 06:05:06 -0400
Received: (qmail 22087 invoked by uid 514); 14 Jun 2007 10:04:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22069 invoked from network); 14 Jun 2007 10:04:54 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 10:04:54 -0000
Received: (qmail 12212 invoked by uid 225); 14 Jun 2007 10:04:54 -0000
Delivered-To: beginners@perl.org
Received: (qmail 12200 invoked by alias); 14 Jun 2007 10:04:53 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from sd-green-bigip-177.dreamhost.com (HELO spaceymail-a3.g.dreamhost.com) (208.97.132.177)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 03:04:51 -0700
Received: from [192.168.1.65] (unknown [89.129.74.5])
	by spaceymail-a3.g.dreamhost.com (Postfix) with ESMTP id A0742194E60
	for <beginners@perl.org>; Thu, 14 Jun 2007 03:04:45 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <Pine.LNX.4.64.0706141057570.2747@jmaa.math.ist.utl.pt>
References: <Pine.LNX.4.64.0706141057570.2747@jmaa.math.ist.utl.pt>
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <67A31BBA-0203-48DD-9FDC-FC8200573C03@hashref.com>
Content-Transfer-Encoding: 7bit
From: Xavier Noria <fxn@hashref.com>
Subject: Re: regexp problem
Date: Thu, 14 Jun 2007 12:04:43 +0200
To: Perl List <beginners@perl.org>
X-Mailer: Apple Mail (2.752.3)

On Jun 14, 2007, at 12:04 PM, Jorge Almeida wrote:

> I'm missing something about Perl's regexp:
>
>   1 #!/usr/bin/perl -w
>   2 use strict;
>   3 my $s=<STDIN>;
>   4 $s=~s/\D*//;
>   5 $s=~s/\D*//;
>   6 print "$s\n";
>
> When input is 'a123b', I get '123b', but I expected '123'.

   s/\D+//g;

-- fxn


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

i-hDtf
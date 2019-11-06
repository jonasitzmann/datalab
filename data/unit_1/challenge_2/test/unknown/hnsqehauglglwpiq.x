From beginners-return-92101-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 09:06:00 2007
Return-Path: <beginners-return-92101-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52D5whB023321
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 09:05:59 -0400
Received: (qmail 30800 invoked by uid 514); 2 Jun 2007 13:05:48 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 30790 invoked from network); 2 Jun 2007 13:05:45 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jun 2007 13:05:45 -0000
Received: (qmail 9220 invoked by uid 225); 2 Jun 2007 13:05:45 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9215 invoked by alias); 2 Jun 2007 13:05:45 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from grant.njpservices.com (HELO smtp.njpservices.co.uk) (84.45.106.4)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 02 Jun 2007 06:05:38 -0700
Received: from [85.92.161.130] (85-92-161-130.eurisp.net [85.92.161.130] (may be forged))
	by smtp.njpservices.co.uk (8.10.2/8.10.2) with ESMTP id l52D5PF19745;
	Sat, 2 Jun 2007 14:05:27 +0100
Message-ID: <46616B29.7000404@350.com>
Date: Sat, 02 Jun 2007 14:05:45 +0100
From: Rob Dixon <rob.dixon@350.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: beginners perl <beginners@perl.org>
CC: Andrej Kastrin <andrej.kastrin@siol.net>
Subject: Re: Equal keys in hash
References: <46616260.1010000@siol.net>
In-Reply-To: <46616260.1010000@siol.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Andrej Kastrin wrote:
> Deal all,
> 
> if the key already exists in the hash, then its value is overwritten. 
> So, if I have the following structure of the input file
> 
> A foo
> A faa
> A hoo
> B foo
> B aaa
> C bbb
> 
> what is the procedure of choice to store all key-value pairs into the 
> hash and print it out?
> 
> Thanks in advance for any suggestion.

Does this do what you want?

use strict;
use warnings;

my %data;

while (<DATA>) {
  my ($key, $val) = split;
  push @{$data{$key}}, $val;
}

foreach my $key (sort keys %data) {

  foreach my $val (@{$data{$key}}) {
    printf "%s %s\n", $key, $val;
  }
}

__END__
A foo
A faa
A hoo
B foo
B aaa
C bbb


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

ifgcTbhw
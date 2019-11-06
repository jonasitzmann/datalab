From beginners-return-92902-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 09:27:58 2007
Return-Path: <beginners-return-92902-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TDRwL9026291
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 09:27:58 -0400
Received: (qmail 19585 invoked by uid 514); 29 Jun 2007 13:27:50 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19574 invoked from network); 29 Jun 2007 13:27:49 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 13:27:49 -0000
Received: (qmail 30673 invoked by uid 225); 29 Jun 2007 13:27:48 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30664 invoked by alias); 29 Jun 2007 13:27:47 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.178 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 06:27:43 -0700
Received: by wa-out-1112.google.com with SMTP id v27so746471wah
        for <beginners@perl.org>; Fri, 29 Jun 2007 06:27:39 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=DtuCeWgtrqhNnzAqh65PX2DNFncsZe3O2HzixfZOZIuRuG/BZlbGWGMWVM5/fFkWU/WPyS1mxNuvAsu5QrYr96srMwI2RlchcSCeMivJaU3kVF1y8B/qJGHgNA5EjvAKffe/fTBbOyVEdraD/2AoPzUw6ltUuP7cHj/0dI+BYNY=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=WVPXcgEZjhHY8qpemecx+W1nQWeZMu4P3eeUWUhuDoDhj6He/SAS88JW3rCIcj96MCmzWSq7GrftXwXU+xNmGoIzvpPoD9QwWd72aYUdoQw1/Q6sZfAhoplYbNPyRW12oj/Ty9p/i1s3lMHD+/T9TApIpYL0GopbGVpZZIY3EZM=
Received: by 10.114.175.16 with SMTP id x16mr2633033wae.1183123659068;
        Fri, 29 Jun 2007 06:27:39 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 29 Jun 2007 06:27:39 -0700 (PDT)
Message-ID: <58ce48dc0706290627r5792a834pecebb65a949cc28d@mail.gmail.com>
Date: Fri, 29 Jun 2007 09:27:39 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: sum_duud <Turnbull.Glenn@gmail.com>
Subject: Re: Splitting a CSV file at a variable number
Cc: beginners@perl.org
In-Reply-To: <1183008026.745722.111610@n2g2000hse.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183008026.745722.111610@n2g2000hse.googlegroups.com>

On 6/28/07, sum_duud <Turnbull.Glenn@gmail.com> wrote:
> in essence I would like the perl script to output all the fourth
> column "0" values to a file called phase_0.csv and all the "1" values
> to phase_1.csv etc.
snip

use an array of file handles (warning, untested):

use strict;
use warnings;

open my $in, '<', "phase.csv" or die "Could not open phase.csv: $!\n";
<$in>; #discard first line

my @file = map {
    open my $fh, '>', "phase_$_.csv"
        or die "could not open phase_$_.csv: $!";
    $fh
} 0 .. 20;

while (<$in>) {
    chomp;
    my ($x, $y, $z, $phase) =split /\s*,\s*/;
    my $file = $file[$phase];
    print $file "$x, $y, $z, $phase\n";
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

et .r
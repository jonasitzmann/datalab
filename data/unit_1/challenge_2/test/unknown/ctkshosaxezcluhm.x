From beginners-return-92223-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 03:17:12 2007
Return-Path: <beginners-return-92223-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l587GohB012058
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 03:17:11 -0400
Received: (qmail 15341 invoked by uid 514); 8 Jun 2007 07:16:31 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15327 invoked from network); 8 Jun 2007 07:16:31 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 8 Jun 2007 07:16:31 -0000
Received: (qmail 16601 invoked by uid 225); 8 Jun 2007 07:16:30 -0000
Delivered-To: beginners@perl.org
Received: (qmail 16595 invoked by alias); 8 Jun 2007 07:16:30 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.183 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 08 Jun 2007 00:16:27 -0700
Received: by wa-out-1112.google.com with SMTP id v27so1000038wah
        for <beginners@perl.org>; Fri, 08 Jun 2007 00:16:23 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=fXUlB9tUakZjit4rtF4GrShE175bjl3eXb6GZAXuOLtsSRn7NHh/dJROEJfUUqNn2879fVS815dMHGvnSb0CUaUhX6Aa34qUG5AnrAna+ZtiodqqcSqc0IKGc+NdxzUz5EB25g1lZPs+N5m004mKiHTNTlKvhtAKnVZzOCvjeGY=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=cgowK2+tYRZnv+vkdCzk02aU99IgQ3IqJ+aDoAHpRmJrS7C6IiHeAITRaFCfdXXNmiAZvtg4gMUJ8v0ivurrye+UVeJSjCrUUZMltXEVZYQduJS+qGXNRVOi4onGj//jUl7M+RKIbvEfrF08vpce0U1cqhaQXjU4qLo/WgF5AVw=
Received: by 10.114.155.1 with SMTP id c1mr2326971wae.1181286983628;
        Fri, 08 Jun 2007 00:16:23 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Fri, 8 Jun 2007 00:16:23 -0700 (PDT)
Message-ID: <58ce48dc0706080016w5fe5cdd2x6a425a5a2d753757@mail.gmail.com>
Date: Fri, 8 Jun 2007 03:16:23 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Juan Pablo Feria Gomez" <jferiago@gmail.com>
Subject: Re: Running perl program at startup
Cc: beginners@perl.org
In-Reply-To: <eeced11a0706072239s50e93d49s7b3e6764370b5ee@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <eeced11a0706072239s50e93d49s7b3e6764370b5ee@mail.gmail.com>

On 6/8/07, Juan Pablo Feria Gomez <jferiago@gmail.com> wrote:
> Hi all, I need to start a perl daemon at an BSD's startup (rc.local,
> not interactive), i found the way to run the script as a daemon, but i
> want:
>
> a) Send all the output to an tty , say, go to tty6 (ctrl+alt+F6) and
> see the output of my perl daemon
>
> b) Interact (if possible) on that TTY with the daemon...
>
> Is this possible? dows anybody have any pointers to modules or -web
> search terms- to find documentation on this?
>
> Thanks in advance


Writing to /dev/tty6 as root works on my Linux box.

#!/usr/bin/perl

use strict;
use warnings;

my $console = '/dev/tty6';

open my $out, '>', $console
        or die "could not open $console\n";

select $out;

my $cont = 1;
$SIG{TERM} = sub { $cont = 0 };
while ($cont) {
        print localtime() . "\r\n";
        sleep 2;
}
print "all done\n";

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

 3ihap+n 
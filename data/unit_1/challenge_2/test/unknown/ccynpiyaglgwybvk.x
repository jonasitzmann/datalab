From beginners-return-92323-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 16:28:53 2007
Return-Path: <beginners-return-92323-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CKSqL9031506
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 16:28:52 -0400
Received: (qmail 2157 invoked by uid 514); 12 Jun 2007 20:28:48 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2128 invoked from network); 12 Jun 2007 20:28:47 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 20:28:47 -0000
Received: (qmail 17166 invoked by uid 225); 12 Jun 2007 20:28:47 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17135 invoked by alias); 12 Jun 2007 20:28:46 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.230 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.230)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 13:28:43 -0700
Received: by nz-out-0506.google.com with SMTP id x7so1778145nzc
        for <beginners@perl.org>; Tue, 12 Jun 2007 13:28:39 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=EGpEq3vyDcctpDBvvNu/vF90TH3xgRluti2P1m8MLd62dF5Nx4DQwTialPj6EACw+fbUdgtQZIQDPGdgyPXF8Bw38LVkkKOLQaVOWEBH2RxZF2oHGppuhlx/006t6R9GxSl/jHwh9jVuoFRFnwdjseOL3BXt5jM3BYPo4HMpxtc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Gj4sFoc48tfgV2Vguvl+daKtIFH0Du4klSR/4n2vGWokkE3Uw2V+6G8mVmhqynBBe3NCjMBlWOX7a8HkkCJllSZlOKKvJwsy2j1u7xIarHDTsMVGxanMsQHMBLjZYXcyr4DnQV+l2GlGwjRlNOVxngJu6dyM8mIdxXgSHo+KrU4=
Received: by 10.114.109.1 with SMTP id h1mr7067304wac.1181680118538;
        Tue, 12 Jun 2007 13:28:38 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Tue, 12 Jun 2007 13:28:38 -0700 (PDT)
Message-ID: <58ce48dc0706121328p557ac2d2i343bd693ce09d880@mail.gmail.com>
Date: Tue, 12 Jun 2007 16:28:38 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: lakshmi.sailaja@supersolution.com
Subject: Re: Net::Telnet - Variable in Prompt
Cc: "Martin Barth" <martin@senfdax.de>, beginners@perl.org
In-Reply-To: <EIEIIAMKDIBPECOEKDIKAEMKCDAA.lakshmi.sailaja@supersolution.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070612212240.1b4e09e1@nietzsche>
	 <EIEIIAMKDIBPECOEKDIKAEMKCDAA.lakshmi.sailaja@supersolution.com>

On 6/12/07, Lakshmi Sailaja <lakshmi.sailaja@supersolution.com> wrote:
> But it did not work. I was getting the below error:
>         "timed-out waiting for command prompt at <file name> line <line number>"
snip

This code works for me.

#!/usr/bin/perl

use strict;
use warnings;

use Net::Telnet;

#my propmt is /home/user>
my $prompt = '>$';

my $t = Net::Telnet->new(
        Timeout => 10,
        Prompt  => "/$prompt/"
);

$t->open("widomaker.com");
$t->login("user", "pass");
my @lines = $t->cmd("who");
print @lines;

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

+t. 
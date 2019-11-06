From beginners-return-92889-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 08:40:24 2007
Return-Path: <beginners-return-92889-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TCeLL9025691
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:40:22 -0400
Received: (qmail 2745 invoked by uid 514); 29 Jun 2007 12:40:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2732 invoked from network); 29 Jun 2007 12:40:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 12:40:09 -0000
Received: (qmail 2881 invoked by uid 225); 29 Jun 2007 12:40:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2872 invoked by alias); 29 Jun 2007 12:40:08 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pearl.ibctech.ca (HELO pearl.ibctech.ca) (208.70.104.210)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 05:40:00 -0700
Received: (qmail 41910 invoked by uid 1002); 29 Jun 2007 12:39:54 -0000
Received: from iaccounts@ibctech.ca by pearl.ibctech.ca by uid 89 with qmail-scanner-1.22 
 (spamassassin: 2.64.  Clear:RC:1(208.70.107.100):. 
 Processed in 6.105641 secs); 29 Jun 2007 12:39:53 -0000
Received: from unknown (HELO ?192.168.1.210?) (steve@ibctech.ca@208.70.107.100)
  by pearl.ibctech.ca with (DHE-RSA-AES256-SHA encrypted) SMTP; 29 Jun 2007 12:39:47 -0000
Message-ID: <4684FD9B.4060103@ibctech.ca>
Date: Fri, 29 Jun 2007 08:39:55 -0400
From: Steve Bertrand <iaccounts@ibctech.ca>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: "alex.jamestin+usenet@gmail.com" <alex.jamestin@gmail.com>
CC: beginners@perl.org
Subject: Re: How can i make a perl program lauch another perl program that
 takes options
References: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
In-Reply-To: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
X-Enigmail-Version: 0.95.1
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

alex.jamestin+usenet@gmail.com wrote:
> Hi all,
> 
> Any help on this would be appreciated :)
> 
> Currently I have a perl program thats required to call another perl
> program. The second one takes arguments and can be called as:
> 
>             perl vplan_all.pl 5.6 24.0 ajtest
> 
> Here 5.6, 24.0 and ajtest are all command line options.
> 
> I have to call this from a second program that i wrote. I tried the
> call as below -
> 
>           system( "perl vplan_all.pl 5.6 24.0")
>             or die "Couldn't run the vplan_all.pl script: $!\n";
> 
> However, this doesn't seem to work. The shell reports that perl can't
> find the file. However, when i simply try with -
> 
>           system( "perl vplan_all.pl")
>             or die "Couldn't run the vplan_all.pl script: $!\n";
> 
> The script is now called and i get the result -
> 
>           vp_all: USAGE: perl vplan_all.pl <Version> <Build>
> <File_name_to_be_created>
> 
> which is the expected behaviour when no options are provided.
> So apparently the shell calls perl and passes the entire "perl
> vplan_all.pl 5.6 24.0" as a chunk. Perl can't then seem to
> differentiate between the code name and the options.
> 
> I've tried bypassing the shell [ system(xxx,xxx,xx)] but that doesn't
> seem to help.

If vplan_all.pl is in fact it's own application, try calling it without
calling Perl first:

system("/path/to/program/vp_all.pl arg1 arg2") or die "blah blah: $!";

BTW, AFAIR, inserting a \n after the $! will negate the $!, but I may be
mistaken.

Steve

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

say0Sn
sIo
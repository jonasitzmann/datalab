From beginners-return-92387-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 04:33:29 2007
Return-Path: <beginners-return-92387-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5E8XSL9019114
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 04:33:29 -0400
Received: (qmail 28864 invoked by uid 514); 14 Jun 2007 08:33:24 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28855 invoked from network); 14 Jun 2007 08:33:23 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 08:33:23 -0000
Received: (qmail 1898 invoked by uid 225); 14 Jun 2007 08:33:23 -0000
Delivered-To: beginners@perl.org
Received: (qmail 1889 invoked by alias); 14 Jun 2007 08:33:22 -0000
X-Spam-Status: No, hits=4.3 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,RCVD_IN_BH_CNKR,RCVD_IN_NERD_CN,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-junco.atl.sa.earthlink.net (HELO elasmtp-junco.atl.sa.earthlink.net) (209.86.89.63)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 01:33:19 -0700
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk20050327; d=earthlink.net;
  b=oz4K0iJw+4WJbhAlZTrJE6mPiNO1/qh+3I0sPYQVrg+7VVCfARd8fu5AZ8xntD6e;
  h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-ELNK-Trace:X-Originating-IP;
Received: from [219.137.200.59] (helo=[192.168.1.225])
	by elasmtp-junco.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1HyklX-0000sK-3S; Thu, 14 Jun 2007 04:33:15 -0400
Message-ID: <4670FD41.90202@earthlink.net>
Date: Thu, 14 Jun 2007 16:33:05 +0800
From: Jeff Pang <pangj@earthlink.net>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: "faceman28208@yahoo.com" <faceman28208@yahoo.com>
CC: beginners@perl.org
Subject: Re: 'Keys' Question
References: <1181763536.085667.274520@e26g2000pro.googlegroups.com>
In-Reply-To: <1181763536.085667.274520@e26g2000pro.googlegroups.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ELNK-Trace: 7070c57df59c6c2974bf435c0eb9d478ef9d46f14f0b08ba26306a7f588d89fef3955f778df1f3fd350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 219.137.200.59

faceman28208@yahoo.com 写道:
> New to perl (old to Ada, C, C++, COBOL, .....) ....I'm looking at some
> existing code.
> 
> 	read_config ('../config/legacyload.cfg', %ConfigFile);
> 	@TablePreReq   = keys(%ConfigFile{InputDataFile});
> 
> 
> When I run it I get the error  (v. 5.8.4):
> 
> syntax error at  cutover.pl line 318, near "%ConfigFile
> {InputDataFile"
> 

How about the structure of the hash %ConfigFile?
yes,this statement of keys(%ConfigFile{InputDataFile}) is may not right.
You may say,

keys %ConfigFile;
or,
keys %{$ConfigFile{InputDataFile}};

Based on what hash stru you have.

Please
use Data::Dumper;
print Dumper \%ConfigFile;

and show the results to us.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

etl>d rsczeua:rl
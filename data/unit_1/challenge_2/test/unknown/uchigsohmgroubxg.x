From beginners-return-92261-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  9 15:01:16 2007
Return-Path: <beginners-return-92261-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l59J1FL9013122
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 15:01:15 -0400
Received: (qmail 16979 invoked by uid 514); 9 Jun 2007 19:01:09 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16955 invoked from network); 9 Jun 2007 19:01:08 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 9 Jun 2007 19:01:08 -0000
Received: (qmail 21474 invoked by uid 225); 9 Jun 2007 19:01:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21444 invoked by alias); 9 Jun 2007 19:01:03 -0000
X-Spam-Status: No, hits=2.4 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,RCVD_IN_BH_CNKR,RCVD_IN_NERD_CN,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-kukur.atl.sa.earthlink.net (HELO elasmtp-kukur.atl.sa.earthlink.net) (209.86.89.65)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 09 Jun 2007 12:01:00 -0700
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk20050327; d=earthlink.net;
  b=WkR9Wk6alqSFdTc6uwjULmTc715bOIDMqsPn/kaPRVEVj7FDb/maZCpba4XKuCzr;
  h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-ELNK-Trace:X-Originating-IP;
Received: from [218.20.52.157] (helo=[192.168.2.194])
	by elasmtp-kukur.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1Hx2Yg-0005IG-DF; Sat, 09 Jun 2007 11:08:54 -0400
Message-ID: <466AC27D.4010100@earthlink.net>
Date: Sat, 09 Jun 2007 23:08:45 +0800
From: Jeff Pang <pangj@earthlink.net>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: ash <ashishrai@gmail.com>
CC: beginners@perl.org
Subject: Re: Removing decimal points
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
In-Reply-To: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ELNK-Trace: 7070c57df59c6c2974bf435c0eb9d478ef9d46f14f0b08badc9429618896c622839848bf58fae6a0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 218.20.52.157

ash 写道:
> Hello there!
> 
> I need to remove decimal points from numbers. For eg 1.23 or 1.77
> would be just 1. Any suggestion is appreciated. Thank you.
> 
> 

is int() ok?

print int(1.77); would get 1.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

lwg 
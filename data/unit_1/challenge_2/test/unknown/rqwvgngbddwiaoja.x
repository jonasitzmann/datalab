From beginners-return-92617-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 02:02:15 2007
Return-Path: <beginners-return-92617-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5L62FL9020364
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 02:02:15 -0400
Received: (qmail 22544 invoked by uid 514); 21 Jun 2007 06:02:09 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22523 invoked from network); 21 Jun 2007 06:02:08 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 06:02:08 -0000
Received: (qmail 607 invoked by uid 225); 21 Jun 2007 06:02:08 -0000
Delivered-To: beginners@perl.org
Received: (qmail 601 invoked by alias); 21 Jun 2007 06:02:07 -0000
X-Spam-Status: No, hits=6.4 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,RCVD_IN_BH_CNKR,RCVD_IN_CBL,RCVD_IN_NERD_CN,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-curtail.atl.sa.earthlink.net (HELO elasmtp-curtail.atl.sa.earthlink.net) (209.86.89.64)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 23:02:03 -0700
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk20050327; d=earthlink.net;
  b=Zno33nMvNk5rvtS3ZUAo1+PYMl/GPh6g+ghl/NL2Vwx65OaFA2kinjckUCOpDtIl;
  h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-ELNK-Trace:X-Originating-IP;
Received: from [61.144.20.86] (helo=[192.168.1.225])
	by elasmtp-curtail.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I1Fjy-0006sc-AZ; Thu, 21 Jun 2007 02:01:58 -0400
Message-ID: <467A144C.2090706@earthlink.net>
Date: Thu, 21 Jun 2007 14:01:48 +0800
From: Jeff Pang <pangj@earthlink.net>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Andreas Moroder <andreas.moroder@sb-brixen.it>
CC: beginners@perl.org
Subject: Re: compare two arrays
References: <f5d10c$f5b$1@sea.gmane.org>
In-Reply-To: <f5d10c$f5b$1@sea.gmane.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ELNK-Trace: 7070c57df59c6c2974bf435c0eb9d478eee15ddb228a014aa313a27de39bf97703fa6f1fdbbd810a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 61.144.20.86

Andreas Moroder 写道:
> Hello,
> 
> I have two arrays with strings and I have to find out the differences 
> between this arrays. Is a perl function available that does this ?
> 

Hello,
You may try this module:
http://search.cpan.org/~typester/Array-Diff-0.04/lib/Array/Diff.pm

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

oDsZK
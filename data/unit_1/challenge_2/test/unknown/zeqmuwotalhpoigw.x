From beginners-return-92504-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 07:25:04 2007
Return-Path: <beginners-return-92504-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HBP3L9006464
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 07:25:03 -0400
Received: (qmail 21164 invoked by uid 514); 17 Jun 2007 11:24:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 21155 invoked from network); 17 Jun 2007 11:24:58 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 17 Jun 2007 11:24:58 -0000
Received: (qmail 2710 invoked by uid 225); 17 Jun 2007 11:24:57 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2699 invoked by alias); 17 Jun 2007 11:24:56 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from ms-smtp-03.ohiordc.rr.com (HELO ms-smtp-03.ohiordc.rr.com) (65.24.5.137)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 17 Jun 2007 04:24:51 -0700
Received: from janus.tacocat.net (cpe-65-29-101-30.twmi.res.rr.com [65.29.101.30])
	by ms-smtp-03.ohiordc.rr.com (8.13.6/8.13.6) with ESMTP id l5HBOf5p018723;
	Sun, 17 Jun 2007 07:24:41 -0400 (EDT)
Received: from [192.168.1.247] (ws247.tacocat.net [192.168.1.247])
	by janus.tacocat.net (Postfix) with ESMTP id EC1644C064;
	Sun, 17 Jun 2007 07:24:40 -0400 (EDT)
In-Reply-To: <20070617101908.28069.qmail@lists.develooper.com>
References: <46743A15.3030206@tacocat.net> <20070617101908.28069.qmail@lists.develooper.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
X-Priority: 3
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <67593405-E95C-43F8-A2DC-0BB476DA5F79@tacocat.net>
Cc: beginners@perl.org
Content-Transfer-Encoding: 7bit
From: Tom Allison <tom@tacocat.net>
Subject: Re: character encoding & regex
Date: Sun, 17 Jun 2007 07:24:39 -0400
To: "Dr.Ruud" <rvtol+news@isolution.nl>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: Symantec AntiVirus Scan Engine


On Jun 17, 2007, at 6:14 AM, Dr.Ruud wrote:

>
> Tom Allison schreef:
>
>> I'm trying to do some regular expression on strings in email. They
>> could be encoded to something.  But I can't tell because I don't have
>> a utf8 unicode xterm window that will show me anything.
>
> There are more simple ways to find out, see charnames and perlunitut.
> http://search.cpan.org/perldoc?charnames
> http://search.cpan.org/perldoc?perlunitut
>
> I would first convert to a common base, like UTF-8, before trying to
> match strings. Are you talking about raw mail messages? Consider
> SpamAssassin and custom rules.

I don't require actual character comparison, comparison of \{263a} is  
sufficient.
And it's rather difficult to determine in raw email what the correct  
charset is to use for each string.  I find that email sometimes  
passes multiple encodings in one message making it more difficult to  
pick apart.

The point that I'm coming from is post MIME::Parse which does a good  
job of parsing out messages but I'm not sure how to manage the  
decoding in every case.  It's hard to find good examples sometimes.

As for SpamAssassin.  I'm trying to stay away from that because it's  
very large and from a development perspective -- badly documented in  
the code.  Basically, SpamAssassin is capable for what it does, but I  
don't exactly want to do that.  Similar, yet, but not exactly.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

$TsWulM�siSS
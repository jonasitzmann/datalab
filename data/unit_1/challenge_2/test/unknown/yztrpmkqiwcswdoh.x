From beginners-return-92269-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  9 19:35:03 2007
Return-Path: <beginners-return-92269-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l59NZ3L9015556
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 19:35:03 -0400
Received: (qmail 23225 invoked by uid 514); 9 Jun 2007 23:34:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 23216 invoked from network); 9 Jun 2007 23:34:58 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 9 Jun 2007 23:34:58 -0000
Received: (qmail 32066 invoked by uid 225); 9 Jun 2007 23:34:58 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32059 invoked by alias); 9 Jun 2007 23:34:57 -0000
X-Spam-Status: No, hits=-0.4 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from sumo.dreamhost.com (HELO sumo.dreamhost.com) (66.33.216.29)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 09 Jun 2007 16:34:56 -0700
Received: from spaceymail-a1.g.dreamhost.com (sd-green-bigip-74.dreamhost.com [208.97.132.74])
	by sumo.dreamhost.com (Postfix) with ESMTP id 590D317C87D
	for <beginners@perl.org>; Fri,  8 Jun 2007 16:43:59 -0700 (PDT)
Received: from [192.168.1.65] (unknown [89.129.38.165])
	by spaceymail-a1.g.dreamhost.com (Postfix) with ESMTP id 3E68A81729
	for <beginners@perl.org>; Fri,  8 Jun 2007 16:43:30 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <F570D17A-3F6F-40FF-A2E8-AEC740FCF1F6@hashref.com>
Content-Transfer-Encoding: 7bit
From: Xavier Noria <fxn@hashref.com>
Subject: Re: Removing decimal points
Date: Sat, 9 Jun 2007 01:43:24 +0200
To: Perl List <beginners@perl.org>
X-Mailer: Apple Mail (2.752.3)

On Jun 8, 2007, at 9:52 PM, ash wrote:

> I need to remove decimal points from numbers. For eg 1.23 or 1.77
> would be just 1. Any suggestion is appreciated. Thank you.

Use de int() function.

-- fxn




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

i:"nn h1p
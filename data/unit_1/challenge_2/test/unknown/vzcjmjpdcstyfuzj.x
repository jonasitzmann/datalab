From beginners-return-92259-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  9 14:51:50 2007
Return-Path: <beginners-return-92259-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l59IpmL9013025
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 14:51:49 -0400
Received: (qmail 9801 invoked by uid 514); 9 Jun 2007 18:51:43 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9792 invoked from network); 9 Jun 2007 18:51:43 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 9 Jun 2007 18:51:43 -0000
Received: (qmail 13969 invoked by uid 225); 9 Jun 2007 18:51:42 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13321 invoked by alias); 9 Jun 2007 18:50:53 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from smtp.njpservices.co.uk (HELO smtp.njpservices.co.uk) (84.45.106.4)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 09 Jun 2007 11:50:51 -0700
Received: from [85.92.161.155] (85-92-161-155.eurisp.net [85.92.161.155] (may be forged))
	by smtp.njpservices.co.uk (8.10.2/8.10.2) with ESMTP id l590hdF02884;
	Sat, 9 Jun 2007 01:43:40 +0100
Message-ID: <4669F7BF.6010000@350.com>
Date: Sat, 09 Jun 2007 01:43:43 +0100
From: Rob Dixon <rob.dixon@350.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: beginners@perl.org
CC: ash <ashishrai@gmail.com>
Subject: Re: Removing decimal points
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
In-Reply-To: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

ash wrote:
> 
> I need to remove decimal points from numbers. For eg 1.23 or 1.77
> would be just 1. Any suggestion is appreciated. Thank you.

You need the int() function.

perldoc -f int

Rob

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

YmGN
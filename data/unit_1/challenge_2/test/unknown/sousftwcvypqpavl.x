From beginners-return-93021-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 02:05:30 2007
Return-Path: <beginners-return-93021-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l6465TL9006498
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 02:05:30 -0400
Received: (qmail 15824 invoked by uid 514); 4 Jul 2007 06:05:20 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15815 invoked from network); 4 Jul 2007 06:05:20 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 06:05:20 -0000
Received: (qmail 26203 invoked by uid 225); 4 Jul 2007 06:05:19 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26196 invoked by alias); 4 Jul 2007 06:05:19 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 204.209.205.52 as permitted sender)
Received: from mx01.telus.net (HELO mx01.telus.net) (204.209.205.52)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 23:05:17 -0700
Received: from priv-edmwaa05.telusplanet.net ([154.20.131.28])
          by priv-edmwes24.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070704060513.DFMW765.priv-edmwes24.telusplanet.net@priv-edmwaa05.telusplanet.net>
          for <beginners@perl.org>; Wed, 4 Jul 2007 00:05:13 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edmwaa05.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id F7JQGX0V61
	for <beginners@perl.org>; Wed,  4 Jul 2007 00:05:13 -0600 (MDT)
Message-ID: <468B3898.9030800@telus.net>
Date: Tue, 03 Jul 2007 23:05:12 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: hash comparison ideas
References: <1183514264.855772.317770@q69g2000hsb.googlegroups.com>
In-Reply-To: <1183514264.855772.317770@q69g2000hsb.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

thebarncat@gmail.com wrote:
> Hi

Hello,

> I have  a script which contains 2 hashes of file names as the keys and
> md5 sums as the values. I am looking for ideas on fast and efficient
> ways to compare the 2 hashes in the manner of the pseudo code below

Can you fill us in on the big picture?  Perhaps you need a hash of arrays 
where the keys are the md5 sums and the values are arrays of file names?


John
-- 
Perl isn't a toolbox, but a small machine shop where you
can special-order certain sorts of tools at low cost and
in short order.                            -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

letA:bo�{20NcD
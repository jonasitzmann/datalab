From beginners-return-92170-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 15:15:18 2007
Return-Path: <beginners-return-92170-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l55JFGhB012842
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 15:15:17 -0400
Received: (qmail 7115 invoked by uid 514); 5 Jun 2007 19:14:59 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7105 invoked from network); 5 Jun 2007 19:14:58 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jun 2007 19:14:58 -0000
Received: (qmail 32635 invoked by uid 225); 5 Jun 2007 19:14:58 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32627 invoked by alias); 5 Jun 2007 19:14:57 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 05 Jun 2007 12:11:19 -0700
Received: (qmail 5248 invoked by uid 515); 5 Jun 2007 19:11:15 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Tue Jun 05 19:11:13 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 5235 invoked from network); 5 Jun 2007 19:11:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jun 2007 19:11:12 -0000
Received: (qmail 30854 invoked by uid 225); 5 Jun 2007 19:11:12 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 30846 invoked by alias); 5 Jun 2007 19:11:11 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 05 Jun 2007 12:10:27 -0700
Received: from [64.233.184.4] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1HveQ9-00044q-Qb
	for perl-beginners@moderators.isc.org; Tue, 05 Jun 2007 21:10:22 +0200
Received: from AR020007
	by proxy.google.com with ESMTP id l55JAG7x029611
	for <perl-beginners@moderators.isc.org>; Tue, 5 Jun 2007 12:10:16 -0700
Received: (from news@localhost)
	by Google Production id l55JAF5N006105
	for perl-beginners@moderators.isc.org; Tue, 5 Jun 2007 12:10:15 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Command Splice()
Date: Tue, 05 Jun 2007 12:10:15 -0700
Organization: http://groups.google.com
Lines: 23
Message-ID: <1181070615.772087.98470@p47g2000hsd.googlegroups.com>
References: <3F12C523D4B6F947A38E9B8DA2773E20014784@ZAU1UG-0312.DHSNET.DS1.DHS>
   <4665A097.4020205@earthlink.net>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181070615 6104 127.0.0.1 (5 Jun 2007 19:10:15 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Tue, 5 Jun 2007 19:10:15 +0000 (UTC)
In-Reply-To: <4665A097.4020205@earthlink.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: p47g2000hsd.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 5, 1:42 pm, mumia.w.18.spam+nos...@earthlink.net (Mumia W.)
wrote:
> On 06/05/2007 08:38 AM, Xu, Lizhe wrote:

> > I am confused about what the splice command does with the shift
> > command and what the result of the command. Thanks.
>
> Hello Lizhe. When you want information about a Perl function, you can
> get it using the "perldoc" utility, like so:
>
> Start->Run->"perldoc -f splice"

Or, if you'd prefer the manpage not disappear as you're reading the
last page...
Start->Run->cmd
then type 'perldoc -f splice' into the black box.

Or, presuming you have the Activestate distrobution,
Start->All Programs->ActivePerl->Documentation
and just click on perlfunc on the left side frame.

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

-
es N
From beginners-return-92353-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 09:40:45 2007
Return-Path: <beginners-return-92353-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DDeiL9008155
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 09:40:44 -0400
Received: (qmail 11972 invoked by uid 514); 13 Jun 2007 13:40:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 11937 invoked from network); 13 Jun 2007 13:40:36 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 13:40:36 -0000
Received: (qmail 3605 invoked by uid 225); 13 Jun 2007 13:40:36 -0000
Delivered-To: beginners@perl.org
Received: (qmail 3591 invoked by alias); 13 Jun 2007 13:40:35 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 13 Jun 2007 06:40:24 -0700
Received: (qmail 11932 invoked by uid 515); 13 Jun 2007 13:40:20 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 13 13:40:20 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 11922 invoked from network); 13 Jun 2007 13:40:19 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 13:40:19 -0000
Received: (qmail 3450 invoked by uid 225); 13 Jun 2007 13:40:19 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 3443 invoked by alias); 13 Jun 2007 13:40:18 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 06:40:17 -0700
Received: from [64.233.171.4] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1HyT52-0001kV-80
	for perl-beginners@moderators.isc.org; Wed, 13 Jun 2007 15:40:12 +0200
Received: from AR019023
	by proxy.google.com with ESMTP id l5DDeAnR006302
	for <perl-beginners@moderators.isc.org>; Wed, 13 Jun 2007 06:40:11 -0700
Received: (from news@localhost)
	by Google Production id l5DDeAHv022531
	for perl-beginners@moderators.isc.org; Wed, 13 Jun 2007 06:40:10 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Set up env variables on Linux
Date: Wed, 13 Jun 2007 06:40:09 -0700
Organization: http://groups.google.com
Lines: 26
Message-ID: <1181742009.491908.143210@z28g2000prd.googlegroups.com>
References: <1181712365.105629.20720@g37g2000prf.googlegroups.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181742010 22530 127.0.0.1 (13 Jun 2007 13:40:10 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 13 Jun 2007 13:40:10 +0000 (UTC)
In-Reply-To: <1181712365.105629.20720@g37g2000prf.googlegroups.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: z28g2000prd.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 13, 1:26 am, emenzhaow...@gmail.com (Emenzhaow...@Gmail.Com)
wrote:

> I'm pretty new to Perl. I was trying to write up a perl script that
> can help set up my working env, for example, once log into Linux
> server, run the perl script, it'll move to another folder and
> configure some env variables.
>
> I tried using
> `cd dest_folder`                       or
> system "cd dest_folder"           or
> exec "cd dest_folder"
>
> but after running script, the current folder doesn't change at all.
> Anyone please shed some lights on this.

perldoc -q environment

In short, you can't.  A child process (ie, your Perl script) cannot
affect the environment of its parent process.  (ie, your shell)

This has nothing to do with Perl, and everything to do with how Unix
works.

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

ef6-mUo
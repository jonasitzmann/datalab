From beginners-return-92056-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 08:52:40 2007
Return-Path: <beginners-return-92056-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51CqchB009904
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 08:52:39 -0400
Received: (qmail 19380 invoked by uid 514); 1 Jun 2007 12:52:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19371 invoked from network); 1 Jun 2007 12:52:26 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 12:52:26 -0000
Received: (qmail 21870 invoked by uid 225); 1 Jun 2007 12:52:26 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21855 invoked by alias); 1 Jun 2007 12:52:25 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Fri, 01 Jun 2007 05:51:35 -0700
Received: (qmail 15768 invoked by uid 515); 1 Jun 2007 12:44:10 -0000
To: beginners@perl.org, perl-beginners@moderators.isc.org
MBOX-Line: From news@google.com Fri Jun 01 12:44:09 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 15686 invoked from network); 1 Jun 2007 12:44:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 12:44:09 -0000
Received: (qmail 16669 invoked by uid 225); 1 Jun 2007 12:44:08 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 16636 invoked by alias); 1 Jun 2007 12:44:06 -0000
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
Received: from trinity.supernews.net (HELO trinity.supernews.net) (216.168.1.22)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 05:43:57 -0700
Received: from proxy.google.com ([64.233.171.4]:7709)
	by trinity.supernews.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.66 (FreeBSD))
	(envelope-from <news@google.com>)
	id 1Hu6Tl-0005dZ-Vb
	for perl-beginners@moderators.isc.org; Fri, 01 Jun 2007 12:43:42 +0000
Received: from AR020007
	by proxy.google.com with ESMTP id l51ChVfW005699
	for <perl-beginners@moderators.isc.org>; Fri, 1 Jun 2007 05:43:31 -0700
Received: (from news@localhost)
	by Google Production id l51ChVCD010676
	for perl-beginners@moderators.isc.org; Fri, 1 Jun 2007 05:43:31 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: /s, /g and /m modifiers
Date: Fri, 01 Jun 2007 05:43:31 -0700
Organization: http://groups.google.com
Lines: 7
Message-ID: <1180701811.018890.20310@h2g2000hsg.googlegroups.com>
References: <8a31202a0706010154g49b56edbyeeeb5efad5098bcb@mail.gmail.com>
   <1180696574.821519.113550@o5g2000hsb.googlegroups.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1180701811 10675 127.0.0.1 (1 Jun 2007 12:43:31 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 1 Jun 2007 12:43:31 +0000 (UTC)
In-Reply-To: <1180696574.821519.113550@o5g2000hsb.googlegroups.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: h2g2000hsg.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 1, 7:16 am, mri...@gmail.com (Paul Lalli) wrote:
> the string "onex\ntwox" will match /o(.*)x/ by setting $1 to 'on'.  

Obviously, I meant $1 would be set to "ne".  My bad.

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

l N8Z6it
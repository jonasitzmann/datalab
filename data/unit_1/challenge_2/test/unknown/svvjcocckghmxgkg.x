From beginners-return-92678-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:21:06 2007
Return-Path: <beginners-return-92678-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNL5L9010895
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:21:05 -0400
Received: (qmail 31777 invoked by uid 514); 22 Jun 2007 20:50:36 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31758 invoked from network); 22 Jun 2007 20:50:35 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 20:50:35 -0000
Received: (qmail 30544 invoked by uid 225); 22 Jun 2007 20:50:35 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30539 invoked by alias); 22 Jun 2007 20:50:34 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Fri, 22 Jun 2007 13:50:25 -0700
Received: (qmail 31705 invoked by uid 515); 22 Jun 2007 20:50:21 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 22 20:50:20 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 31691 invoked from network); 22 Jun 2007 20:50:19 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 20:50:19 -0000
Received: (qmail 30391 invoked by uid 225); 22 Jun 2007 20:50:19 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 30378 invoked by alias); 22 Jun 2007 20:50:17 -0000
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
Received: from trinity.supernews.net (HELO trinity.supernews.net) (216.168.1.22)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 13:50:14 -0700
Received: from proxy.google.com ([64.233.171.4]:62800)
	by trinity.supernews.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.66 (FreeBSD))
	(envelope-from <news@google.com>)
	id 1I1q53-000GZw-6j
	for perl-beginners@moderators.isc.org; Fri, 22 Jun 2007 20:50:09 +0000
Received: from AR020007
	by proxy.google.com with ESMTP id l5MKnsD5022687
	for <perl-beginners@moderators.isc.org>; Fri, 22 Jun 2007 13:49:59 -0700
Received: (from news@localhost)
	by Google Production id l5MKnsYe008075
	for perl-beginners@moderators.isc.org; Fri, 22 Jun 2007 13:49:54 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Redirecting file handler to STDOUT (SOLVED)
Date: Fri, 22 Jun 2007 20:49:53 -0000
Organization: http://groups.google.com
Lines: 13
Message-ID: <1182545393.435393.71730@d30g2000prg.googlegroups.com>
References: <32b873ff0706221043k6928e2dao28d45e37c654b3f8@mail.gmail.com>
NNTP-Posting-Host: 74.70.185.44
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1182545394 8072 127.0.0.1 (22 Jun 2007 20:49:54 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 22 Jun 2007 20:49:54 +0000 (UTC)
In-Reply-To: <32b873ff0706221043k6928e2dao28d45e37c654b3f8@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: d30g2000prg.googlegroups.com; posting-host=74.70.185.44;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 22, 1:43 pm, funkyt...@gmail.com (Ben Edwards) wrote:
> Cool, the * is by reference.

If you re-read my post, you will see the word "reference" no where in
it.  This has nothing to do with references.  It involves typeglobs.

By the way, this is now the third time (that I've noticed) that you've
started a new thread to say that your problem has been solved.  It is
conventional to reply to the same thread that has already been
started.  Thank you.

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

-N7 gWft
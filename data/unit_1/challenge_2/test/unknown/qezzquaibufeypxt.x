From beginners-return-92105-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 16:42:25 2007
Return-Path: <beginners-return-92105-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52KgMhB027920
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 16:42:23 -0400
Received: (qmail 29692 invoked by uid 514); 2 Jun 2007 20:42:12 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29682 invoked from network); 2 Jun 2007 20:42:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jun 2007 20:42:12 -0000
Received: (qmail 4456 invoked by uid 225); 2 Jun 2007 20:42:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4447 invoked by alias); 2 Jun 2007 20:42:11 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sat, 02 Jun 2007 13:41:54 -0700
Received: (qmail 29665 invoked by uid 515); 2 Jun 2007 20:41:51 -0000
To: beginners@perl.org, perl-beginners@moderators.isc.org
MBOX-Line: From news@google.com Sat Jun 02 20:41:50 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 29646 invoked from network); 2 Jun 2007 20:41:50 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jun 2007 20:41:50 -0000
Received: (qmail 4276 invoked by uid 225); 2 Jun 2007 20:41:49 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 4271 invoked by alias); 2 Jun 2007 20:41:49 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 02 Jun 2007 13:41:47 -0700
Received: from [64.233.181.4] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1HuaPv-0005LZ-3Y
	for perl-beginners@moderators.isc.org; Sat, 02 Jun 2007 22:41:43 +0200
Received: from AR019023
	by proxy.google.com with ESMTP id l52KfgbS017413
	for <perl-beginners@moderators.isc.org>; Sat, 2 Jun 2007 13:41:42 -0700
Received: (from news@localhost)
	by Google Production id l52KfgO0024422
	for perl-beginners@moderators.isc.org; Sat, 2 Jun 2007 13:41:42 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Passing arguments
Date: Sat, 02 Jun 2007 13:41:42 -0700
Organization: http://groups.google.com
Lines: 30
Message-ID: <1180816902.117954.261090@q75g2000hsh.googlegroups.com>
References: <1180770890.347754.322420@i38g2000prf.googlegroups.com>
   <46616E41.5040900@ibctech.ca>
NNTP-Posting-Host: 74.70.185.44
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1180816902 24421 127.0.0.1 (2 Jun 2007 20:41:42 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Sat, 2 Jun 2007 20:41:42 +0000 (UTC)
In-Reply-To: <46616E41.5040900@ibctech.ca>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: q75g2000hsh.googlegroups.com; posting-host=74.70.185.44;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 2, 9:18 am, iaccou...@ibctech.ca (Steve Bertrand) wrote:
> > testsub(35);
>
> You call the sub with one parameter, integer 35. However, this won't
> work as calling the sub before the sub is defined with a prototype will
> barf with an error.

No it won't.  It will print a warning, if and only if you've enabled
warnings.

$ perl -le'
testsub(35);
sub testsub($) {
  print @_;
}
'
35

$ perl -wle'
testsub(35);
sub testsub($) {
  print @_;
}
'
main::testsub() called too early to check prototype at -e line 2.
35


Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

jtC)h5
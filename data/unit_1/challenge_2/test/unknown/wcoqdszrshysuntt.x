From beginners-return-92213-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 11:34:53 2007
Return-Path: <beginners-return-92213-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l57FYphB003895
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 11:34:52 -0400
Received: (qmail 30254 invoked by uid 514); 7 Jun 2007 15:34:39 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 30245 invoked from network); 7 Jun 2007 15:34:38 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 7 Jun 2007 15:34:38 -0000
Received: (qmail 19597 invoked by uid 225); 7 Jun 2007 15:34:38 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19579 invoked by alias); 7 Jun 2007 15:34:37 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 07 Jun 2007 08:34:27 -0700
Received: (qmail 30160 invoked by uid 515); 7 Jun 2007 15:34:22 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jun 07 15:34:21 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 30079 invoked from network); 7 Jun 2007 15:34:21 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 7 Jun 2007 15:34:21 -0000
Received: (qmail 19444 invoked by uid 225); 7 Jun 2007 15:34:20 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 19436 invoked by alias); 7 Jun 2007 15:34:20 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 07 Jun 2007 08:34:17 -0700
Received: from [64.233.171.4] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1HwK04-0005Lv-Ru
	for perl-beginners@moderators.isc.org; Thu, 07 Jun 2007 17:34:13 +0200
Received: from AR020007
	by proxy.google.com with ESMTP id l57FYCCh009574
	for <perl-beginners@moderators.isc.org>; Thu, 7 Jun 2007 08:34:12 -0700
Received: (from news@localhost)
	by Google Production id l57FYCRC021895
	for perl-beginners@moderators.isc.org; Thu, 7 Jun 2007 08:34:12 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Scalar as FileHandle
Date: Thu, 07 Jun 2007 08:34:11 -0700
Organization: http://groups.google.com
Lines: 16
Message-ID: <1181230451.940251.39010@h2g2000hsg.googlegroups.com>
References: <68CA21987619D242BD45A7E6E44C30E40B24EA4B@nypcmg1exms314.leh.lbcorp.lehman.com>
   <1181228704.599056.273580@p77g2000hsh.googlegroups.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181230452 21892 127.0.0.1 (7 Jun 2007 15:34:12 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 7 Jun 2007 15:34:12 +0000 (UTC)
In-Reply-To: <1181228704.599056.273580@p77g2000hsh.googlegroups.com>
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

On Jun 7, 11:05 am, mri...@gmail.com (Paul Lalli) wrote:
> On Jun 7, 10:53 am, rodrick.br...@lehman.com (Rodrick Brown) wrote:
>
> > Is there a simple method to read data from scalar like a file handle?
>
> Yes.  Simpler than you might imagine.  Just pass a reference to your
> scalar to open(), rather than the name of a file.

> open my $fh, '<', \$data

I should point out this only works on Perl versions 5.8 and above.  if
you have 5.6 or earlier, consider upgrading. . .

Paul Lalli



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

a  r0 iii bt/e2
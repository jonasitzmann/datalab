From beginners-return-92569-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 09:12:31 2007
Return-Path: <beginners-return-92569-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KDCUL9010236
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 09:12:31 -0400
Received: (qmail 5089 invoked by uid 514); 20 Jun 2007 13:12:23 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5066 invoked from network); 20 Jun 2007 13:12:22 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 13:12:22 -0000
Received: (qmail 3533 invoked by uid 225); 20 Jun 2007 13:12:22 -0000
Delivered-To: beginners@perl.org
Received: (qmail 3527 invoked by alias); 20 Jun 2007 13:12:21 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 20 Jun 2007 06:12:11 -0700
Received: (qmail 4749 invoked by uid 515); 20 Jun 2007 13:12:07 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 20 13:12:06 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 4704 invoked from network); 20 Jun 2007 13:12:05 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 13:12:05 -0000
Received: (qmail 3405 invoked by uid 225); 20 Jun 2007 13:12:05 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 3398 invoked by alias); 20 Jun 2007 13:12:04 -0000
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
Received: from trinity.supernews.net (HELO trinity.supernews.net) (216.168.1.22)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 06:12:02 -0700
Received: from proxy.google.com ([66.102.14.241]:15331)
	by trinity.supernews.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.66 (FreeBSD))
	(envelope-from <news@google.com>)
	id 1I0zyY-000NBj-I6
	for perl-beginners@moderators.isc.org; Wed, 20 Jun 2007 13:11:58 +0000
Received: from AR020007
	by proxy.google.com with ESMTP id l5KDBhXU029597
	for <perl-beginners@moderators.isc.org>; Wed, 20 Jun 2007 06:11:48 -0700
Received: (from news@localhost)
	by Google Production id l5KDBhEH027943
	for perl-beginners@moderators.isc.org; Wed, 20 Jun 2007 06:11:43 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Reading a particular line from a file
Date: Wed, 20 Jun 2007 06:11:43 -0700
Organization: http://groups.google.com
Lines: 29
Message-ID: <1182345103.591569.193070@q69g2000hsb.googlegroups.com>
References: <C4A55E6959ED6F498EA07FFB09DAB2E007252754@bgeexc04.asiapacific.cpqcorp.net>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1182345103 27942 127.0.0.1 (20 Jun 2007 13:11:43 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 20 Jun 2007 13:11:43 +0000 (UTC)
In-Reply-To: <C4A55E6959ED6F498EA07FFB09DAB2E007252754@bgeexc04.asiapacific.cpqcorp.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: q69g2000hsb.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 20, 7:42 am, alok.n...@hp.com (Alok Nath) wrote:

>         Is it possible to read a particular line by line number ?
>
>         For e.g reading line 3 from a file.
>
>         I don't want to read each line and count.

You don't have to count.  Perl counts for you. The current line number
is always stored in the $. variable.
my $third;
while (<$fh>) {
   if ($. == 3) {
       $third = $_;
       last;
   }
}

Alternatively, consider the Tie::File module:
#!/usr/bin/perl
use strict;
use warnings;
use Tie::File;
tie my @lines, 'Tie::File', "file.txt" or die $!;
my $third = $lines[2];
__END__

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

>2xl ei8es
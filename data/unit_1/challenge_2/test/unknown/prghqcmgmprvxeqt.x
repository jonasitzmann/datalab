From beginners-return-92630-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 09:48:47 2007
Return-Path: <beginners-return-92630-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LDmjL9024569
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 09:48:46 -0400
Received: (qmail 25014 invoked by uid 514); 21 Jun 2007 13:48:35 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25005 invoked from network); 21 Jun 2007 13:48:35 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 13:48:35 -0000
Received: (qmail 4716 invoked by uid 225); 21 Jun 2007 13:48:35 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4705 invoked by alias); 21 Jun 2007 13:48:34 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 21 Jun 2007 06:48:25 -0700
Received: (qmail 24997 invoked by uid 515); 21 Jun 2007 13:48:21 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jun 21 13:48:20 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 24985 invoked from network); 21 Jun 2007 13:48:20 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 13:48:20 -0000
Received: (qmail 4631 invoked by uid 225); 21 Jun 2007 13:48:19 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 4624 invoked by alias); 21 Jun 2007 13:48:19 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 06:48:17 -0700
Received: from [64.233.171.4] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1I1N19-00015k-RS
	for perl-beginners@moderators.isc.org; Thu, 21 Jun 2007 15:48:12 +0200
Received: from AR019023
	by proxy.google.com with ESMTP id l5LDlqds009476
	for <perl-beginners@moderators.isc.org>; Thu, 21 Jun 2007 06:48:07 -0700
Received: (from news@localhost)
	by Google Production id l5LDlqRl018083
	for perl-beginners@moderators.isc.org; Thu, 21 Jun 2007 06:47:52 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Regarding file handling
Date: Thu, 21 Jun 2007 06:47:52 -0700
Organization: http://groups.google.com
Lines: 63
Message-ID: <1182433672.340429.172880@u2g2000hsc.googlegroups.com>
References: <9f91e0840706210631g62917448s773f8dd021d1a9c1@mail.gmail.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1182433672 18082 127.0.0.1 (21 Jun 2007 13:47:52 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 21 Jun 2007 13:47:52 +0000 (UTC)
In-Reply-To: <9f91e0840706210631g62917448s773f8dd021d1a9c1@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: u2g2000hsc.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 21, 9:31 am, dharshana...@gmail.com (Dharshana Eswaran) wrote:
> Hi All,
>
> I am reading a certain data from one file and writing to another file. In
> the original file, there are few lines, which occur more than once in
> different lines. When i am writing it to the second file, i don't want it to
> be written more than once. I mean, it should not be repetitive. The file are
> just two simple text files.
>
> In achieving what i need, i thought simultaneous reading and writing to the
> file is required, to know if the lines are being written for the second
> time. But i don't know how to achieve this.
>
> A sample of the text file is shown below:
> STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T
> {
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> protocol_discriminator;
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T   transaction_id;} STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T;
> };
>
> STACK_CC_SS_COMMON_TYPE_CHANNEL_INFO_T
> {
>     STACK_CC_SS_COMMON_TYPE_CHANNEL_TYPE_T channel_type;
>     STACK_CC_SS_COMMON_TYPE_CHANNEL_MODE_T channel_mode;} STACK_CC_SS_COMMON_TYPE_CHANNEL_INFO_T;
> };
>
> STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T
> {
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_PROTOCOL_DIS_T
> protocol_discriminator;
>     STACK_CC_SS_COMMON_TYPE_REFERENCE_TRANSACTION_ID_T   transaction_id;
>
> } STACK_CC_SS_COMMON_TYPE_REFERENCE_ID_T;
> };
>

It looks as though your data is delimited by "};\n\n".  Is that
correct?  That is, each "block" of text ends with that string, and you
want to only print out the first instance of each block?  You can
control Perl's notion of what a "line" is via the $/ variable.  See
perldoc perlvar for more information.

To only print one instance of any given block, use a hash.  Each time
through your read loop, check to see if that block is in the hash.  If
it is, don't print it.  If it's not, do print it, and then add it to
the hash.  For example:

#!/usr/bin/perl
use strict;
use warnings;
open my $fh, '<', "infile.txt" or die $!;
open my $ofh, '>', "outfile.txt" or die $!;
local $/ = "};\n\n";
my %printed;
while (my $record = <$fh>) {
   print $ofh $record unless $printed{$record}++;
}
__END__

Hope that helps,
Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

ogChrg
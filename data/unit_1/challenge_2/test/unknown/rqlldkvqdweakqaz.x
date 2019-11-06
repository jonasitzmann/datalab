From beginners-return-92388-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 05:26:26 2007
Return-Path: <beginners-return-92388-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5E9QOL9019586
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 05:26:25 -0400
Received: (qmail 9003 invoked by uid 514); 14 Jun 2007 09:26:17 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8994 invoked from network); 14 Jun 2007 09:26:17 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 09:26:17 -0000
Received: (qmail 25612 invoked by uid 225); 14 Jun 2007 09:26:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25607 invoked by alias); 14 Jun 2007 09:26:16 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from lexx.senfdax.de (HELO lexx.senfdax.de) (85.10.209.43)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 02:26:07 -0700
Received: from e180230214.adsl.alicedsl.de ([85.180.230.214] helo=nietzsche)
	by lexx.senfdax.de with esmtpsa (TLS-1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <martin@senfdax.de>)
	id 1HylVW-0005Ll-W1
	for beginners@perl.org; Thu, 14 Jun 2007 11:20:54 +0200
Date: Thu, 14 Jun 2007 11:25:53 +0200
From: Martin Barth <martin@senfdax.de>
To: beginners@perl.org
Subject: Re: using a homemade perl module
Message-ID: <20070614112553.5b51a309@nietzsche>
In-Reply-To: <4670D741.3090809@yahoo.com>
References: <4670BF7B.9060000@yahoo.com>
	<4670D741.3090809@yahoo.com>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Score: -3.6 (---)
X-Spam-Report: Content analysis details:   (-3.6 points, 5.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-1.8 ALL_TRUSTED            Nachricht wurde nur über vertrauenswürdige Rechner
	weitergeleitet
	-2.6 BAYES_00               BODY: Spamwahrscheinlichkeit nach Bayes-Test: 0-1%
	[score: 0.0000]
	0.8 AWL                    AWL: From: address is in the auto white-list

Hi,

try:

use lib "/usr/local/bin/lib/";
use dates_email;

HTH Martin

On Thu, 14 Jun 2007 01:50:57 -0400
Mathew Snyder <theillien@yahoo.com> wrote:

> To take this further I've changed the code.  It now looks like this:
> 
> package dates_emails;
> require Exporter;
> use strict;
> 
> our @ISA         = qw(Exporter);
> our @EXPORT      = qw(startDate, endDate, searchStart, searchEnd);
> our @EXPORT_OK   = qw($emailTo, $emailFrom, $emailBcc);
> our %EXPORT_TAGS = {
>                 dates  => [qw(startDate, endDate, searchStart, searchEnd)],
>                 emails => [qw($emailTo, $emailFrom, $emailBcc)],
>                 };
> our $VERSION     = '1';
> 
> # Declare our global variables
> my (@days, @months, @years, @searchDate);
> my $time = time();
> 
> our $emailTo      = "user\@company.com";
> our $emailFrom    = "RT";
> our $emailBcc     = "user2\@company.com";
> 
> sub getDates {
>         for (1 .. 7) {
>                 $time -= 24*60*60;
>                 my @date = (localtime($time))[3 .. 5];
>                 push @days, (sprintf '%02d', $date[0]);
>                 push @months,(sprintf '%02d',$date[1] + 1);
>                 push @years, $date[2] + 1900;
>                 return;
> }
> 
> sub searchDate {
>         getDates();
>         push @searchDate, join "-", ($date[2] + 1900), (sprintf '%02d',$date[1]
> + 1),
> (sprintf '%02d', $date[0]);
>         return \@serchDate;
> }
> 
> sub startDate {
>         getDates();
>         $startDate   = join "-", $months[$#months], $days[$#days], $years[$#years];
>         return $startDate;
> }
> 
> sub endDate {
>         getDates();
>         $endDate     = join "-", $months[0], $days[0], $years[0];
>         return $endDate;
> }
> 
> sub searchStart {
>         getDates();
>         $searchStart = join "-", $years[$#years], $months[$#months], $days[$#days];
>         return $searchStart;
> }
> 
> sub searchEnd {
>         getDates();
>         $searchEnd   = join "-", $years[0], $months[0], $days[0];
>         return $searchEnd;
> }
> 
> return 1;
> 
> I've placed it in its own directory /usr/local/bin/lib.  I've tried using
> use '/usr/local/bin/lib/dates_email';
> use '/usr/local/bin/lib/dates_email.pm';
> use '/usr/local/bin/lib/dates_email qw/startDate/;
> use '/usr/local/bin/lib/dates_email.pm qw/startDate/';
> use '/usr/local/bin/lib/dates_email qw/"startDate"/;
> use '/usr/local/bin/lib/dates_email.pm qw/"startDate"/';
> use '/usr/local/bin/lib';
> 
> Each one gives me the error "Undefined subroutine &dates_emails::startDate
> called at ./created_tickets.pl line 19.".  Anyone know what I'm doing wrong?
> 
> Mathew
> Keep up with me and what I'm up to: http://theillien.blogspot.com
> 
> 



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


             

Sn":ae 
From beginners-return-92448-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 22:22:24 2007
Return-Path: <beginners-return-92448-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F2MML9028707
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 22:22:23 -0400
Received: (qmail 5377 invoked by uid 514); 15 Jun 2007 02:22:16 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5368 invoked from network); 15 Jun 2007 02:22:16 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 02:22:16 -0000
Received: (qmail 6793 invoked by uid 225); 15 Jun 2007 02:22:15 -0000
Delivered-To: beginners@perl.org
Received: (qmail 6784 invoked by alias); 15 Jun 2007 02:22:15 -0000
X-Spam-Status: No, hits=3.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from office.servervault.com (HELO mail1.dulles.sv.int) (216.12.128.136)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 19:22:11 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mail1.dulles.sv.int with Microsoft SMTPSVC(6.0.3790.1830);
	 Thu, 14 Jun 2007 22:22:04 -0400
Message-ID: <4671F7CE.4030807@yahoo.com>
Date: Thu, 14 Jun 2007 22:22:06 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Martin Barth <martin@senfdax.de>
CC: beginners@perl.org
Subject: Re: using a homemade perl module
References: <4670BF7B.9060000@yahoo.com>	<4670D741.3090809@yahoo.com> <20070614112553.5b51a309@nietzsche>
In-Reply-To: <20070614112553.5b51a309@nietzsche>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 15 Jun 2007 02:22:04.0728 (UTC) FILETIME=[F6FB0380:01C7AEF3]

I fixed all of the bugs save one.  I can't access any of my subroutines without
explicitly using it with dates_emails::subroutine.  I was under the impression
that if I was exporting them all from the module, the subroutine would be found
regardless.

package dates_emails;
require Exporter;
use strict;

our @ISA         = qw(Exporter);
our @EXPORT      = qw(startDate, endDate, searchStart, searchEnd);
our @EXPORT_OK   = qw($emailTo, $emailFrom, $emailBcc);
our %EXPORT_TAGS = {
                dates  => [qw(startDate, endDate, searchStart, searchEnd)],
                emails => [qw($emailTo, $emailFrom, $emailBcc)],
                };
our $VERSION     = '1';

It doesn't even work with 'use dates_emails("dates");'.  I get an error that
dates is not an exported subroutine.  I don't understand what I'm not doing
right as I've got the %EXPORT_TAGS hash set up, I've got the @EXPORTS array set
up.  I've got this in my opening block:
use lib '/usr/local/bin/lib/';
use dates_emails;

Any thoughts?

Mathew
Keep up with me and what I'm up to: http://theillien.blogspot.com


Martin Barth wrote:
> Hi,
> 
> try:
> 
> use lib "/usr/local/bin/lib/";
> use dates_email;
> 
> HTH Martin
> 
> On Thu, 14 Jun 2007 01:50:57 -0400
> Mathew Snyder <theillien@yahoo.com> wrote:
> 
>> To take this further I've changed the code.  It now looks like this:
>>
>> package dates_emails;
>> require Exporter;
>> use strict;
>>
>> our @ISA         = qw(Exporter);
>> our @EXPORT      = qw(startDate, endDate, searchStart, searchEnd);
>> our @EXPORT_OK   = qw($emailTo, $emailFrom, $emailBcc);
>> our %EXPORT_TAGS = {
>>                 dates  => [qw(startDate, endDate, searchStart, searchEnd)],
>>                 emails => [qw($emailTo, $emailFrom, $emailBcc)],
>>                 };
>> our $VERSION     = '1';
>>
>> # Declare our global variables
>> my (@days, @months, @years, @searchDate);
>> my $time = time();
>>
>> our $emailTo      = "user\@company.com";
>> our $emailFrom    = "RT";
>> our $emailBcc     = "user2\@company.com";
>>
>> sub getDates {
>>         for (1 .. 7) {
>>                 $time -= 24*60*60;
>>                 my @date = (localtime($time))[3 .. 5];
>>                 push @days, (sprintf '%02d', $date[0]);
>>                 push @months,(sprintf '%02d',$date[1] + 1);
>>                 push @years, $date[2] + 1900;
>>                 return;
>> }
>>
>> sub searchDate {
>>         getDates();
>>         push @searchDate, join "-", ($date[2] + 1900), (sprintf '%02d',$date[1]
>> + 1),
>> (sprintf '%02d', $date[0]);
>>         return \@serchDate;
>> }
>>
>> sub startDate {
>>         getDates();
>>         $startDate   = join "-", $months[$#months], $days[$#days], $years[$#years];
>>         return $startDate;
>> }
>>
>> sub endDate {
>>         getDates();
>>         $endDate     = join "-", $months[0], $days[0], $years[0];
>>         return $endDate;
>> }
>>
>> sub searchStart {
>>         getDates();
>>         $searchStart = join "-", $years[$#years], $months[$#months], $days[$#days];
>>         return $searchStart;
>> }
>>
>> sub searchEnd {
>>         getDates();
>>         $searchEnd   = join "-", $years[0], $months[0], $days[0];
>>         return $searchEnd;
>> }
>>
>> return 1;
>>
>> I've placed it in its own directory /usr/local/bin/lib.  I've tried using
>> use '/usr/local/bin/lib/dates_email';
>> use '/usr/local/bin/lib/dates_email.pm';
>> use '/usr/local/bin/lib/dates_email qw/startDate/;
>> use '/usr/local/bin/lib/dates_email.pm qw/startDate/';
>> use '/usr/local/bin/lib/dates_email qw/"startDate"/;
>> use '/usr/local/bin/lib/dates_email.pm qw/"startDate"/';
>> use '/usr/local/bin/lib';
>>
>> Each one gives me the error "Undefined subroutine &dates_emails::startDate
>> called at ./created_tickets.pl line 19.".  Anyone know what I'm doing wrong?
>>
>> Mathew
>> Keep up with me and what I'm up to: http://theillien.blogspot.com
>>
>>
> 
> 
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

e	Shb-
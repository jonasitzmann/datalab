From beginners-return-92497-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 01:36:52 2007
Return-Path: <beginners-return-92497-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5H5aoL9023079
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 01:36:51 -0400
Received: (qmail 9668 invoked by uid 514); 17 Jun 2007 05:36:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9659 invoked from network); 17 Jun 2007 05:36:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 17 Jun 2007 05:36:41 -0000
Received: (qmail 24471 invoked by uid 225); 17 Jun 2007 05:36:40 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24465 invoked by alias); 17 Jun 2007 05:36:40 -0000
X-Spam-Status: No, hits=3.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from office.servervault.com (HELO mail1.dulles.sv.int) (216.12.128.136)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 16 Jun 2007 22:36:36 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mail1.dulles.sv.int with Microsoft SMTPSVC(6.0.3790.1830);
	 Sun, 17 Jun 2007 01:36:30 -0400
Message-ID: <4674C85F.3010405@yahoo.com>
Date: Sun, 17 Jun 2007 01:36:31 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Perl Beginners <beginners@perl.org>
Subject: value of variable switches from ' ' to 'value'
Content-Type: multipart/mixed;
 boundary="------------000108090907030800060105"
X-OriginalArrivalTime: 17 Jun 2007 05:36:30.0538 (UTC) FILETIME=[752BDAA0:01C7B0A1]
X-Virus-Checked: Checked

--------------000108090907030800060105
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm trying to figure out what exactly a script I wrote (see the attachment) is
doing by stepping through it in the debugger.  I have an array of dates in
%Y-%m-%d format for each of the last 7 days.  So, for instance, the range of
dates for today (June 17, 2007) is from the 10th to the 16th.  I then take these
dates and use them to find work tickets in our ticketing system which were last
updated on the day currently being checked.

So, the first date would be 2007-06-16 (having pushed, rather than shifted, the
array).  I then grab the date of a ticket transaction, dropping the time from it
so it is only the date (my $lstupdt = $ticket->LastUpdated) =~ s/\s.*$//;
The ticket system uses datetime format so I have to remove the space following
the date and everything after it.  LastUpdated is a built in method for the
ticket system which does pretty much what its name implies, gets the date of the
last transaction on the ticket.

In the debugger I've set the 'w' command to watch the variable containing the
day being looked for ($day).  I would have thought $day stays the same throught
an iteration of the while loop but the debugger keeps stopping to tell me it
switched from '2007-06-15' (for instance) to ''.  I then continue and it tells
me it switched back from '' to '2007-06-15'.  Is it supposed to do that?
Shouldn't the $day variable remain constant?

I know this is convoluted and not having knowledge of the ticket system may make
this difficult to help with, but anything you can offer will be appreciated

Mathew
-- 
Keep up with me and what I'm up to: http://theillien.blogspot.com

--------------000108090907030800060105
Content-Type: application/x-perl;
 name="weekly_timesheet.pl"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="weekly_timesheet.pl"

#!/usr/bin/perl

#######################################################
#  Name:    weekly_timesheet.pl
#  version: 1.0
#  Date:    May 15, 2007
#  Author:  Mathew Snyder
#######################################################

use warnings;
use strict;
use lib '/usr/local/rt-3.6.1/lib';
use lib '/usr/local/rt-3.6.1/local/lib';
use RT;
use RT::Tickets;
use RT::Users;
use MIME::Lite;

RT::LoadConfig();
RT::Init();

# Declare our global variables
my (@days, @months, @years, @searchDate);
my $time = time();

for (1 .. 7) {
  $time -= 24*60*60;
  my @date = (localtime($time))[3 .. 5];
  push @days, (sprintf '%02d', $date[0]);
  push @months,(sprintf '%02d',$date[1] + 1);
  push @years, $date[2] + 1900;
  push @searchDate, join "-", ($date[2] + 1900), (sprintf '%02d',$date[1] + 1), (sprintf '%02d', $date[0]);
}

my $startDate	= join "-", $months[$#months], $days[$#days], $years[$#years];
my $endDate	= join "-", $months[0], $days[0], $years[0];
my $searchStart = $searchDate[6];
#my $searchStart = join "-", $years[$#years], $months[$#months], $days[$#days];
my $searchEnd   = $searchDate[0];
#my $searchEnd   = join "-", $years[0], $months[0], $days[0];

my $tix = new RT::Tickets(RT::SystemUser);
$tix->FromSQL('Queue = "CustomerCare" AND ((LastUpdated > "' . $searchStart . '" AND LastUpdated < "' . $searchEnd . '") OR (LastUpdated = "' . $searchStart . '" OR LastUpdated = "' . $searchEnd. '"))');

# The nitty gritty of the script
open TIMESHEET, ">/work_reports/weekly/debug/timesheet_weekof_$endDate.txt";

print TIMESHEET "Timesheet for $startDate to $endDate\n";

foreach my $day (@searchDate) {
	my %environment;
	my %ticCount;
        my $displayDate = join "-", (shift @months), (shift @days), (shift @years);

        # Print the header for our data
        printf TIMESHEET "\n\n" . $displayDate . "\n";
        printf TIMESHEET "%32s%11s\n", "Time", "Avg Time";
        printf TIMESHEET "%18s%7s%7s%11s\n", "Profile", "Tkts", "hh:mm", "hh:mm";
        print  TIMESHEET ("-" x 44);
        print  TIMESHEET "\n";

	while (my $ticket = $tix->Next) {
		my $env = $ticket->FirstCustomFieldValue('Environment');
		(my $updt = $ticket->LastUpdated) =~ s/\s.*$//;
		if ($updt eq $day) {
			$ticCount{$day}{$env}++;
        		my $transactions = $ticket->Transactions;
			while (my $transaction  = $transactions->Next) {
				(my $date = $transaction->Created) =~ s/\s.*$//;
                		next unless ($transaction->TimeTaken);
				next unless ($date eq $day);
				$environment{$day}{$env} += $transaction->TimeTaken;
        		}
		}else{
			next;
		}
	}

	foreach my $date1 (keys %environment) {
		foreach my $enviro (sort keys %{ $environment{$date1} }) {
			my @endTime;
			my @endtime2;
			my $temp	  = $environment{$date1}{$enviro};
			my $temp2	  = $temp / 60;
			my @temp	  = split /\./, $temp2;
			$endTime[0]	  = $temp[0];
			$endTime[1]	  = $temp % 60;
			my @meantemp = split /\./, ($temp / $ticCount{$date1}{$enviro});
			# If the time divided by the number of tickets has a decimal
	                # value round up if that value is greater than
	                # 0.5.  This will give an even number of minutes to figure
	                # out the mean time with.
	               if ($meantemp[1]) {
	                        if ($meantemp[1] >= 5) {
	                                $meantemp[0]++;
	                        }
	                }
	                my @meantime  = split /\./, ($meantemp[0] / 60);
	                $endtime2[0]  = $meantime[0];
	                $endtime2[1]  = $meantemp[0] % 60;
			my $endTime   = sprintf '%d:%02d', @endTime[0,1];
			my $mean      = sprintf '%d:%02d', @endtime2[0,1];
			printf TIMESHEET "%18s%6s%8s%11s\n", $enviro, $ticCount{$date1}{$enviro}, $endTime, $mean;
		}
	}
}

close TIMESHEET;

exit;


--------------000108090907030800060105
Content-Type: text/plain; charset=us-ascii

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/

--------------000108090907030800060105--

              

hht :din:
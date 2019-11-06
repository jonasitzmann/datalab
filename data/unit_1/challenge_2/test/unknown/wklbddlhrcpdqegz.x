From beginners-return-92368-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 14:38:14 2007
Return-Path: <beginners-return-92368-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DIcEL9011078
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 14:38:14 -0400
Received: (qmail 5773 invoked by uid 514); 13 Jun 2007 18:38:08 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5764 invoked from network); 13 Jun 2007 18:38:08 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 18:38:08 -0000
Received: (qmail 13031 invoked by uid 225); 13 Jun 2007 18:38:08 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13022 invoked by alias); 13 Jun 2007 18:38:07 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 204.209.205.52 as permitted sender)
Received: from mx01.telus.net (HELO mx01.telus.net) (204.209.205.52)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 11:38:05 -0700
Received: from priv-edmwaa05.telusplanet.net ([154.20.131.28])
          by priv-edmwes24.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070613183800.XLDB16440.priv-edmwes24.telusplanet.net@priv-edmwaa05.telusplanet.net>
          for <beginners@perl.org>; Wed, 13 Jun 2007 12:38:00 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edmwaa05.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id 2DGXJJBN56
	for <beginners@perl.org>; Wed, 13 Jun 2007 12:38:00 -0600 (MDT)
Message-ID: <46703985.5040002@telus.net>
Date: Wed, 13 Jun 2007 11:37:57 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: Help with a perl script to parse and email
References: <1181746363.003021.18060@j4g2000prf.googlegroups.com>
In-Reply-To: <1181746363.003021.18060@j4g2000prf.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Mike wrote:
> I'm a perl newbie and need help with writing a script to do the
> following:
> 
> 1)  Open a file that is delimited.  The file is in this format:
>    <name>;<email address1>;<user1>;<user2>;....<userX>;
> The delimiters can be changed.  This is a manually created file.
> Email and user may be more than one item.

Use the split function to separate delimited fields:

my @fields = split /;/, $data;


perldoc -f split

Or use one of the CSV modules.


> 2)  Send an email  to <email address> using the file from #1.  The
> email should be like
> 
> To <name>
> 
> Please verify that the following users are still under your
> supervision by <date>:
> <user1>
> <user2>
> <userX>

There are various modules that will send email including Net::SMTP and 
Mail::Send amongst others.


> 3) For calculating the date, I've used the below and added 14 days
> (1209600 seconds):
> 
> @Weekdays = ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
> 'Friday', 'Saturday');
> @Months = ('January', 'February', 'March', 'April', 'May', 'June',
> 'July', 'August', 'September', 'October', 'November', 'December');
> @Now = localtime(time + 1209600);  # adding the number of seconds in a
> day (86400) and multiplying for 14 days
> $Month = $Months[$Now[4]];
> $Weekday = $Weekdays[$Now[6]];
> $Hour = $Now[2];
> if ($Hour > 12) {
>    $Hour = $Hour - 12;
>    $AMPM = "PM";
> } else {
>    $Hour = 12 if $Hour == 0;
>    $AMPM ="AM";
> }
> $Minute = $Now[1];
> $Minute = "0$Minute" if $Minute < 10;
> $Year = $Now[5]+1900;
> $Expire = "$Weekday, $Month $Now[3], $Year";

$ perl -MPOSIX -le' print strftime "%A, %B %d, %Y  %I:%M %p", localtime '
Wednesday, June 13, 2007  11:30 AM
$ perl -MPOSIX -le' print strftime "%A, %B %d, %Y  %I:%M %p", localtime time + 
1_209_600 '
Wednesday, June 27, 2007  11:31 AM




John
-- 
Perl isn't a toolbox, but a small machine shop where you
can special-order certain sorts of tools at low cost and
in short order.                            -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

 PpfV 
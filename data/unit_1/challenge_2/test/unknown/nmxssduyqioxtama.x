From beginners-return-92125-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 19:05:51 2007
Return-Path: <beginners-return-92125-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53N5ohB020629
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 19:05:50 -0400
Received: (qmail 9160 invoked by uid 514); 3 Jun 2007 23:05:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9151 invoked from network); 3 Jun 2007 23:05:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jun 2007 23:05:41 -0000
Received: (qmail 22920 invoked by uid 225); 3 Jun 2007 23:05:40 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22916 invoked by alias); 3 Jun 2007 23:05:40 -0000
X-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of krahnj@telus.net)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sun, 03 Jun 2007 16:05:34 -0700
Received: (qmail 9088 invoked by uid 515); 3 Jun 2007 23:05:30 -0000
Message-ID: <20070603230530.9087.qmail@lists.develooper.com>
To: beginners@perl.org
From: "John W. Krahn" <krahnj@telus.net>
Subject: Re: Paths, Spaces, Getopt::Long
Date: Sun, 03 Jun 2007 16:05:30 -0700
References: <6632C865-BF02-4D35-81B9-7E1EA97C3DF0@earthlink.net> <8B1F59C6-9DFF-41D0-9B95-C549580A6EB9@earthlink.net> <58ce48dc0706031449u3c1b0c24xa847e79146d02955@mail.gmail.com> <58ce48dc0706031452x3869837ch51125dee86ecd654@mail.gmail.com> <58ce48dc0706031453s440a6dc8ib502fd1298f7f496@mail.gmail.com>
Lines: 39
User-Agent: KNode/0.10.4
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7Bit
X-Posted-By: 154.20.131.28

Chas Owens wrote:

> On 6/3/07, Chas Owens <chas.owens@gmail.com> wrote:
>> On 6/3/07, Chas Owens <chas.owens@gmail.com> wrote:
>> snip
>> > my $tidy = "/usr/bin/tidy";
>> > my @tidy_args = qw(--foo --bar -- example);
>> > my $path = get_path();
>> > my $file = $path . get_file();
>> >
>> > system($tidy, @tidy_args, $file);
>>
>> Opps, forgot the error checking.
>>
>> system($tidy, @tidy_args, $file)
>>     or die qq("$tidy @tidy_args $file" failed: $?";
>>
> 
> I will get it right, I swear.
> 
> system($tidy, @tidy_args, $file)
>     or die qq("$tidy @tidy_args $file" failed: $?);

This should work better:

system($tidy, @tidy_args, $file) == 0
    or die qq("$tidy @tidy_args $file" failed: $?);

Or:

system($tidy, @tidy_args, $file)
    and die qq("$tidy @tidy_args $file" failed: $?);



John
-- 
Perl isn't a toolbox, but a small machine shop where you can special-order
certain sorts of tools at low cost and in short order.       -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

c5G"e
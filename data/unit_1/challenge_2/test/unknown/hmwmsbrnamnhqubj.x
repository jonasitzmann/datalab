From beginners-return-92997-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 10:21:57 2007
Return-Path: <beginners-return-92997-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63ELtL9029628
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 10:21:56 -0400
Received: (qmail 20759 invoked by uid 514); 3 Jul 2007 14:21:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20750 invoked from network); 3 Jul 2007 14:21:45 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 14:21:45 -0000
Received: (qmail 17797 invoked by uid 225); 3 Jul 2007 14:21:44 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17763 invoked by alias); 3 Jul 2007 14:21:42 -0000
X-Spam-Status: No, hits=-2.5 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RDNS_DYNAMIC,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from host-80-193-83-130.static.telewest.net (HELO mail.ringways.co.uk) (80.193.83.130)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 07:21:36 -0700
Received: from eddie.ringways.co.uk ([10.1.1.115])
	by mail.ringways.co.uk with esmtp (Exim 4.62)
	(envelope-from <gary.stainburn@ringways.co.uk>)
	id 1I5jAY-0003Gm-Uk; Tue, 03 Jul 2007 15:15:56 +0100
From: Gary Stainburn <gary.stainburn@ringways.co.uk>
Organization: Ringways Garages Ltd
To: beginners@perl.org
Subject: Re: TWO loops and ONE
Date: Tue, 3 Jul 2007 15:18:15 +0100
User-Agent: KMail/1.9.5
Cc: "Amichai Teumim" <amichai@teumim.com>
References: <848c3f360707030703n4bf040d3k950178abc18ed363@mail.gmail.com>
In-Reply-To: <848c3f360707030703n4bf040d3k950178abc18ed363@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200707031518.15917.gary.stainburn@ringways.co.uk>
X-Spam-Score: -50.0 (--------------------------------------------------)
X-Spam-Report: Spam detection software, running on the system "ollie.ringways.co.uk", has
	identified this incoming email as possible spam.  The original message
	has been attached to this so you can view it (if it isn't spam) or label
	similar future email.  If you have any questions, see
	Gary Stainburn <gary@ringways.co.uk> for details.
	Content preview:  On Tuesday 03 July 2007 15:03, Amichai Teumim wrote: > OK.
	So I removed $tmp. Now my code looks like this: > > > #!/usr/bin/perl > >
	use strict; > use warnings; > > my @array = (5,3,2,1,4); > my $n = @array;
	> > for my $i (0 .. $n-1) { > for my $j (0 .. $n-1) { > if ($array[$j+1]
	< $array[$j]) { #compare the two neighbors > @array[$j, $j+1] = @array[$j+1,
	$j]; > } > } > } > > for my $elem (@array) { > print "$elem"; > } > > I get
	the following: > > Use of uninitialized value in numeric lt (<) at ./obj8-2.pl
	line 11. > Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line
	11. > Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
	> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11. >
	Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11. > Use
	of uninitialized value in string at ./obj8-2.pl line 18. > > I was told that
	it just means my logic isn't in order, but it should work > nevertheless
	right? Why isn't it working? > * > * [...] 
	Content analysis details:   (-50.0 points, 12.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-50 ALL_TRUSTED            Passed through trusted hosts only via SMTP

On Tuesday 03 July 2007 15:03, Amichai Teumim wrote:
> OK. So I removed $tmp. Now my code looks like this:
>
>
> #!/usr/bin/perl
>
> use strict;
> use warnings;
>
> my @array = (5,3,2,1,4);
> my $n = @array;
>
> for my $i (0 .. $n-1) {
>    for my $j (0 .. $n-1) {
>        if ($array[$j+1] < $array[$j]) {  #compare the two neighbors
>            @array[$j, $j+1] = @array[$j+1, $j];
>        }
>    }
> }
>
> for my $elem (@array) {
>    print "$elem";
> }
>
> I get the following:
>
> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
> Use of uninitialized value in numeric lt (<) at ./obj8-2.pl line 11.
> Use of uninitialized value in string at ./obj8-2.pl line 18.
>
> I was told that it just means my logic isn't in order, but it should work
> nevertheless right? Why isn't it working?
> *
> *

Have a look at line 11 again.
Work out what values $j and $j+1 will have as you go through the two loop2.

If you get an uninitialized value error on an array it usually means you've 
shot off the end of it.
-- 
Gary Stainburn
 
This email does not contain private or confidential material as it
may be snooped on by interested government parties for unknown
and undisclosed purposes - Regulation of Investigatory Powers Act, 2000     

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

:rf  ip Ld
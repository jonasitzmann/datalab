From beginners-return-92425-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 11:43:03 2007
Return-Path: <beginners-return-92425-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EFh2L9023607
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 11:43:03 -0400
Received: (qmail 18522 invoked by uid 514); 14 Jun 2007 15:42:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 18513 invoked from network); 14 Jun 2007 15:42:57 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 15:42:57 -0000
Received: (qmail 8894 invoked by uid 225); 14 Jun 2007 15:42:51 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8807 invoked by alias); 14 Jun 2007 15:42:45 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of rvm@cbord.com designates 24.39.174.11 as permitted sender)
Received: from mx1.cbord.com (HELO Email.cbord.com) (24.39.174.11)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 08:42:43 -0700
X-MIMEOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Subject: RE: Having trouble porting an application to MS-Windows
Date: Thu, 14 Jun 2007 11:41:55 -0400
Message-ID: <FF8482A96323694490C194BABEAC24A0010ACAE7@Email.cbord.com>
In-Reply-To: <58ce48dc0706140815h5e53e767i78656130db76f473@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Having trouble porting an application to MS-Windows
Thread-Index: AceulsXLTajw7bYyRtmbqC3M9eMmBAAA2pVA
References: <FF8482A96323694490C194BABEAC24A0010AC97D@Email.cbord.com> <58ce48dc0706140815h5e53e767i78656130db76f473@mail.gmail.com>
From: "Bob McConnell" <rvm@CBORD.com>
To: "Chas Owens" <chas.owens@gmail.com>
Cc: <beginners@perl.org>
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5EFh2L9023607

In "perlport - Writing portable Perl" in the Alphabetic list of Perl
Functions:

alarm SECONDS
alarm
    Not implemented. (Win32) 

I couldn't find anything in the ActiveState release notes that
contradicted that.

Bob McConnell

> -----Original Message-----
> From: Chas Owens [mailto:chas.owens@gmail.com] 
> Sent: Thursday, June 14, 2007 11:15 AM
> To: Bob McConnell
> Cc: beginners@perl.org
> Subject: Re: Having trouble porting an application to MS-Windows
> 
> On 6/14/07, Bob McConnell <rvm@cbord.com> wrote
> snip
> > On the Win32 platform, this form of select is only implemented for
> > sockets, and alarm() is not implemented at all.
> snip
> 
> What makes you think the alarm function is not implemented?  Running
> the following code with the latest version of ActiveState Perl on
> Windows XP works.
> 
> #!/usr/bin/perl
> 
> use strict;
> use warnings;
> 
> print localtime() . "\n";
> eval {
>     local $SIG{ALRM} = sub { die "timeout\n" };
>     alarm 3;
>     while (1) {}
> };
> print $@ if $@;
> print localtime() . "\n";
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



           

=kfwnu1 +>0ddH
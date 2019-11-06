From beginners-return-92469-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 11:27:07 2007
Return-Path: <beginners-return-92469-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5FFR6L9003786
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 11:27:06 -0400
Received: (qmail 19747 invoked by uid 514); 15 Jun 2007 15:26:59 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19738 invoked from network); 15 Jun 2007 15:26:59 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 15:26:59 -0000
Received: (qmail 24891 invoked by uid 225); 15 Jun 2007 15:26:59 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24886 invoked by alias); 15 Jun 2007 15:26:58 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of rvm@cbord.com designates 24.39.174.11 as permitted sender)
Received: from mx1.cbord.com (HELO Email.cbord.com) (24.39.174.11)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 08:26:51 -0700
X-MIMEOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Subject: RE: Having trouble porting an application to MS-Windows
Date: Fri, 15 Jun 2007 11:26:18 -0400
Message-ID: <FF8482A96323694490C194BABEAC24A0010EC16E@Email.cbord.com>
In-Reply-To: <58ce48dc0706150755j6df18e0ch3506228bff5b55d5@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Having trouble porting an application to MS-Windows
Thread-Index: AcevXSRrp/gfdKfWT/iPBYhQHpBy+QAAqcIg
References: <FF8482A96323694490C194BABEAC24A0010AC97D@Email.cbord.com> <58ce48dc0706140815h5e53e767i78656130db76f473@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010ACAE7@Email.cbord.com> <58ce48dc0706140858l27cbfc30x9a92eeca7342cc05@mail.gmail.com> <58ce48dc0706140909j56bc73cq3514e55fc9400e43@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010EC0FE@Email.cbord.com> <58ce48dc0706150755j6df18e0ch3506228bff5b55d5@mail.gmail.com>
From: "Bob McConnell" <rvm@CBORD.com>
To: "Chas Owens" <chas.owens@gmail.com>
Cc: <beginners@perl.org>
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5FFR6L9003786

> -----Original Message-----
> From: Chas Owens [mailto:chas.owens@gmail.com] 
> Sent: Friday, June 15, 2007 10:55 AM
> To: Bob McConnell
> Cc: beginners@perl.org
> Subject: Re: Having trouble porting an application to MS-Windows
> 
> On 6/15/07, Bob McConnell <rvm@cbord.com> wrote:
> snip
> >                 eval {
> >                         local $SIG{ALRM} = sub { die 
> "alarm\n" }; # NB:
> > \n required
> >                         alarm $timeout;
> >                         $nread = sysread PORT, $line, 1;
> >                         alarm 0;
> >                 };
> snip
> > This transmits the packet, but never comes out of the eval() if it
> > doesn't receive a character. Is there anything obvious that 
> I missed?
> snip
> 
> Hmm, that codes looks right.  Do the two scripts I sent earlier work?


Yes, both work with the output below. The difference is that both of
yours interrupt an empty while loop, but my code is in a sysread() call.
The SIGINT I use to kill the process can interrupt the system call, but
will the alarm? Or have I found a bug in the ActiveState implementation?

Bob McConnell

D:\Perl\eg\SIMscript>perl forka.pl
Fri Jun 15 11:16:36 2007
timeout
Fri Jun 15 11:16:39 2007

D:\Perl\eg\SIMscript>perl forkb.pl
parent Fri Jun 15 11:12:57 2007
parent  waiting 10 seconds
child Fri Jun 15 11:12:57 2007
child  waiting 1 seconds
timeout child
child Fri Jun 15 11:12:58 2007
timeout parent
parent Fri Jun 15 11:13:07 2007

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



 

mDretYx=n
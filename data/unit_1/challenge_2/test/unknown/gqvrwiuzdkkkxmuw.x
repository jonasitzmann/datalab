From beginners-return-92520-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 11:03:20 2007
Return-Path: <beginners-return-92520-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5IF3JL9018779
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 11:03:20 -0400
Received: (qmail 19140 invoked by uid 514); 18 Jun 2007 15:03:13 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19131 invoked from network); 18 Jun 2007 15:03:13 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 18 Jun 2007 15:03:13 -0000
Received: (qmail 32328 invoked by uid 225); 18 Jun 2007 15:03:12 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32317 invoked by alias); 18 Jun 2007 15:03:11 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of rvm@cbord.com designates 24.39.174.11 as permitted sender)
Received: from mx1.cbord.com (HELO Email.cbord.com) (24.39.174.11)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 18 Jun 2007 08:03:09 -0700
X-MIMEOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Subject: RE: Having trouble porting an application to MS-Windows
Date: Mon, 18 Jun 2007 11:02:32 -0400
Message-ID: <FF8482A96323694490C194BABEAC24A0010EC750@Email.cbord.com>
In-Reply-To: <58ce48dc0706151642g6240d4derdc803599d0e0b5f5@mail.gmail.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Having trouble porting an application to MS-Windows
Thread-Index: Acevpsh2VVpFV+Q0TjyRlc7NDC/XkwCDBuYQ
References: <FF8482A96323694490C194BABEAC24A0010AC97D@Email.cbord.com> <58ce48dc0706140815h5e53e767i78656130db76f473@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010ACAE7@Email.cbord.com> <58ce48dc0706140858l27cbfc30x9a92eeca7342cc05@mail.gmail.com> <58ce48dc0706140909j56bc73cq3514e55fc9400e43@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010EC0FE@Email.cbord.com> <58ce48dc0706150755j6df18e0ch3506228bff5b55d5@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010EC16E@Email.cbord.com> <58ce48dc0706150833p754711dkb7da0c69c19734bb@mail.gmail.com> <FF8482A96323694490C194BABEAC24A0010EC39D@Email.cbord.com> <58ce48dc0706151642g6240d4derdc803599d0e0b5f5@mail.gmail.com>
From: "Bob McConnell" <rvm@CBORD.com>
To: "Chas Owens" <chas.owens@gmail.com>
Cc: <beginners@perl.org>
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5IF3JL9018779

> -----Original Message-----
> From: Chas Owens [mailto:chas.owens@gmail.com] 
> Sent: Friday, June 15, 2007 7:43 PM
> To: Bob McConnell
> Cc: beginners@perl.org
> Subject: Re: Having trouble porting an application to MS-Windows
> 
> On 6/15/07, Bob McConnell <rvm@cbord.com> wrote:
> > > -----Original Message-----
> > > From: Chas Owens [mailto:chas.owens@gmail.com]
> > > Sent: Friday, June 15, 2007 11:33 AM
> > > To: Bob McConnell
> > > Cc: beginners@perl.org
> > > Subject: Re: Having trouble porting an application to MS-Windows
> > >
> > > On 6/15/07, Bob McConnell <rvm@cbord.com> wrote:
> > > snip
> > > > Or have I found a bug in the ActiveState implementation?
> > > snip
> > >
> > > Are you currently paying for ActiveState support?  If so, I would
> > > suggest filing a ticket with them.  In the mean time, try 
> modifying my
> > > code to do a sysread from a socket.
> >
> > No, we are not "officially" using the ActiveState tools. 
> Only a few of
> > us recognize that anything other than VBScript might 
> actually be useful.
> >
> > I'll have to set up a socket that won't return anything and 
> try that. If
> > that times out as expected, then it looks like a bug report will be
> > needed.
> >
> > Thank you,
> >
> > Bob McConnell
> >
> 
> Even if it does timeout a bug may still need to be filed.  I just want
> to understand the scope of the problem first and I don't have easy
> access to an XP machine at the moment.

What I can define so far:
  Win2K Pro SP4 fully patched.
  Dell Optiplex GX270, 3.0 GHz, 1GB RAM.
  ActivePerl 5.8.8.820 installed after uninstalling 5.8.0.806.
  Code snippet was sent earlier in this thread.

Attempting to set an alarm for 3 seconds then call sysread() on a serial
port within an eval, as per the recommended form. The eval will never
return without receiving a character on the port. SIGBRK does get caught
and terminates the script. I have not yet tried this on a socket.

I don't see anything that matches in the ActiveState bug tracker, but I
don't have an ASPN account needed to add bug reports. I am looking at
their community support forum. A search there on "alarm sysread" does
not produce any results. It looks like I need to create an account there
before I can post a message.

Thank you,

Bob McConnell

"If you notice anything funny, record the amount of funny."
 Milligan's law as reported by Bob Pease.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



         

7G nt
From beginners-return-92457-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 04:55:10 2007
Return-Path: <beginners-return-92457-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F8t9L9031807
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 04:55:09 -0400
Received: (qmail 1398 invoked by uid 514); 15 Jun 2007 08:55:03 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 1382 invoked from network); 15 Jun 2007 08:55:03 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 08:55:03 -0000
Received: (qmail 18369 invoked by uid 225); 15 Jun 2007 08:55:02 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18361 invoked by alias); 15 Jun 2007 08:55:02 -0000
X-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_SORBS_WEB,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from lexx.senfdax.de (HELO lexx.senfdax.de) (85.10.209.43)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 01:54:51 -0700
Received: from e176247220.adsl.alicedsl.de ([85.176.247.220] helo=nietzsche)
	by lexx.senfdax.de with esmtpsa (TLS-1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <martin@senfdax.de>)
	id 1Hz7Uk-0008S0-DE
	for beginners@perl.org; Fri, 15 Jun 2007 10:49:31 +0200
Date: Fri, 15 Jun 2007 10:54:41 +0200
From: Martin Barth <martin@senfdax.de>
To: beginners@perl.org
Subject: Re: using a homemade perl module
Message-ID: <20070615105441.7efeb416@nietzsche>
In-Reply-To: <46725324.905@earthlink.net>
References: <4670BF7B.9060000@yahoo.com>
	<4670D741.3090809@yahoo.com>
	<20070614112553.5b51a309@nietzsche>
	<4671F7CE.4030807@yahoo.com>
	<20070615104153.08171f80@nietzsche>
	<46725324.905@earthlink.net>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Spam-Score: -3.5 (---)
X-Spam-Report: Content analysis details:   (-3.5 points, 5.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-1.8 ALL_TRUSTED            Nachricht wurde nur �ber vertrauensw�rdige Rechner
	weitergeleitet
	-2.6 BAYES_00               BODY: Spamwahrscheinlichkeit nach Bayes-Test: 0-1%
	[score: 0.0000]
	0.9 AWL                    AWL: From: address is in the auto white-list
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5F8t9L9031807

oh! you're right!
i'm sorry.

On Fri, 15 Jun 2007 16:51:48 +0800
Jeff Pang <pangj@earthlink.net> wrote:

> Martin Barth 写道:
> > Well the code looks ok. 
> > 
> > I just wrote some simple test code to do the same thing like you, but
> > it worked as exepcted. Are there some differeces between that example
> > and your code?
> > 
> > HTH
> > 
> > % ls
> > Module.pm  test.pl
> > % cat Module.pm
> > #!/usr/bin/perl -w
> > use strict;
> > require Exporter;
> > our @ISA = qw/Exporter/;
> > our @EXPORT = qw/do_sth/;
> > 
> > sub do_sth {
> >         print "done\n";
> > }
> > 
> > 1;
> 
> 
> Here don't forget to add the package declare at the begin line:
> 
> package Module;  # notice this line
> use strict;
> require Exporter;
> ...
> 
> 
> Otherwise your module doesn't have its own namespace at all.
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



      

1LgvL
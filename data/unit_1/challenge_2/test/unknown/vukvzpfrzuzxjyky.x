From beginners-return-92868-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 16:24:38 2007
Return-Path: <beginners-return-92868-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SKOYL9015165
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 16:24:34 -0400
Received: (qmail 7571 invoked by uid 514); 28 Jun 2007 20:24:24 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7558 invoked from network); 28 Jun 2007 20:24:23 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 20:24:23 -0000
Received: (qmail 32089 invoked by uid 225); 28 Jun 2007 20:24:22 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32055 invoked by alias); 28 Jun 2007 20:24:19 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from ns40.arrow.com (HELO usmlrh22.arrow.com) (63.165.163.242)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 13:24:14 -0700
Received: from wmhex003p.arrownao.corp.arrow.com (usmlrh22.arrow.com [127.0.0.1])
	by usmlrh22.arrow.com (8.12.11/8.12.11) with ESMTP id l5SKOBDu031464
	for <beginners@perl.org>; Thu, 28 Jun 2007 16:24:11 -0400
Received: from wmhex005p.arrownao.corp.arrow.com ([10.0.24.7]) by wmhex003p.arrownao.corp.arrow.com with Microsoft SMTPSVC(6.0.3790.1830);
	 Thu, 28 Jun 2007 16:24:06 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Subject: RE: Build module on one box and move to another box?
Date: Thu, 28 Jun 2007 16:24:02 -0400
Message-ID: <6818B962DC29874BADC32E3F51F5FB4403236306@wmhex005p.arrownao.corp.arrow.com>
In-Reply-To: <6818B962DC29874BADC32E3F51F5FB44031A5865@wmhex005p.arrownao.corp.arrow.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Build module on one box and move to another box?
Thread-Index: Ace3/eXvkaVZLJ6RRuy7dcQ7yTlyUwBwbNoA
From: "RICHARD FERNANDEZ" <rfernandez@arrow.com>
To: <beginners@perl.org>
X-OriginalArrivalTime: 28 Jun 2007 20:24:06.0312 (UTC) FILETIME=[46A15280:01C7B9C2]
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5SKOYL9015165

 
> Can this be done? Can I compile a module on one box and 
> somehow install the code on another?
> Might this be as simple as copying over the contents of the 
> directories in @INC?

As it turns out, this was fairly easy to do.

I followed the advice from Chas Owens who suggested that I build them
manually on another box and stop before the "make install".
There were no pre-reqs that needed to be installed, so I guess I got
lucky there.

I tar'd up the build directories, moved them over, did another "make
test" just to feel good about it, then the 
"make install". Further tests with our code went well.

Thanks Chas, and to all who responded!

richf

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



             

gL 4.:nn
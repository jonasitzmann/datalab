From beginners-return-92767-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 10:26:13 2007
Return-Path: <beginners-return-92767-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5QEQBL9011999
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 10:26:12 -0400
Received: (qmail 3984 invoked by uid 514); 26 Jun 2007 14:26:03 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3975 invoked from network); 26 Jun 2007 14:26:03 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 26 Jun 2007 14:26:03 -0000
Received: (qmail 30619 invoked by uid 225); 26 Jun 2007 14:26:03 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30611 invoked by alias); 26 Jun 2007 14:26:02 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from ns40.arrow.com (HELO usmlrh22.arrow.com) (63.165.163.242)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 26 Jun 2007 07:25:59 -0700
Received: from wmhex004p.arrownao.corp.arrow.com (usmlrh22.arrow.com [127.0.0.1])
	by usmlrh22.arrow.com (8.12.11/8.12.11) with ESMTP id l5QEPtkl005494
	for <beginners@perl.org>; Tue, 26 Jun 2007 10:25:56 -0400
Received: from wmhex005p.arrownao.corp.arrow.com ([10.0.24.7]) by wmhex004p.arrownao.corp.arrow.com with Microsoft SMTPSVC(6.0.3790.1830);
	 Tue, 26 Jun 2007 10:25:52 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Subject: Build module on one box and move to another box?
Date: Tue, 26 Jun 2007 10:25:51 -0400
Message-ID: <6818B962DC29874BADC32E3F51F5FB44031A5865@wmhex005p.arrownao.corp.arrow.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Build module on one box and move to another box?
Thread-Index: Ace3/eXvkaVZLJ6RRuy7dcQ7yTlyUw==
From: "RICHARD FERNANDEZ" <rfernandez@arrow.com>
To: <beginners@perl.org>
X-OriginalArrivalTime: 26 Jun 2007 14:25:52.0542 (UTC) FILETIME=[E684CBE0:01C7B7FD]
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5QEQBL9011999

Hi folks,

Having worked around my CPAN mirror problems by abandoning the FTP URL
and going with an HTTP connection instead (Thanks for the suggestion
David :), I'm now faced with the fact that the box I'm on does not have
a compiler installed. "They" want me to install various modules (DBI.pm
and others) without installing a compiler...

Can this be done? Can I compile a module on one box and somehow install
the code on another?
Might this be as simple as copying over the contents of the directories
in @INC?

Thanks for the feedback!

richf

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



                   

r m:47ne0sVe V
From beginners-return-93058-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 17:50:49 2007
Return-Path: <beginners-return-93058-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64LomL9015953
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 17:50:48 -0400
Received: (qmail 26239 invoked by uid 514); 4 Jul 2007 21:50:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26230 invoked from network); 4 Jul 2007 21:50:38 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 21:50:38 -0000
Received: (qmail 5519 invoked by uid 225); 4 Jul 2007 21:50:37 -0000
Delivered-To: beginners@perl.org
Received: (qmail 5513 invoked by alias); 4 Jul 2007 21:50:37 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd3mo3so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 14:50:30 -0700
Received: from pd4mr2so.prod.shaw.ca
 (pd4mr2so-qfe3.prod.shaw.ca [10.0.141.213]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO00D0XCO06F60@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 15:50:24 -0600 (MDT)
Received: from pn2ml4so.prod.shaw.ca ([10.0.121.148])
 by pd4mr2so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKO005QUCNXM0N0@pd4mr2so.prod.shaw.ca> for
 beginners@perl.org; Wed, 04 Jul 2007 15:50:21 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO00K0TCNTSCC2@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 15:50:20 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id AD0DE2821B; Wed,
 04 Jul 2007 15:49:35 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Wed,
 04 Jul 2007 15:50:00 -0600
Date: Wed, 04 Jul 2007 15:48:52 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: RE: File::Spec->splitpath
In-reply-to: <58ce48dc0707041421q68d0f171p3ffe88b828607ab4@mail.gmail.com>
To: Chas Owens <chas.owens@gmail.com>
Cc: Tom Phoenix <tom@stonehenge.com>,
   "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF1320453684187@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: text/plain; charset=us-ascii
Content-language: en-US
Accept-Language: en-US
Thread-topic: File::Spec->splitpath
Thread-index: Ace+gUmsIuH/rFeNSLOt/bKG+AuGVwAA9Lyc
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
References: 
 <80D663F66DF55241BD12E3DB42DDF132045367CCD2@an-ex.ActiveNetwerx.int>
 <31086b240707041237i2dd1c3bagfa3e8ff27e5fb6cd@mail.gmail.com>
 <80D663F66DF55241BD12E3DB42DDF132045367CCD4@an-ex.ActiveNetwerx.int>
 <58ce48dc0707041421q68d0f171p3ffe88b828607ab4@mail.gmail.com>
X-Old-Spam-Status: No
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l64LomL9015953

Dang, you perl guys thought of everything!
Thanks!
jlc

________________________________________
From: Chas Owens [chas.owens@gmail.com]
Sent: Wednesday, July 04, 2007 3:21 PM
To: Joseph L. Casale
Cc: Tom Phoenix; beginners@perl.org
Subject: Re: File::Spec->splitpath

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:
> Just found that. I suppose I could use it, then get the size of the array and use the last indices? Is there a cleaner way to do it?
> Thanks!
> jlc
snip

You can use negative indices to count from the end of the array:

my @a = (1, 2, 3, 4, 5, 6);
die unless $a[-1] == $a[5] == 6;
die unless $a[-2] == $a[4] == 5;
die unless $a[-3] == $a[3] == 4;
die unless $a[-4] == $a[2] == 3;
die unless $a[-5] == $a[1] == 2;
die unless $a[-6] == $a[0] == 1;



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



         

>ztp9e1_trl 8-
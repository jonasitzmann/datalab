From beginners-return-93023-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 02:31:06 2007
Return-Path: <beginners-return-93023-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l646V4L9006735
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 02:31:05 -0400
Received: (qmail 26883 invoked by uid 514); 4 Jul 2007 06:30:56 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26874 invoked from network); 4 Jul 2007 06:30:56 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 06:30:56 -0000
Received: (qmail 5352 invoked by uid 225); 4 Jul 2007 06:30:55 -0000
Delivered-To: beginners@perl.org
Received: (qmail 5347 invoked by alias); 4 Jul 2007 06:30:55 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd2mo1so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 23:30:52 -0700
Received: from pd4mr2so.prod.shaw.ca
 (pd4mr2so-qfe3.prod.shaw.ca [10.0.141.213]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKN00A9H61EZ9E0@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 00:29:38 -0600 (MDT)
Received: from pn2ml7so.prod.shaw.ca ([10.0.121.151])
 by pd4mr2so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKN00C0J61DPVF0@pd4mr2so.prod.shaw.ca> for
 beginners@perl.org; Wed, 04 Jul 2007 00:29:38 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKN0003P61DKWB0@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 00:29:37 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id E42562821E	for
 <beginners@perl.org>; Wed, 04 Jul 2007 00:29:09 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Wed,
 04 Jul 2007 00:29:33 -0600
Date: Wed, 04 Jul 2007 00:29:33 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: foreach broken in my script
To: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCD0@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: multipart/alternative;
 boundary=_000_80D663F66DF55241BD12E3DB42DDF132045367CCD0anexActiveNet_
Content-language: en-US
Accept-Language: en-US
Thread-topic: foreach broken in my script
Thread-index: Ace+BK/q27rmOZhMSTy0JsyVViGoVw==
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
X-Old-Spam-Status: No

--_000_80D663F66DF55241BD12E3DB42DDF132045367CCD0anexActiveNet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I  have a list:
@list =3D ('Exchange','Filter','DNS','Domain');
This is a list of arrays I also have of course to leverage this I am trying=
 to . the @ symbol on it during use.

foreach $vm (@list) {
                my_sub("@" . "$vm");
                print "@" . "$vm\n";
}

The print likes this, but the my_sub doesn't? Why not?

Thanks!
jlc



--_000_80D663F66DF55241BD12E3DB42DDF132045367CCD0anexActiveNet_--

         

lPazsrcM<:
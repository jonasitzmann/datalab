From beginners-return-93015-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 21:34:13 2007
Return-Path: <beginners-return-93015-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l641YBL9004060
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 21:34:12 -0400
Received: (qmail 14247 invoked by uid 514); 4 Jul 2007 01:34:02 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14238 invoked from network); 4 Jul 2007 01:34:02 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 01:34:02 -0000
Received: (qmail 3113 invoked by uid 225); 4 Jul 2007 01:34:01 -0000
Delivered-To: beginners@perl.org
Received: (qmail 3102 invoked by alias); 4 Jul 2007 01:34:01 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd2mo1so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 18:33:58 -0700
Received: from pd3mr1so.prod.shaw.ca
 (pd3mr1so-qfe3.prod.shaw.ca [10.0.141.177]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKM009K1SA8QME0@l-daemon> for beginners@perl.org; Tue,
 03 Jul 2007 19:32:32 -0600 (MDT)
Received: from pn2ml2so.prod.shaw.ca ([10.0.121.146])
 by pd3mr1so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKM006WPSA7T1U0@pd3mr1so.prod.shaw.ca> for
 beginners@perl.org; Tue, 03 Jul 2007 19:32:32 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKM00F1GSA6QJN0@l-daemon> for beginners@perl.org; Tue,
 03 Jul 2007 19:32:31 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id 6FCA12821E	for
 <beginners@perl.org>; Tue, 03 Jul 2007 19:32:03 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Tue,
 03 Jul 2007 19:32:27 -0600
Date: Tue, 03 Jul 2007 19:32:26 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: formatting a string
To: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCCD@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: multipart/alternative;
 boundary=_000_80D663F66DF55241BD12E3DB42DDF132045367CCCDanexActiveNet_
Content-language: en-US
Accept-Language: en-US
Thread-topic: formatting a string
Thread-index: Ace92y1+KCCxGAT6QbGAodeyxAe/Nw==
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
X-Old-Spam-Status: No

--_000_80D663F66DF55241BD12E3DB42DDF132045367CCCDanexActiveNet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an array with the following data in it:

/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/A=
N-DC (Win2003 Ent x64).vmx
/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/D=
isc 1.vmdk
/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/D=
isc 2.vmdk

I always deal with indices' 1 through to the end in the function in questio=
n, so it's easy to get the second indices (First disc) and so on. I need to=
 manipulate the path though now, I am wanting to search for *all* the text =
following the third "/" and before the fourth "/" and replace it with a str=
ing variable. So far, this is seeming to be way over my current capacity :)

Can anyone point me to the topic/method I should use so I may read up on bu=
ild this myself?

Thanks!
jlc



--_000_80D663F66DF55241BD12E3DB42DDF132045367CCCDanexActiveNet_--

     

iwn7dn
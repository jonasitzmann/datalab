From beginners-return-93064-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 21:34:48 2007
Return-Path: <beginners-return-93064-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l651YkL9019697
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 21:34:47 -0400
Received: (qmail 700 invoked by uid 514); 5 Jul 2007 01:34:36 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 691 invoked from network); 5 Jul 2007 01:34:35 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 01:34:35 -0000
Received: (qmail 7593 invoked by uid 225); 5 Jul 2007 01:34:35 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7584 invoked by alias); 5 Jul 2007 01:34:34 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd2mo1so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 18:33:16 -0700
Received: from pd4mr4so.prod.shaw.ca
 (pd4mr4so-qfe3.prod.shaw.ca [10.0.141.215]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO00GOKMWLZ470@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 19:31:33 -0600 (MDT)
Received: from pn2ml6so.prod.shaw.ca ([10.0.121.150])
 by pd4mr4so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKO00KSPMWJXJV0@pd4mr4so.prod.shaw.ca> for
 beginners@perl.org; Wed, 04 Jul 2007 19:31:33 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO00K5QMWJ6SQ2@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 19:31:31 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id 0F2B52821B	for
 <beginners@perl.org>; Wed, 04 Jul 2007 19:30:59 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Wed,
 04 Jul 2007 19:31:25 -0600
Date: Wed, 04 Jul 2007 19:31:25 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: syntax error of some sort?
To: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCD5@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: multipart/alternative;
 boundary=_000_80D663F66DF55241BD12E3DB42DDF132045367CCD5anexActiveNet_
Content-language: en-US
Accept-Language: en-US
Thread-topic: syntax error of some sort?
Thread-index: Ace+pDN8dM/q1nhVSgiHa/IZDry2mA==
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
X-Virus-Checked: Checked
X-Old-Spam-Status: No

--_000_80D663F66DF55241BD12E3DB42DDF132045367CCD5anexActiveNet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have the following code (it's a snippet so it may seem silly, but altoget=
her it would make sense as I am forcing one array into it for a test):

#!/usr/bin/perl -w
@DNS =3D ("/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win=
2003 Std x32)/Web & DNS (Win2003 Std x32).vmx","/vmfs/volumes/467f06a5-7d59=
c067-35cb-0007e9153886/Web & DNS (Win2003 Std x32)/Disc1.vmdk","vmfs/volume=
s/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win2003 Std x32)/Disc2.vmd=
k");

sub stop_it
{
                my $state =3D `/usr/bin/vmware-cmd \"$_[0]\" getstate -q`;
                chomp($state);
                if ($state =3D=3D 'off') {
                                exit 1;
                }
                if ($state =3D=3D 'paused') {
                                print "VM Paused, aborting backup for this =
vm";
                                $error_level =3D '1';
                                exit 1;
                }
                if ($state =3D=3D 'on') {
                                'vmware-cmd $_[0] stop soft';
                                my $tools =3D `/usr/bin/vmware-cmd \"$_[0]\=
" gettoolslastactive -q`;
                                chomp($tools);
                }
                while (($state =3D=3D 'on') && ($tools =3D=3D 1)) {
                                sleep 30;
                                my $tools =3D `/usr/bin/vmware-cmd \"$_[0]\=
" gettoolslastactive -q`;
                                chomp($tools);
                }
}

stop_it(@DNS);

I am getting two errors I think, and I don't understand them.
The first is the second use of my $tools, how can I do this without causing=
 an error? Can I just start using $tools right after without my?
The second I am sure is the darn () in the file names I am feeding into the=
 function. Can someone shed some light :) I need to call the first indices =
of many arrays that get passed into this function, so I was thinking $_[0] =
was what I need. Problem is that the execution of vmware-cmd needs the valu=
e of $_[0] passed to it inside quotes.

Thanks!
jlc
jlc



--_000_80D663F66DF55241BD12E3DB42DDF132045367CCD5anexActiveNet_--

              

<tUtld.e1LNuAsR3
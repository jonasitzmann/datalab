From beginners-return-93070-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 23:06:26 2007
Return-Path: <beginners-return-93070-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l6536PL9020523
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 23:06:26 -0400
Received: (qmail 29647 invoked by uid 514); 5 Jul 2007 03:06:16 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29638 invoked from network); 5 Jul 2007 03:06:16 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 03:06:16 -0000
Received: (qmail 16467 invoked by uid 225); 5 Jul 2007 03:06:16 -0000
Delivered-To: beginners@perl.org
Received: (qmail 16460 invoked by alias); 5 Jul 2007 03:06:15 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd3mo1so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 20:06:12 -0700
Received: from pd3mr1so.prod.shaw.ca
 (pd3mr1so-qfe3.prod.shaw.ca [10.0.141.177]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO0092JRA8H1E0@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 21:06:08 -0600 (MDT)
Received: from pn2ml2so.prod.shaw.ca ([10.0.121.146])
 by pd3mr1so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKO002HXRA7F811@pd3mr1so.prod.shaw.ca> for
 beginners@perl.org; Wed, 04 Jul 2007 21:06:07 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO007LBRA7LV32@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 21:06:07 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id 706102821B	for
 <beginners@perl.org>; Wed, 04 Jul 2007 21:05:37 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Wed,
 04 Jul 2007 21:06:03 -0600
Date: Wed, 04 Jul 2007 21:06:01 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: RE: syntax error of some sort?
To: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCD9@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: text/plain; charset=us-ascii
Content-language: en-US
Accept-Language: en-US
Thread-topic: syntax error of some sort?
Thread-index: Ace+qxKI8CM02vVITMCtfGne0DJLpwAA2/ewAACIzQAAACrVcA==
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
X-Old-Spam-Status: No
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l6536PL9020523

Heh, I am running out of hair:P
I get two errors to start, one is the warning that is better write:
my ($vm) = $_[0];
instead of
my ($vm) = @_[0];

And the other is about the use of the global @_ (huh) with "my"?

I have this now:

#!/usr/bin/perl -w
@Exchange = ("/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-EX (Win2003 Ent x64)/AN-EX (Win2003 Ent x64).vmx","/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-EX (Win2003 Ent x64)/Disc-1.vmdk","/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-EX (Win2003 Ent x64)/Disk-2.vmdk");
@Filter = ("/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/ESVA 1.7.1.5/ESVA 1.7.1.5.vmx","/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/ESVA 1.7.1.5/ESVA 1.7.1.5.vmdk");
@DNS = ("/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win2003 Std x32)/Web & DNS (Win2003 Std x32).vmx","/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win2003 Std x32)/Disc1.vmdk","vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win2003 Std x32)/Disc2.vmdk");
@Domain = ("/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/AN-DC (Win2003 Ent x64).vmx","/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/AN-DC (Win2003 Ent x64)/Disk-1.vmdk");
@list = (Exchange,Filter,DNS,Domain)

sub stop_it {
        $vm = $_[0];
        $state = `/usr/bin/vmware-cmd \""$vm"\" getstate -q`;
        chomp($state);
        print "$state\n";
}

stop_it(@DNS);

And there are unspecified errors at 9 and 13?
I cant see what else is wrong in the sub?
Thanks!
jlc




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/





es<f
From beginners-return-93069-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 22:53:58 2007
Return-Path: <beginners-return-93069-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l652ruL9020414
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 22:53:57 -0400
Received: (qmail 25631 invoked by uid 514); 5 Jul 2007 02:53:47 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25589 invoked from network); 5 Jul 2007 02:53:47 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 02:53:47 -0000
Received: (qmail 11595 invoked by uid 225); 5 Jul 2007 02:53:47 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11590 invoked by alias); 5 Jul 2007 02:53:46 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd2mo3so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 19:53:44 -0700
Received: from pd4mr2so.prod.shaw.ca
 (pd4mr2so-qfe3.prod.shaw.ca [10.0.141.213]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO00H13QPGGH10@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 20:53:40 -0600 (MDT)
Received: from pn2ml10so.prod.shaw.ca ([10.0.121.80])
 by pd4mr2so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKO00A5HQPF50X0@pd4mr2so.prod.shaw.ca> for
 beginners@perl.org; Wed, 04 Jul 2007 20:53:40 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKO005H3QPE0WP0@l-daemon> for beginners@perl.org; Wed,
 04 Jul 2007 20:53:39 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id A84662821B; Wed,
 04 Jul 2007 20:53:09 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Wed,
 04 Jul 2007 20:53:35 -0600
Date: Wed, 04 Jul 2007 20:53:34 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: RE: syntax error of some sort?
In-reply-to: <58ce48dc0707041920t79c33234nde58c7bd6d282e01@mail.gmail.com>
To: "'Chas Owens'" <chas.owens@gmail.com>
Cc: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCD7@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: text/plain; charset=us-ascii
Content-language: en-US
Accept-Language: en-US
Thread-topic: syntax error of some sort?
Thread-index: Ace+qxKI8CM02vVITMCtfGne0DJLpwAA2/ew
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
References: 
 <80D663F66DF55241BD12E3DB42DDF132045367CCD5@an-ex.ActiveNetwerx.int>
 <58ce48dc0707041914r146b94b9l8731d2477e0cb2e3@mail.gmail.com>
 <58ce48dc0707041920t79c33234nde58c7bd6d282e01@mail.gmail.com>
X-Old-Spam-Status: No
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l652ruL9020414

OK Chase,
I saw the missing quotes:)
I sniped out the later work using the other elements of the array as to much was broken! I do want to pass in an array and work with all of it.
So if I wanted to work with only the first indices to start, is this correct:
sub stop_it {
        my ($vm) = @_[0];
        my $state = `/usr/bin/vmware-cmd \""$vm"\" getstate -q`;
        .
        .
        .
}
But, the system executed command needs to see "itself" that is, quotes around the value of $vm. Basically I need to pass the shell this:
Vmware-cmd "/path/to/file/name.vmx" getstate -q
So did I write that correct for both situations?





In your next email, you say this:
sub stop_it {
    for my $vm (@_) {
        my $state = `/usr/bin/vmware-cmd "$vm" getstate -q`;
        .
        .
        .
    }
}

But I don't want to pass all indices to each section in the sub, each section does something with either one, or a specific few of the indices, later I direct for example, 2 and 3 into a loop.

Thanks!
jlc



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



          

nb- 
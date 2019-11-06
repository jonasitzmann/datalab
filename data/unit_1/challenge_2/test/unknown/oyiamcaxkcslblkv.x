From beginners-return-92590-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 12:57:15 2007
Return-Path: <beginners-return-92590-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KGvEL9012558
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 12:57:14 -0400
Received: (qmail 5930 invoked by uid 514); 20 Jun 2007 16:57:08 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5921 invoked from network); 20 Jun 2007 16:57:07 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 16:57:07 -0000
Received: (qmail 4155 invoked by uid 225); 20 Jun 2007 16:57:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4140 invoked by alias); 20 Jun 2007 16:57:06 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web63414.mail.re1.yahoo.com (HELO web63414.mail.re1.yahoo.com) (69.147.97.54)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 20 Jun 2007 09:57:03 -0700
Received: (qmail 42631 invoked by uid 60001); 20 Jun 2007 16:56:58 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=1qCjkx64CFYiySsLgp6GUbkZrkEkz1sS8ZnFKHDwsNuDTkxluL9eNI7Z9bCgWddDwEqHQAUat1m9Qwubqkf5NbGQDMDqB7cIf8n0UQ6FZHwy0wZKMxqf9Uc7lQeXlfnNJ0qOULhrw5WgDdtHY2tn1byL6Er1NSJRMkM43Wjdp1Q=;
X-YMail-OSG: mbPOI14VM1k7wb90ZXm3Ms2RaefDi.fAnZ7w6fUbozfWJSyKl1NGI9apLO475A.pF5InqCVDktahjH9J_U3hJOFdZWUerUg6uN6IPYyUqYQcXEXCB6eOpGoZLHH2L3JF
Received: from [64.134.122.180] by web63414.mail.re1.yahoo.com via HTTP; Wed, 20 Jun 2007 09:56:58 PDT
Date: Wed, 20 Jun 2007 09:56:58 -0700 (PDT)
From: oryann9 <oryann9@yahoo.com>
Subject: Re: Simple Encryption - what function/module could I use?
To: Perl List <beginners@perl.org>
In-Reply-To: <687155.22481.qm@web63410.mail.re1.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Message-ID: <906674.42436.qm@web63414.mail.re1.yahoo.com>


--- oryann9 <oryann9@yahoo.com> wrote:

> 
> > > #!/usr/bin/perl
> > >
> > > use strict;
> > > use warnings;
> > >
> > > my $plaintext = do { local $/ = undef; <> };
> > > my $pad = "X" x length $plaintext;
> > >
> > > my $encryptedtext = $plaintext      ^ $pad;
> > > my $decryptedtext = $encryptedtext  ^ $pad;
> > > print
> >
>
"plaintext:\n$plaintext\n\nencryptedtext:\n$encryptedtext\n\n",
> > >         "decryptedtext:\n$decryptedtext\n";
> > >
> > 
> > I like it! I just need a simple way to encypt text
> > to store in a text
> > file. To protect sensitive info.
> > Thanks
> > 

Please ignore last message and read this one.
So you are using the binary ^ to encrypt with XORED
together bit by bit?  Please explain?

thank you.


$/etc/skel
$ perl -le 'print "hello" ^ "XXXXX";'
0=447

$ perl encrypt.plx file2
plaintext:
hello

encryptedtext:
0=447R

decryptedtext:
hello


      ____________________________________________________________________________________
Fussy? Opinionated? Impossible to please? Perfect.  Join Yahoo!'s user panel and lay it on us. http://surveylink.yahoo.com/gmrs/yahoo_panel_invite.asp?a=7 


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

nUncn�r
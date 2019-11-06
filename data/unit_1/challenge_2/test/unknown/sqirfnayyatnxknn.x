From beginners-return-93014-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 18:37:16 2007
Return-Path: <beginners-return-93014-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63MbFL9002378
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 18:37:15 -0400
Received: (qmail 3702 invoked by uid 514); 3 Jul 2007 22:37:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3693 invoked from network); 3 Jul 2007 22:37:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 22:37:06 -0000
Received: (qmail 22424 invoked by uid 225); 3 Jul 2007 22:37:06 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22417 invoked by alias); 3 Jul 2007 22:37:05 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 03 Jul 2007 15:37:02 -0700
Received: (qmail 2408 invoked by uid 515); 3 Jul 2007 22:30:18 -0000
Message-ID: <20070703223017.2407.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <848c3f360707030023nea50b4em207b453ce7a0db77@mail.gmail.com>
Subject: Re: my deck of cards (once again)
Date: Wed, 4 Jul 2007 00:29:11 +0200
Lines: 24
Organization: Chaos rules.
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-Posted-By: 85.144.210.174

"Amichai Teumim" schreef:

> my @startingdeck = ("A H","2 H","3 H","4 H","5 H","6 H","7 H","8 H",
>                 "9 H","10 H","J H","Q H","K H",
>                 "A D","2 D","3 D","4 D","5 D","6 D","7 D","8 D",
>                 "9 D","10 D","J D","Q D","K D",
>                 "A C","2 C","3 C","4 C","5 C","6 C","7 C","8 C",
>                 "9 C","10 C","J C","Q C","K C",
>                 "A S","2 S","3 S","4 S","5 S","6 S","7 S","8 S",
>                 "9 S","10 S","J S","Q S","K S");

There are other ways to write that, for example:

  my @startingdeck;
  for my $color (qw/H D C S/) {
    for my $value ('A', 2..10, qw/J Q K/) {
      push @startingdeck, "$value $color";
    }
  }

-- 
Affijn, Ruud

"Gewoon is een tijger."

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

 Zf

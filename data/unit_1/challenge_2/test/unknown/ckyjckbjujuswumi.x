From beginners-return-92507-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 10:54:31 2007
Return-Path: <beginners-return-92507-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HEsUL9007965
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 10:54:31 -0400
Received: (qmail 32128 invoked by uid 514); 17 Jun 2007 14:54:25 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32119 invoked from network); 17 Jun 2007 14:54:25 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 17 Jun 2007 14:54:25 -0000
Received: (qmail 10703 invoked by uid 225); 17 Jun 2007 14:54:24 -0000
Delivered-To: beginners@perl.org
Received: (qmail 10697 invoked by alias); 17 Jun 2007 14:54:24 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sun, 17 Jun 2007 07:54:17 -0700
Received: (qmail 32108 invoked by uid 515); 17 Jun 2007 14:54:13 -0000
Message-ID: <20070617145413.32107.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <46743A15.3030206@tacocat.net> <20070617101908.28069.qmail@lists.develooper.com> <67593405-E95C-43F8-A2DC-0BB476DA5F79@tacocat.net>
Subject: Re: character encoding & regex
Date: Sun, 17 Jun 2007 16:49:04 +0200
Lines: 46
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

Tom Allison schreef:

> I don't require actual character comparison, comparison of \{263a} is
> sufficient.

A Perl string contains characters (not octets).
The codepoint U+263a is represented by the character "\x{263a}".
Whether that takes 1 or 2 or 3 or even more octets in the string,
shouldn't matter. Read perlunitut.

If you convert your data first to proper UTF-8, then the next steps are
far easier.


> And it's rather difficult to determine in raw email what the correct
> charset is to use for each string.  I find that email sometimes
> passes multiple encodings in one message making it more difficult to
> pick apart.

There are plenty of tools available to do that for you. I have never
looked for it, but I wouldn't be surprised that someone already did
exactly that: convert an e-mail message (including of course all encoded
header lines, and all MIME parts) to an UTF-8 version.


> As for SpamAssassin.  I'm trying to stay away from that because it's
> very large

http://wiki.apache.org/spamassassin/OutOfMemoryProblems
http://wiki.apache.org/spamassassin/SURBL

> and from a development perspective -- badly documented in
> the code.  Basically, SpamAssassin is capable for what it does, but I
> don't exactly want to do that.  Similar, yet, but not exactly.

Did you look into SA "custom rules"? I find them quite easy to use.
http://mywebpages.comcast.net/mkettler/sa/SA-rules-howto.txt
http://www.askdavetaylor.com/how_do_i_add_custom_spamassassin_rules_for_content_filtering.html
http://wiki.apache.org/spamassassin/CustomRulesets
http://www.rulesemporium.com/rules.htm

-- 
Affijn, Ruud

"Gewoon is een tijger."


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

_1m=lr
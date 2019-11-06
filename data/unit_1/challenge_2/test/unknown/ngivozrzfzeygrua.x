From beginners-return-92661-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 08:41:54 2007
Return-Path: <beginners-return-92661-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MCfqL9006282
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 08:41:53 -0400
Received: (qmail 9765 invoked by uid 514); 22 Jun 2007 12:41:46 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9756 invoked from network); 22 Jun 2007 12:41:45 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 12:41:45 -0000
Received: (qmail 11053 invoked by uid 225); 22 Jun 2007 12:41:45 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11048 invoked by alias); 22 Jun 2007 12:41:44 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from ms-smtp-07.ohiordc.rr.com (HELO ms-smtp-07.ohiordc.rr.com) (65.24.5.141)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 05:41:35 -0700
Received: from janus.tacocat.net (cpe-65-29-101-30.twmi.res.rr.com [65.29.101.30])
	by ms-smtp-07.ohiordc.rr.com (8.13.6/8.13.6) with ESMTP id l5MCfTxY004998;
	Fri, 22 Jun 2007 08:41:29 -0400 (EDT)
Received: by janus.tacocat.net (Postfix, from userid 33)
	id 2455E4C068; Fri, 22 Jun 2007 08:41:29 -0400 (EDT)
To: tom@stonehenge.com
Subject: Re: still working with utf8
Received: from 198.208.159.20 (auth. user tom@tacocat.net@localhost)
          by www.tacocat.net with HTTP; Fri, 22 Jun 2007 07:41:29 -0500
To: "Tom Phoenix" <tom@stonehenge.com>
Subject: Re: still working with utf8
Date: Fri, 22 Jun 2007 07:41:28 -0500
X-Mailer: IlohaMail/0.8.14 (On: www.tacocat.net)
Message-ID: <qxlMLar3.1182516088.9489320.tom@tacocat.net>
In-Reply-To: <31086b240706211956laa2f578u59efa884a4867ceb@mail.gmail.com>
From: <tom@tacocat.net>
Bounce-To:  <tom@tacocat.net>
Errors-To: <tom@tacocat.net>
CC: "beginners perl" <beginners@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Virus-Scanned: Symantec AntiVirus Scan Engine
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5MCfqL9006282


On 6/22/2007, "Tom Phoenix" <tom@stonehenge.com> wrote:

>
>On 6/21/07, Tom Allison <tom@tacocat.net> wrote:
>
>> I guess my question is, for CJK languages, should I expect the notion
>> of using a regex like \w+ to pick up entire strings of text instead
>> of discrete words like latin based languages?
>
>Once you've enabled what the perlunicode manpage calls "Character
>Semantics", it says:
>
>    Character classes in regular expressions match characters instead
>    of bytes and match against the character properties specified in
>    the Unicode properties database.  "\w" can be used to match a
>    Japanese ideograph, for instance.
>
>    http://perldoc.perl.org/perlunicode.html
>
>Does that manpage get you any closer to a solution? Hope this helps!
>

I got a long ways with this.

Given a base64 encoded string I can decode it using MIME::Base64.  But it
returns octets (thought they all look the same).
Convert the octets to string using encode_utf() from Encode and you can
use regex on it just fine.

But I was surprised to find that my first test case what a japanese
string of some 8-10 characters with no whitespace.  I suppose it could
be a single word, but I didn't think the CJK languages had more than
2-4 characters (pictographs?) to a word.  But I have no real experiences.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



                  

h.iyr
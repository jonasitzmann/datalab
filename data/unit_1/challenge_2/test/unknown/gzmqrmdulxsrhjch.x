From beginners-return-92137-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 17:07:21 2007
Return-Path: <beginners-return-92137-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54L7JhB032758
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 17:07:20 -0400
Received: (qmail 346 invoked by uid 514); 4 Jun 2007 21:07:04 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 337 invoked from network); 4 Jun 2007 21:07:03 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jun 2007 21:07:03 -0000
Received: (qmail 25297 invoked by uid 225); 4 Jun 2007 21:07:03 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25291 invoked by alias); 4 Jun 2007 21:07:02 -0000
X-Spam-Status: No, hits=1.6 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 04 Jun 2007 14:07:00 -0700
Received: (qmail 300 invoked by uid 515); 4 Jun 2007 21:06:56 -0000
Message-ID: <20070604210655.32767.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <46625E55.20306@stny.rr.com>   <58ce48dc0706030242v9ab59ddp690ee65eaf45fc96@mail.gmail.com>   <46637A80.3040305@stny.rr.com> <1180978774.144190.223540@m36g2000hse.googlegroups.com>
Subject: Re: freeze after <STDIN>
Date: Mon, 4 Jun 2007 23:05:42 +0200
Lines: 49
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

Paul Lalli schreef:
> Ryan:

>> I thought the * character needed a backslash to be taken literally.
>> But I guess that's only in regular expressions?  I was confused
>> about that.
>
> Correct.  * is not special in a double quoted string.  The only
> character[s] that always need to be backslashed in a double-quoted
string
> are:
> $ (otherwise, it's the start of a scalar variable, array element, or
> hash element)
> @ (otherwise, it's the start of an array or slice)

An unescaped @ can be safe, like in "@", qq{@}, qq{@=}, etc.
So the @ should not be followed by word characters or plus or minus or,
inside qq{}, any of the delimiters.
But better safe than sorry, so yes, it's best to always escape the @
inside a double quoted string.

See `perldoc perlop` about qq() and qx() and qx'' and `` and <<.

See `perldoc perlre` too, because the pattern in any regex, and also the
RHS (right hand side) of a substitution (s///) are also double quoted
strings.


> \ (otherwise, it's the indication that the next character is to be
> escaped)
>
> Characters that *sometimes* need to be backslashed in a double quoted
> string include:
> " (if and only if you're actually using " as your string delimiter)
> ' (if it is both preceded by an interpolated variable, and followed by
> word characters)
> : (if it is both preceded by an interpolated variable, and followed by
> a second :, and then word characters)
> Whatever delimiter you're using if you use the qq{} operator.

Fine. A "bad" example of what qq() can cope with:
perl -wle'print qq{a{b}c}'
a{b}c

-- 
Affijn, Ruud

"Gewoon is een tijger."


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

e>kGaio.xu
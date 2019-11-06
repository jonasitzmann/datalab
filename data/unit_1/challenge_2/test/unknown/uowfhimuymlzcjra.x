From beginners-return-92553-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 00:15:25 2007
Return-Path: <beginners-return-92553-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5K4FNL9005499
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 00:15:23 -0400
Received: (qmail 3705 invoked by uid 514); 20 Jun 2007 04:15:16 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3696 invoked from network); 20 Jun 2007 04:15:16 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 04:15:16 -0000
Received: (qmail 19866 invoked by uid 225); 20 Jun 2007 04:15:15 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19856 invoked by alias); 20 Jun 2007 04:15:14 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 19 Jun 2007 21:15:12 -0700
Received: (qmail 3687 invoked by uid 515); 20 Jun 2007 04:15:07 -0000
Message-ID: <20070620041507.3686.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <20070618144504.122e9b28@nietzsche><4ce365ec0706190532p1fb2621bqfa3ec4388aa4164@mail.gmail.com> <20070619145838.53798f7e@nietzsche>
Subject: Re: bug in perl or in my head ;-)
Date: Wed, 20 Jun 2007 06:12:22 +0200
Lines: 82
Organization: Chaos rules.
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-15"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-Posted-By: 85.144.210.174

Martin Barth schreef:

> [use encoding]
> If I understand you right, following code should allways create a utf8
> encoded file.

No, "use encoding" is about the encoding of your script, not about file
IO.

<quote src="encoding">
encoding - allows you to write your script in non-ascii or non-utf8
</quote>


> Since my inputfile does only contain 7bit ascii data.
> and STDIN STDOUT and STDERR is changed to utf8.
>
> % perl -C7 -wpi -e 'use encoding "utf8"; s/"o/�/' datei

In that case, your -C7 could be -C4 or -CE, because STDIN and STDOUT are
already handled by the "encoding" pragma, see again `perldoc encoding`.

But you missed the 8+16 (i+o). See `perldoc perlrun`.

The C<use encoding "utf8"> could be done through -M. But you don't need
"encoding".

So better write it as

  perl -Cio -wpi -e 's/"o/\x{f6}/' datei

(or -CIOEio, which is -C31)


> % file datei
> datei: ISO-8859 text

Why not "ASCII text"? Are you sure there are no 8 bit values in there?
(Maybe you forgot to put the original file back, consider "-i.bak".)


> % hexdump  -C datei
> 00000000  65 69 6e 65 20 74 65 73  74 20 64 61 74 65 69 0a
> |eine test datei.|
> 00000010  64 69 65 20 22 75 20 f6  20 0a
> |die "u . .|
>
> f6 = � in lation1
> c3 b6 = � in utf8


$ file datei
datei: ASCII text


$ hexdump -e '"%07_ad"  16/1 " %02X" "\n"'
          -e '"       " 16/1 " %-2_p" "\n\n"' datei

0000000 65 69 6E 20 74 65 73 74 20 64 61 74 65 69 0A 64
        e  i  n     t  e  s  t     d  a  t  e  i  .  d

0000016 69 65 20 22 75 20 22 6F 0A
        i  e     "  u     "  o  .


$ perl -C31 -i.bak -wpe 's/"o/\x{f6}/g' datei


$ hexdump -e '"%07_ad"  16/1 " %02X" "\n"' \
          -e '"       " 16/1 " %-2_p" "\n\n"' datei

0000000 65 69 6E 20 74 65 73 74 20 64 61 74 65 69 0A 64
        e  i  n     t  e  s  t     d  a  t  e  i  .  d

0000016 69 65 20 22 75 20 C3 B6 0A
        i  e     "  u     .  .  .

-- 
Affijn, Ruud

"Gewoon is een tijger."


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

ebh >QiOs7d
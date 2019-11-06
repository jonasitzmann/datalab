From beginners-return-92540-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 08:59:01 2007
Return-Path: <beginners-return-92540-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JCx0L9029595
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:59:00 -0400
Received: (qmail 28293 invoked by uid 514); 19 Jun 2007 12:58:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28276 invoked from network); 19 Jun 2007 12:58:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 19 Jun 2007 12:58:53 -0000
Received: (qmail 21962 invoked by uid 225); 19 Jun 2007 12:58:53 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21953 invoked by alias); 19 Jun 2007 12:58:51 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from lexx.senfdax.de (HELO lexx.senfdax.de) (85.10.209.43)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 19 Jun 2007 05:58:48 -0700
Received: from e180239165.adsl.alicedsl.de ([85.180.239.165] helo=nietzsche)
	by lexx.senfdax.de with esmtpsa (TLS-1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <martin@senfdax.de>)
	id 1I0dCT-00062X-UD
	for beginners@perl.org; Tue, 19 Jun 2007 14:52:52 +0200
Date: Tue, 19 Jun 2007 14:58:38 +0200
From: Martin Barth <martin@senfdax.de>
To: beginners@perl.org
Subject: Re: bug in perl or in my head ;-)
Message-ID: <20070619145838.53798f7e@nietzsche>
In-Reply-To: <4ce365ec0706190532p1fb2621bqfa3ec4388aa4164@mail.gmail.com>
References: <20070618144504.122e9b28@nietzsche>
	<4ce365ec0706190532p1fb2621bqfa3ec4388aa4164@mail.gmail.com>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Spam-Score: -3.8 (---)
X-Spam-Report: Content analysis details:   (-3.8 points, 5.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-1.8 ALL_TRUSTED            Nachricht wurde nur �ber vertrauensw�rdige Rechner
	weitergeleitet
	-2.6 BAYES_00               BODY: Spamwahrscheinlichkeit nach Bayes-Test: 0-1%
	[score: 0.0000]
	0.6 AWL                    AWL: From: address is in the auto white-list
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5JCx0L9029595

Hi jay,






> You haven't told us what Perl thinks the encoding of the first file
> is. 

how can I do that?

> file is a system command that makes use of number of different
> approaches to determine file type including, on some systems, I think
> it even makes use of metadata. Actually examining the data in the file
> is time-consuming, and therefore a method of last resort, employed
> only when some other context doesn't match. It also returns the first
> match, not all matches.

You're right, but my inputfile does only contain 7bit ascii data. So
every file perl creats, or modifies, should be utf8. I am working with
a ubuntu, so everything should be utf8-ified. my xterm is utf8! that
means that the "ä" in s/// is utf8, too.

<snip>

> At the command line, you can use the -C switch to avoid confusion.

If I understand you right, following code should allways create a utf8
encoded file. Since my inputfile does only contain 7bit ascii data. and
STDIN STDOUT and STDERR is changed to utf8.

% perl -C7 -wpi -e 'use encoding "utf8"; s/"o/ö/' datei
% file datei
datei: ISO-8859 text
% hexdump  -C datei
00000000  65 69 6e 65 20 74 65 73  74 20 64 61 74 65 69 0a  |eine test datei.|
00000010  64 69 65 20 22 75 20 f6  20 0a                    |die "u . .|

f6 = ö in lation1
c3 b6 = ö in utf8


Regards
Martin

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



                

mVa n5pH$
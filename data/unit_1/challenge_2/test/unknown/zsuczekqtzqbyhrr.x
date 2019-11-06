From beginners-return-92491-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 15:29:42 2007
Return-Path: <beginners-return-92491-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GJTfL9018783
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 15:29:41 -0400
Received: (qmail 23978 invoked by uid 514); 16 Jun 2007 19:29:36 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 23969 invoked from network); 16 Jun 2007 19:29:35 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 16 Jun 2007 19:29:35 -0000
Received: (qmail 9485 invoked by uid 225); 16 Jun 2007 19:29:35 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9477 invoked by alias); 16 Jun 2007 19:29:34 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from ms-smtp-03.ohiordc.rr.com (HELO ms-smtp-03.ohiordc.rr.com) (65.24.5.137)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 16 Jun 2007 12:29:32 -0700
Received: from janus.tacocat.net (cpe-65-29-101-30.twmi.res.rr.com [65.29.101.30])
	by ms-smtp-03.ohiordc.rr.com (8.13.6/8.13.6) with ESMTP id l5GJTPYV026305
	for <beginners@perl.org>; Sat, 16 Jun 2007 15:29:26 -0400 (EDT)
Received: from [192.168.1.10] (isengard.tacocat.net [192.168.1.10])
	by janus.tacocat.net (Postfix) with ESMTP id 6F9C94C064
	for <beginners@perl.org>; Sat, 16 Jun 2007 15:29:25 -0400 (EDT)
Message-ID: <46743A15.3030206@tacocat.net>
Date: Sat, 16 Jun 2007 15:29:25 -0400
From: Tom Allison <tom@tacocat.net>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: beginners perl <beginners@perl.org>
Subject: character encoding & regex
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: Symantec AntiVirus Scan Engine

I'm trying to do some regular expression on strings in email. They could be 
encoded to something.  But I can't tell because I don't have a utf8 unicode 
xterm window that will show me anything.  At best I get ?????a??  and other 
trash like that.  I think this is typical for ascii text renderings of two-bit 
characters.

Not be to deterred by the lack of anything this fancy in xterm I thought I would 
plug along.

I made a character thus:
my $string = chr(0x263a);  # reported to be a smiley face...

under 'use bytes' this prints as a ':'
without bytes this prints to something resembling a, a little box, a little circle.


And with unicode and locales and bytes it all gets extremely ugly.


I found something that SpamAssassin uses to convert all this "goo" into a 
repeatable set of characters (which is all I'm really after) by running 
something that looks like this:

sub _quote_bytea {
     my ($str) = @_;
     my $buf = "";
     foreach my $char (split(//,$str)) {
         my $oct = sprintf ("%lo", ord($char));
         if (length( $oct ) < 2 ) { $oct = '0' . $oct; }
         if (length( $oct ) < 3 ) { $oct = '0' . $oct; }
         $buf .= '\\\\\\\\' . $oct;
     }
     return $buf;
}

Which is also "ugly" in it's own right.  But I found mention that the "%lo" is 
considered really backward compatable notation and not something you might want 
to use (or need to) in perldoc -f sprintf.

So one question I have that might be useful is, what alternatives does modern 
perl offer to "%lo" ?

I probably have a lot more, but I honestly am not sure if I can get an answer I 
can live with.  I'm just trying to tokenize email and haven't seen a need to 
support these other character sets just yet.  I would like to.  But I haven't 
been able to find any sane way of doing it -- like can I convert everything into 
utf8 format or just convert everything into octal numbers?  I don't need perfect 
human-readable conversion, I just need consistent conversions.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

 r=7ar
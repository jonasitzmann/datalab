From beginners-return-92492-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 17:09:17 2007
Return-Path: <beginners-return-92492-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GL9GL9019521
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 17:09:16 -0400
Received: (qmail 14109 invoked by uid 514); 16 Jun 2007 21:09:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14100 invoked from network); 16 Jun 2007 21:09:10 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 16 Jun 2007 21:09:10 -0000
Received: (qmail 27059 invoked by uid 225); 16 Jun 2007 21:09:10 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27053 invoked by alias); 16 Jun 2007 21:09:09 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-curtail.atl.sa.earthlink.net (HELO elasmtp-curtail.atl.sa.earthlink.net) (209.86.89.64)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 16 Jun 2007 14:09:07 -0700
Received: from [63.26.161.84] (helo=[63.26.161.84])
	by elasmtp-curtail.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1HzfW1-0007ua-VX
	for beginners@perl.org; Sat, 16 Jun 2007 17:09:03 -0400
Message-ID: <4674505D.3040106@earthlink.net>
Date: Sat, 16 Jun 2007 16:04:29 -0500
From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070221)
MIME-Version: 1.0
To: Beginners List <beginners@perl.org>
Subject: Re: character encoding & regex
References: <46743A15.3030206@tacocat.net>
In-Reply-To: <46743A15.3030206@tacocat.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-ELNK-Trace: 5d730262a02eef364886dd14879fb8dbda7403c53f5cc7e274bf435c0eb9d478eee15ddb228a014ab1f8bdc91d3c5c9f9084d7eaceaf1a56350badd9bab72f9c
X-Originating-IP: 63.26.161.84

On 06/16/2007 02:29 PM, Tom Allison wrote:
> I'm trying to do some regular expression on strings in email. They could 
> be encoded to something.  But I can't tell because I don't have a utf8 
> unicode xterm window that will show me anything.  At best I get 
> ?????a??  and other trash like that.  I think this is typical for ascii 
> text renderings of two-bit characters.
> 
> Not be to deterred by the lack of anything this fancy in xterm I thought 
> I would plug along.
> 
> I made a character thus:
> my $string = chr(0x263a);  # reported to be a smiley face...
> 
> under 'use bytes' this prints as a ':'
> without bytes this prints to something resembling a, a little box, a 
> little circle.
> 
> 
> And with unicode and locales and bytes it all gets extremely ugly.
> 
> 
> I found something that SpamAssassin uses to convert all this "goo" into 
> a repeatable set of characters (which is all I'm really after) by 
> running something that looks like this:
> 

What do you mean by a "repeatable set of characters"? Unicode characters 
are repeatable.

> sub _quote_bytea {
>     my ($str) = @_;
>     my $buf = "";
>     foreach my $char (split(//,$str)) {
>         my $oct = sprintf ("%lo", ord($char));
>         if (length( $oct ) < 2 ) { $oct = '0' . $oct; }
>         if (length( $oct ) < 3 ) { $oct = '0' . $oct; }
>         $buf .= '\\\\\\\\' . $oct;
>     }
>     return $buf;
> }
> 
> Which is also "ugly" in it's own right.  But I found mention that the 
> "%lo" is considered really backward compatable notation and not 
> something you might want to use (or need to) in perldoc -f sprintf.
> 

The way I read it, it says that %O is a "backward compatible" version of 
%lo.

> So one question I have that might be useful is, what alternatives does 
> modern perl offer to "%lo" ?
> 
> I probably have a lot more, but I honestly am not sure if I can get an 
> answer I can live with.  I'm just trying to tokenize email and haven't 
> seen a need to support these other character sets just yet.  I would 
> like to.  But I haven't been able to find any sane way of doing it -- 
> like can I convert everything into utf8 format or just convert 
> everything into octal numbers?  I don't need perfect human-readable 
> conversion, I just need consistent conversions.
> 

You probably should convert everything to utf8. Also, you need a 
utf8-enabled xterm such as rxvt-unicode or gnome-terminal. On my Debian 
Etch system, the text console seems to be UTF8 by default :-O

BTW, I still have no clue what you mean by tokenize e-mail.



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

3h/�d e67tXoou
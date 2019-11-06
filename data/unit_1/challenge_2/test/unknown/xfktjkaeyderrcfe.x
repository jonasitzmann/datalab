From beginners-return-92697-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 11:02:26 2007
Return-Path: <beginners-return-92697-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5NF2OL9020201
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 11:02:25 -0400
Received: (qmail 13380 invoked by uid 514); 23 Jun 2007 15:02:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13370 invoked from network); 23 Jun 2007 15:02:15 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 23 Jun 2007 15:02:15 -0000
Received: (qmail 12496 invoked by uid 225); 23 Jun 2007 15:02:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 12490 invoked by alias); 23 Jun 2007 15:02:14 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from smtp111.plus.mail.re1.yahoo.com (HELO smtp111.plus.mail.re1.yahoo.com) (69.147.102.74)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sat, 23 Jun 2007 08:02:11 -0700
Received: (qmail 62558 invoked from network); 23 Jun 2007 15:02:07 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=Received:X-YMail-OSG:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
  b=rjOK7/k0j7XKCQzOLnhm970zc66wwFrq5m02wIlH2hgsG1kM83g/Jeh241rLN1NURTQjufd8Qs5f9VhnKI7iJsvmd0BfGBgkQZcH3BIMEg8O7jsATp89R6bOK58SRaj32fwzPxGqCZjBvoyvGAXoLKy2A7LTO/xJq9RnI0Bu8ds=  ;
Received: from unknown (HELO ?127.0.0.1?) (theillien@76.21.182.124 with plain)
  by smtp111.plus.mail.re1.yahoo.com with SMTP; 23 Jun 2007 15:02:06 -0000
X-YMail-OSG: iJPuQWsVM1kAsklV3LPvbuIk7m7DRZCt12SVsWG.DeZKvQxk8_WkOfVbunbVu1vVq72r6r88M_mBGuAgI83XIZXQjUbyaCT3kCfoK5KWtm8N0C8yyw--
Message-ID: <467D3557.1020807@yahoo.com>
Date: Sat, 23 Jun 2007 10:59:35 -0400
From: Mathew <theillien@yahoo.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Paul Lalli <mritty@gmail.com>
CC: beginners@perl.org
Subject: Re: nevermind
References: <467CD1CF.8070300@yahoo.com><467CD762.3030405@yahoo.com> <1182598951.422397.301230@p77g2000hsh.googlegroups.com>
In-Reply-To: <1182598951.422397.301230@p77g2000hsh.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Actually, I didn't write the code.  It was written by someone else whom
no longer works at our company.

Keep up with my goings on at http://theillien.blogspot.com

Paul Lalli wrote:
> On Jun 23, 4:18 am, theill...@yahoo.com (Mathew Snyder) wrote:
>> You'll notice in the section that creates the filehandle I have a statement that
>> says "next if $address =~ m/^#/gmx;".  I had to escape the "#".  Can anyone tell
>> me why that is?  It isn't a special character for regexes that I've ever seen used.
> 
> You need to read
> perldoc perlre
> 
> It's special because for some reason you chose to use the /x
> modifier.  This modifier allows you to use both whitespace and
> comments inside your regular expressions.
> 
> Since you obviously don't know what the /x modifier does, why are you
> using it?  Blindly typing code that you don't understand is a really
> bad way to program.
> 
> Paul Lalli
> 
> P.S.  (Yes, I know PBP recommends always using /mxs, but anyone who
> uses /msx on every regexp because PBP recommends it should at least
> read enough of PBP to know *why* its recommended)
> 
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

n
+k-V
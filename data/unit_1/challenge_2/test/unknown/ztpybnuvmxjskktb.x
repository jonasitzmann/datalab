From speakup-bounces@braille.uwo.ca  Thu Jun 21 23:38:21 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M3cLL9000808
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 23:38:21 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1ZyS-0007Ur-00; Thu, 21 Jun 2007 23:38:16 -0400
Received: from linserver.romuald.net.eu.org ([63.228.150.209])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1ZyQ-0007QB-00
	for <speakup@braille.uwo.ca>; Thu, 21 Jun 2007 23:38:14 -0400
Received: (qmail 28956 invoked by uid 1000); 21 Jun 2007 20:37:41 -0700
Date: Thu, 21 Jun 2007 20:37:41 -0700
From: Gregory Nowak <greg@romuald.net.eu.org>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: [ot] Windows programming
Message-ID: <20070622033741.GB27880@localhost.localdomain>
References: <20070621193101.GA3948@cm.nu>
	<000701c7b477$f91e5110$ab00a8c0@tenstac>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000701c7b477$f91e5110$ab00a8c0@tenstac>
X-PGP-Key: http://www.romuald.net.eu.org/pubkey.asc
User-Agent: Mutt/1.5.13 (2006-08-11)
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: "Speakup is a screen review system for Linux."
	<speakup@braille.uwo.ca>
List-Id: "Speakup is a screen review system for Linux."
	<speakup.braille.uwo.ca>
List-Unsubscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=unsubscribe>
List-Archive: <http://speech.braille.uwo.ca/pipermail/speakup>
List-Post: <mailto:speakup@braille.uwo.ca>
List-Help: <mailto:speakup-request@braille.uwo.ca?subject=help>
List-Subscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Another option for a development environment is microsoft's windows
services for unix:

http://www.microsoft.com/downloads/details.aspx?FamilyID=896C9688-601B-44F1-81A4-02878FF11778&displaylang=en

If you want to use an ide, which uses mingw as the compiler, check out
dev-c++:

http://www.bloodshed.net/dev/devcpp.html

It's fairly accessible with wineyes, a bit more so after I created a set
file and key label dictionary for it.

As for a win32 tutorial, I found:

http://winprog.org/tutorial/

to be useful. 

Since we're discussing this on here, does anyone know of anything for
c/c++ that would abstract the win32 api a bit more, so it wouldn't be
such a chore to program for it, making it a bit easier to write win32
applications? Thanks.

Greg



On Thu, Jun 21, 2007 at 09:49:37PM -0500, Spie Sutherland wrote:
> The simplest windows programming environment for a linux programmer 
> is of course GNU C, which you have already mentioned. Cygwin is more 
> full functioned than MinGW but more complex and has a few quirks that 
> I really do not like, for example it's installation process is bizarre and 
> annoying, the way it maps windows directories to unix naming is weird,
> the options for file types can be confusing, and I found that sometimes 
> its impossible to remove all of cygwin. It creates some files that just 
> cannot be deleted, I hate software that does that. On the other hand 
> it's an impressive environment, you can almost have it look exactly 
> like a linux machine.I have used Cygwin and MinGW and I have to 
> say that MinGW was simple in the way I like it. I do not like complex 
> development environments. I don't want to spend a week just to 
> figure out how to do hello world. MinGW is faster to get actually 
> programming with, and although limited in comparison, was just 
> right for my needs. It has the win32 API:
> 
> http://www.mingw.org/docs.shtml#win32api
> 
> I did some win32 with this and I loved it because it's GNU and very 
> straightforward. The Win32 API however is extremely complex and 
> very annoying. Surprised? <g> Your battle will be more one of 
> understanding the win32 API that one of tools. It can take quite a 
> while to do the simplest of things with win32. I would recommend 
> looking for some small tutorials, that's what I did and found a few 
> that got me started. Find a getting started tutorial for MinGW and 
> look for really simple win32 examples. I didn't do any win32 serial 
> code but you can most likely find some examples on the net. 
> I don't know anything about SAPI.
> 
>   -- Spie
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

- -- 
web site: http://www.romuald.net.eu.org
gpg public key: http://www.romuald.net.eu.org/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)

- --
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGe0QF7s9z/XlyUyARAr9VAJ9Q4DhtxWl6bd6Qgxosh67tY8ztSACgxUEf
2I8gFT7o1+4dP96aW6Ro3Rw=
=xtxk
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

       

A:e_ 
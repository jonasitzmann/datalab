From speakup-bounces@braille.uwo.ca  Fri Jun  1 08:42:34 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51CgYhB009815
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 08:42:34 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hu6SY-0006tx-00; Fri, 01 Jun 2007 08:42:26 -0400
Received: from mtao03.charter.net ([209.225.8.188])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hu6SX-0006tC-00
	for <speakup@braille.uwo.ca>; Fri, 01 Jun 2007 08:42:25 -0400
Received: from aa09.charter.net ([10.20.200.161]) by mtao03.charter.net
	(InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
	id <20070601124148.TZBO1525.mtao03.charter.net@aa09.charter.net>
	for <speakup@braille.uwo.ca>; Fri, 1 Jun 2007 08:41:48 -0400
Received: from h14me.homelinux.net ([24.151.115.123]) by aa09.charter.net
	with ESMTP
	id <20070601124148.USVP6151.aa09.charter.net@h14me.homelinux.net>
	for <speakup@braille.uwo.ca>; Fri, 1 Jun 2007 08:41:48 -0400
Received: from h14me.homelinux.net (localhost [127.0.0.1])
	by h14me.homelinux.net (8.13.4/8.12.11) with ESMTP id l51Cfm1X021418
	for <speakup@braille.uwo.ca>; Fri, 1 Jun 2007 08:41:48 -0400
Received: (from alex_snow@localhost)
	by h14me.homelinux.net (8.13.4/8.12.10/Submit) id l51Cfm6M021417
	for speakup@braille.uwo.ca; Fri, 1 Jun 2007 08:41:48 -0400
Date: Fri, 1 Jun 2007 08:41:48 -0400
From: Alex Snow <alex_snow@gmx.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Directory Services and linux
Message-ID: <20070601124148.GA21379@gmx.net>
References: <20070527225559.GA25303@gmx.net>
	<001101c7a0bd$a2650120$ab00a8c0@tenstac>
	<E1HtohN-0007It-00@speech.braille.uwo.ca>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1HtohN-0007It-00@speech.braille.uwo.ca>
User-Agent: Mutt/1.4.2.1i
X-Virus-Scanned: ClamAV version 0.88,
	clamav-milter version 0.87 on h14me.homelinux.net
X-Virus-Status: Clean
X-Chzlrs: 0
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

Yeah I was thinking about looking into ldap...the O'Rielly book I read 
on Nis said that when it became stable ldap would be the best choice 
since Nis was rather insecure and nis+ never really took off.

Thanks for the info, I'll give openldap a try...
On Thu, May 
31, 2007 at 12:44:02PM -0500, Terry Klarich wrote:
> You can use NIS if you want to open up your systems.  Nis has more holes in it than a screen door.  It's actually worse than
> sendmail.
> 
> Use ldap.
> 
> Terry
> On Sun, 27 May 2007 19:17:53 -0500you write:
> >NIS is still the standard used in most unix networks, including 
> >Solaris where it was born, actually on the predecessor SunOS.
> >Sun creaited NIS+ as a successor but it never gained ground 
> >over NIS. You can't really go wrong with NIS, it is still the 
> >most widely supported naming service after DNS. 
> >
> >  -- Spie
> >
> >_______________________________________________
> >Speakup mailing list
> >Speakup@braille.uwo.ca
> >http://speech.braille.uwo.ca/mailman/listinfo/speakup
> >
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

-- 
lp1 on fire
	-- One of the more obfuscated kernel messages

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

  

 nvt lMsTkfoUo
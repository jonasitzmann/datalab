From speakup-bounces@braille.uwo.ca  Tue Jun  5 15:37:39 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55JbchB013040
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 15:37:38 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HveqR-0001Os-00; Tue, 05 Jun 2007 15:37:31 -0400
Received: from fed1rmmtao102.cox.net ([68.230.241.44])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HveqQ-0001OM-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 15:37:30 -0400
Received: from fed1rmimpo01.cox.net ([70.169.32.71]) by fed1rmmtao102.cox.net
	(InterMail vM.7.05.02.00 201-2174-114-20060621) with ESMTP
	id <20070605193658.HVAT5800.fed1rmmtao102.cox.net@fed1rmimpo01.cox.net>
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 15:36:58 -0400
Received: from lnx2.holmesgrown.com ([70.162.12.128])
	by fed1rmimpo01.cox.net with bizsmtp
	id 7vcz1X0082lltDi0000000; Tue, 05 Jun 2007 15:36:59 -0400
Received: from lnx3.holmesgrown.com ([192.168.1.5] ident=mail)
	by lnx2.holmesgrown.com with esmtp (Exim 4.62)
	(envelope-from <steve@holmesgrown.com>) id 1Hvepv-0002o5-W1
	for speakup@braille.uwo.ca; Tue, 05 Jun 2007 12:37:00 -0700
Received: from steve by lnx3.holmesgrown.com with local (Exim 4.62)
	(envelope-from <steve@holmesgrown.com>) id 1Hvepu-0001R6-UE
	for speakup@braille.uwo.ca; Tue, 05 Jun 2007 12:36:59 -0700
Date: Tue, 5 Jun 2007 12:36:58 -0700
From: Steve Holmes <steve@holmesgrown.com>
To: speakup@braille.uwo.ca
Subject: Re: OT: Directory Services and linux
Message-ID: <20070605193658.GA5422@lnx3.holmesgrown.com>
Mail-Followup-To: speakup@braille.uwo.ca
References: <20070527225559.GA25303@gmx.net>
	<E1HtoeK-0007AI-00@speech.braille.uwo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1HtoeK-0007AI-00@speech.braille.uwo.ca>
User-Agent: Mutt/1.5.12-2006-07-14
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

Is there some good documentation on LDAP? When I looked at the
documentation that came with openldap, I got lost in the weeds,
overwelmed and my head was swimming.  For whatever reason, it just
looked like complete over-kill to me.  I really don't have a good
grasp on what LDAP can do for me.  I originally thought it was a
litteral directory server like for mail and address books; that was
probably my first mistake.:)

On Thu, May 31, 2007 at 12:40:53PM -0500, Terry Klarich wrote:
> You want to look at openldap.  I am running it here on my personal network.  Id's are shared among all my machines, samba accounts
> and html accounts.  Works well.
> 
> Terry
> On Sun, 27 May 2007 18:55:59 -0400you write:
> >Hi,
> >
> >Have a few  linux machines running here that I'd like to have running a 
> >directory service to synchronise login information and the like.  I was 
> >just wondering, what's the best directory service to run these days? I 
> >had to take an intro to Unix class for school, and that mentioned NIS, 
> >which I had looked into in the past...though I just read the ORielly 
> >book on that and it seemed to say that NIS should only be used until 
> >newer alternatives became stable, and the book was about 5 years old.  
> >Being able to interoperate with windows hosts would be nice also, though 
> >I'm not holding my breath...
> >Any help would be apreciated.
> >
> >-- 
> >quit   When the quit statement is read, the  bc  processor
> >       is  terminated, regardless of where the quit state-
> >       ment is found.  For example, "if  (0  ==  1)  quit"
> >       will cause bc to terminate.
> >	-- seen in the manpage for "bc". Note the "if" statement's logic
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
HolmesGrown Solutions
The best solutions for the best price!
http://holmesgrown.ld.net/

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                

dwt.z�	t"/ 
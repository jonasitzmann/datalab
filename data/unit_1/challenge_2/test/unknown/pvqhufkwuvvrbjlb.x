From speakup-bounces@braille.uwo.ca  Wed Jun  6 14:32:06 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56IW5hB024938
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 14:32:05 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hw0IX-0007Ca-00; Wed, 06 Jun 2007 14:31:57 -0400
Received: from klarich.net ([24.249.75.179])
	by speech.braille.uwo.ca with smtp (Exim 3.36 #1 (Debian))
	id 1Hw0IW-0007CH-00
	for <speakup@braille.uwo.ca>; Wed, 06 Jun 2007 14:31:56 -0400
Received: (qmail 30840 invoked by uid 201); 6 Jun 2007 18:31:25 -0000
Received: from localhost (HELO klarich.net) (sendmail-bs@127.0.0.1)
	by localhost with SMTP; 6 Jun 2007 18:31:25 -0000
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: OT: Directory Services and linux 
In-reply-to: <20070605193658.GA5422@lnx3.holmesgrown.com> 
References: <20070527225559.GA25303@gmx.net>
	<E1HtoeK-0007AI-00@speech.braille.uwo.ca>
	<20070605193658.GA5422@lnx3.holmesgrown.com>
Comments: In-reply-to Steve Holmes <steve@holmesgrown.com>
	message dated "Tue, 05 Jun 2007 12:36:58 -0700."
MIME-Version: 1.0
Content-ID: <30837.1181154684.1@klarich.net>
Date: Wed, 06 Jun 2007 13:31:24 -0500
From: Terry Klarich <terry@klarich.net>
Message-Id: <E1Hw0IW-0007CH-00@speech.braille.uwo.ca>
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

LDAP is not something you can setup in a few minutes.  And, it might be over kill for you.  However, there is no other real options
which are secure.  In my case, I built an ldap solution for my employer; so, have been through the learning curve.  I use it for my
home network.  It consists of 4 unix and 3 windows machines.  I wanted to have a single password for all authentication processes.
So far, all unix accounts, samba and web access share the same password.  Put on your climbing equipment because the learning curve
is straight up.

If you go to http://tldp.org/HOWTO/LDAP-HOWTO/ you can find a step by step approach to install ldap.  I'd be willing to assist if I
can.

Terry
On Tue, 5 Jun 2007 12:36:58 -0700you write:
>Is there some good documentation on LDAP? When I looked at the
>documentation that came with openldap, I got lost in the weeds,
>overwelmed and my head was swimming.  For whatever reason, it just
>looked like complete over-kill to me.  I really don't have a good
>grasp on what LDAP can do for me.  I originally thought it was a
>litteral directory server like for mail and address books; that was
>probably my first mistake.:)
>
>On Thu, May 31, 2007 at 12:40:53PM -0500, Terry Klarich wrote:
>> You want to look at openldap.  I am running it here on my personal network.  Id's are shared among all my machines, samba accoun
>ts
>> and html accounts.  Works well.
>> 
>> Terry
>> On Sun, 27 May 2007 18:55:59 -0400you write:
>> >Hi,
>> >
>> >Have a few  linux machines running here that I'd like to have running a 
>> >directory service to synchronise login information and the like.  I was 
>> >just wondering, what's the best directory service to run these days? I 
>> >had to take an intro to Unix class for school, and that mentioned NIS, 
>> >which I had looked into in the past...though I just read the ORielly 
>> >book on that and it seemed to say that NIS should only be used until 
>> >newer alternatives became stable, and the book was about 5 years old.  
>> >Being able to interoperate with windows hosts would be nice also, though 
>> >I'm not holding my breath...
>> >Any help would be apreciated.
>> >
>> >-- 
>> >quit   When the quit statement is read, the  bc  processor
>> >       is  terminated, regardless of where the quit state-
>> >       ment is found.  For example, "if  (0  ==  1)  quit"
>> >       will cause bc to terminate.
>> >	-- seen in the manpage for "bc". Note the "if" statement's logic
>> >
>> >_______________________________________________
>> >Speakup mailing list
>> >Speakup@braille.uwo.ca
>> >http://speech.braille.uwo.ca/mailman/listinfo/speakup
>> >
>> 
>> _______________________________________________
>> Speakup mailing list
>> Speakup@braille.uwo.ca
>> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
>-- 
>HolmesGrown Solutions
>The best solutions for the best price!
>http://holmesgrown.ld.net/
>
>_______________________________________________
>Speakup mailing list
>Speakup@braille.uwo.ca
>http://speech.braille.uwo.ca/mailman/listinfo/speakup
>

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

         

r	oZoau<>0>vnvo�
From speakup-bounces@braille.uwo.ca  Sun Jun 24 10:31:18 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5OEVHL9013550
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 10:31:18 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2T7S-0005LZ-00; Sun, 24 Jun 2007 10:31:14 -0400
Received: from fed1rmmtao106.cox.net ([68.230.241.40])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2T7Q-0005L5-00
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 10:31:12 -0400
Received: from fed1rmimpo01.cox.net ([70.169.32.71]) by fed1rmmtao106.cox.net
	(InterMail vM.7.08.02.01 201-2186-121-102-20070209) with ESMTP
	id <20070624143041.CGUD3993.fed1rmmtao106.cox.net@fed1rmimpo01.cox.net>
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 10:30:41 -0400
Received: from lnx2.holmesgrown.com ([70.162.15.186])
	by fed1rmimpo01.cox.net with bizsmtp
	id FSWh1X00340rnRy0000000; Sun, 24 Jun 2007 10:30:41 -0400
Received: from lnx3.holmesgrown.com ([192.168.1.5] ident=mail)
	by lnx2.holmesgrown.com with esmtp (Exim 4.62)
	(envelope-from <steve@holmesgrown.com>) id 1I2T6v-0005ng-3e
	for speakup@braille.uwo.ca; Sun, 24 Jun 2007 07:30:41 -0700
Received: from steve by lnx3.holmesgrown.com with local (Exim 4.62)
	(envelope-from <steve@holmesgrown.com>) id 1I2T6u-0000ui-2w
	for speakup@braille.uwo.ca; Sun, 24 Jun 2007 07:30:40 -0700
Date: Sun, 24 Jun 2007 07:30:40 -0700
From: Steve Holmes <steve@holmesgrown.com>
To: speakup@braille.uwo.ca
Subject: Re: Slackware 11 aliases, anyone?
Message-ID: <20070624143039.GC10052@lnx3.holmesgrown.com>
Mail-Followup-To: speakup@braille.uwo.ca
References: <467DF47F.1000701@clearwire.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <467DF47F.1000701@clearwire.net>
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

Like Chuck said, use .profile; that's what I do.  Not sure about
.bashrc; I've heard of it but never make use of it.  About those other
aliases that keep comming back, look in your /etc directory.  Read
through /etc/profile for starters and notice the reference to
/etc/profile.d and all the .sh files inside.  Aliases can be, and are
set in one or more of those scripts.  I think most of them pertain to
the ls command and other environment variables are set in there too.
Another brief educational experience awaits you when browsing the /etc
directory.:)

On Sun, Jun 24, 2007 at 05:35:11AM +0100, Gaijin wrote:
>      Hi again all,
> 
>      Well, Slack11 is working great.  The BSD init setup is strange 
> after working in System V.  I have a really strange problem.  I saved a 
> few of my own aliases in a file called .aliases, and then made and added 
> the lines to .bashrc:
> 
> echo 3 > /proc/speakup/rate
> source ~/.aliases
> 
>      It didn't work, so I unaliased all of my aliases and tried again. 
> That didn't work either, so I deleted every single file in the home 
> directory, deleted every alias, logged out, logged vack in, and guess 
> what?  The stoopid default aliases were back!  wtf?  Is Windows haunting 
> my Linux drive now?  Anyone know how to get rid of the default aliases 
> and add my own?  .bashrc doesn't seem to work in Slack for some odd 
> reason, and yeah, I'm using bash.  Ran Debian for over two years, so I'm 
> not TOO stupid. <laughs>  Thank the gods I'm running sendmail.  Best 
> news I've had since January.  I wonder if there's a way to generate an 
> installed  package list.
> 
>          Michael
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

                  

p.a0oyGa 
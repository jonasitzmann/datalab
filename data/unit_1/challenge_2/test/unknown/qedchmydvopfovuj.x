From speakup-bounces@braille.uwo.ca  Sun Jun 24 00:59:09 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5O4x8L9027696
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 00:59:08 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2KBg-0005mD-00; Sun, 24 Jun 2007 00:59:00 -0400
Received: from nsfone.fone.net ([206.168.68.96])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2KBf-0005lv-00
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 00:58:59 -0400
Received: from mail2.fone.net (mail2.fone.net [206.168.68.165])
	by nsfone.fone.net (8.13.8+Sun/8.13.7) with ESMTP id l5O4vtIQ018997
	for <speakup@braille.uwo.ca>; Sat, 23 Jun 2007 22:57:55 -0600 (MDT)
Received: from tdsportable (ip-206-123-194-16.static.fasttrackcomm.net
	[206.123.194.16])
	by mail2.fone.net (8.13.6+Sun/8.12.10) with SMTP id l5O4wTaE021583
	for <speakup@braille.uwo.ca>; Sat, 23 Jun 2007 22:58:29 -0600 (MDT)
Message-ID: <000901c7b61c$4431ea90$6c01a8c0@tdsportable>
From: "Littlefield, tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <467DF47F.1000701@clearwire.net>
Subject: Re: Slackware 11 aliases, anyone?
Date: Sat, 23 Jun 2007 21:58:05 -0700
Organization: TDS
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2869
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.2869
X-PMX-Version: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.6.23.213739
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: "Littlefield, tyler" <compgeek13@gmail.com>,
   "Speakup is a screen review system for Linux."
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

what does sendmail have to do with the aliases?
I am not sure, but source may not be your only solution.
Also, if you're getting the default aliases file back, I think bash creates 
that with other files in ~, when you start it if it's not there already.
This is at login, or after I should say, when the shell is invoked.
----- Original Message ----- 
From: "Gaijin" <gaijin@clearwire.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Saturday, June 23, 2007 9:35 PM
Subject: Slackware 11 aliases, anyone?


>     Hi again all,
>
>     Well, Slack11 is working great.  The BSD init setup is strange
> after working in System V.  I have a really strange problem.  I saved a
> few of my own aliases in a file called .aliases, and then made and added
> the lines to .bashrc:
>
> echo 3 > /proc/speakup/rate
> source ~/.aliases
>
>     It didn't work, so I unaliased all of my aliases and tried again.
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
>         Michael
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

tGe-0un17eMaEh
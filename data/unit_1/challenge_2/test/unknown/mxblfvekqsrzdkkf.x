From speakup-bounces@braille.uwo.ca  Thu Jun 28 18:55:22 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SMtML9016686
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 18:55:22 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I42tF-0003mB-00; Thu, 28 Jun 2007 18:55:05 -0400
Received: from ip15.shellworld.net
	([64.49.204.174] helo=server2.shellworld.net ident=root)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I42tE-0003m1-00
	for <speakup@braille.uwo.ca>; Thu, 28 Jun 2007 18:55:04 -0400
Received: from server2.shellworld.net (jdashiel@server2.shellworld.net
	[209.61.182.169])
	by server2.shellworld.net (8.13.1/8.12.8) with ESMTP id l5SMt3Bt080273
	for <speakup@braille.uwo.ca>; Thu, 28 Jun 2007 22:55:03 GMT
	(envelope-from jdashiel@shellworld.net)
Date: Thu, 28 Jun 2007 17:55:03 -0500 (CDT)
From: Jude DaShiell <jdashiel@shellworld.net>
To: speakup@braille.uwo.ca
Subject: dropline-gnome accessibility
Message-ID: <Pine.BSF.4.64.0706281746210.77643@freire2.furyyjbeyq.arg>
MIME-Version: 1.0
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

I'll try to help out as much as possible and wish I could be more helpful 
by now than I can.  droplinegnome is the only slackware 3rd party gnome 
that's mostly keeping current with the real gnome versions. 
droplinegnome can be installed by downloading the droplinegnome-installer 
from http://www.droplinegnome.org and running it as root.  droplinegnome 
does have orca as part of its distribution and just using the installer 
will get you only the latest versions of all packages.  Unfortunately, 
droplinegnome does not include the speech-tools or festival packages or 
the necessary add-ons from festvox.org. I've been trying to build both on 
a kernel 2.4x system here without much luck.  I'll try again in my home 
directory since it has more space and maybe they'll build then. 
gnome-speech is also included in droplinegnome but since festival wasn't 
available on my machine when I installed droplinegnome it built in such a 
way that it excluded all speech servers like festival.  So first get 
speech-tools and festival built and working then install droplinegnome and 
if all works orca will talk on your end.



_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                

ewo-
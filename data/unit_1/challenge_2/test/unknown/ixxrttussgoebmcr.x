From speakup-bounces@braille.uwo.ca  Tue Jun  5 22:30:34 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l562UXhB016421
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 22:30:33 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvlHt-0001C9-00; Tue, 05 Jun 2007 22:30:17 -0400
Received: from imf20aec.mail.bellsouth.net ([205.152.59.68])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvlHs-0001Bj-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 22:30:16 -0400
Received: from ibm62aec.bellsouth.net ([74.226.66.234])
	by imf20aec.mail.bellsouth.net with ESMTP id
	<20070606022945.WCXU9444.imf20aec.mail.bellsouth.net@ibm62aec.bellsouth.net>
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 22:29:45 -0400
Received: from localhost ([74.226.66.234]) by ibm62aec.bellsouth.net with ESMTP
	id <20070606022945.QKMS20069.ibm62aec.bellsouth.net@localhost>
	for <speakup@braille.uwo.ca>; Tue, 5 Jun 2007 22:29:45 -0400
Date: Tue, 5 Jun 2007 21:29:44 -0500 (CDT)
From: Adam Myrow <myrowa@bellsouth.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Debian Alsa
In-Reply-To: <20070605235307.GB5289@implementation>
Message-ID: <Pine.LNX.4.64.0706052120280.1843@dell.bellsouth.net>
References: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
	<Pine.LNX.4.64.0706051837150.17059@dell.bellsouth.net>
	<20070605235307.GB5289@implementation>
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

On Wed, 6 Jun 2007, Samuel Thibault wrote:

> These are only compatibility layers that really shouldn't be needed
> nowadays...

Well, many programs still use them by default.  For example, some have 
discussed aumix as a mixer program.  It uses /dev/mixer, which is why it 
doesn't show all controls.  Most programs, including Mplayer still default 
to OSS-compatible operation unless overridden.  So, until this changes, I 
consider the OSS emulation mandatory.  There is the aoss command, which 
tries to make a program that would normally use OSS use ALSA instead, but 
it doesn't always work.


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                 

Uk_Un0<tea/>t -
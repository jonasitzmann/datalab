From speakup-bounces@braille.uwo.ca  Sun Jun 24 09:52:43 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ODqhL9013135
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 09:52:43 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2SW7-0004O2-00; Sun, 24 Jun 2007 09:52:39 -0400
Received: from imf22aec.mail.bellsouth.net ([205.152.59.70])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2SW5-0004Ko-00
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 09:52:37 -0400
Received: from ibm67aec.bellsouth.net ([74.226.76.171])
	by imf22aec.mail.bellsouth.net with ESMTP id
	<20070624135207.YLKW16033.imf22aec.mail.bellsouth.net@ibm67aec.bellsouth.net>
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 09:52:07 -0400
Received: from localhost ([74.226.76.171]) by ibm67aec.bellsouth.net with ESMTP
	id <20070624135206.PLVA12798.ibm67aec.bellsouth.net@localhost>
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 09:52:06 -0400
Date: Sun, 24 Jun 2007 08:52:06 -0500 (CDT)
From: Adam Myrow <myrowa@bellsouth.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: re: slackware aliases anyone?
In-Reply-To: <Pine.BSF.4.64.0706240437090.47263@freire2.furyyjbeyq.arg>
Message-ID: <Pine.LNX.4.64.0706240849380.12256@dell.bellsouth.net>
References: <Pine.BSF.4.64.0706240437090.47263@freire2.furyyjbeyq.arg>
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

On Sun, 24 Jun 2007, Jude DaShiell wrote:

> If you want to disable scp and sftp access for shell users of your 
> machine all you need do is put a command in each account's .bashrc 
> that'll generate text.  The ssh access will still be possible but not 
> sftp or scp.  That was a lesson learned the hard way on my part.

That's an incredibly bad idea!  If you do that, you risk leaving hung 
processes around that will later have to be killed.


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

   

B b.gT
From speakup-bounces@braille.uwo.ca  Sun Jun 10 15:20:04 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AJK3L9005652
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 15:20:03 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HxSxF-0006NY-00; Sun, 10 Jun 2007 15:20:01 -0400
Received: from b.mail.sonic.net ([64.142.19.5])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HxSxE-0006MN-00
	for <speakup@braille.uwo.ca>; Sun, 10 Jun 2007 15:20:00 -0400
Received: from Reason (mail.jfcl.com [64.142.52.93]) (authenticated bits=0)
	by b.mail.sonic.net (8.13.8.Beta0-Sonic/8.13.7) with ESMTP id
	l5AJJoVu022305
	for <speakup@braille.uwo.ca>; Sun, 10 Jun 2007 12:19:54 -0700
From: "Deborah Norling" <debee@jfcl.com>
To: "'Speakup is a screen review system for Linux.'" <speakup@braille.uwo.ca>
Subject: RE: Debian install with Software Speech?
Date: Sun, 10 Jun 2007 12:19:45 -0700
Organization: Spare Time Gizmos
Message-ID: <000101c7ab94$5133d790$1501010a@Reason>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Acej+GHiZ4FEFRd6QhORf8USApyXjQGNd7uw
In-Reply-To: <20070530183922.GB7933@gmx.net>
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: debee@jfcl.com,
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

Dunno if this helps but Brltty is part of the new etch install. If you have
a braille display you can go to the second console with Alt-F2, press ENTER
to activate  the console and type:
	brltty -bauto -d/dev/ttyS1 (for com2:)
Or
	brltty -bauto -d/dev/ttyUSB0 (for the first usb-to-serial converter
the kernel drivers find.)

Yesterday I tried this with Com1 and com2 and then two different
usb-to-serial converters, and it works great.

If you don't have a braille display you can try GRML which is able to use
debootstrap and launch an automated install of etch.

--Debee


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

    

a oa
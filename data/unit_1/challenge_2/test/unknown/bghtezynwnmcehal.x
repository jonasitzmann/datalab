From speakup-bounces@braille.uwo.ca  Wed Jun 20 11:42:08 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KFg8L9011766
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 11:42:08 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I12Jl-0003Gz-00; Wed, 20 Jun 2007 11:42:01 -0400
Received: from vms046pub.verizon.net ([206.46.252.46])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I12Jj-0003Gp-00
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 11:41:59 -0400
Received: from riley.myhome.westell.com ([151.203.227.82])
	by vms046.mailsrvcs.net
	(Sun Java System Messaging Server 6.2-6.01 (built Apr  3 2006))
	with ESMTPA id <0JJX002P9Y70D1YI@vms046.mailsrvcs.net> for
	speakup@braille.uwo.ca; Wed, 20 Jun 2007 10:40:17 -0500 (CDT)
Received: from w1gm by riley.myhome.westell.com with local (Exim 4.63)
	(envelope-from <christopher.h.moore@verizon.net>)
	id 1I12Hw-0000gb-AF	for speakup@braille.uwo.ca;
	Wed, 20 Jun 2007 11:40:08 -0400
Date: Wed, 20 Jun 2007 11:40:08 -0400
From: Christopher Moore <christopher.h.moore@verizon.net>
Subject: Re: Speakup in userspace
In-reply-to: <20070620124917.GB5078@implementation.labri.fr>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Message-id: <20070620154008.GA2616@riley>
MIME-version: 1.0
Content-disposition: inline
References: <20070620103329.GI4837@implementation.labri.fr>
	<00f501c7b338$312865a0$ab00a8c0@tenstac>
	<20070620124917.GB5078@implementation.labri.fr>
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

This has been an interesting thread.  Regarding input devices, could a 
user space speakup be controlled from a external numeric keypad plugged 
into a usb port?  This would depend on whether we could identify the key 
presses as coming from the external keypad.  brltty has a stable 
approach for gethering console output.  So one of the missing pieces is 
a way to control speech output.  If key presses on an external keypad 
could be routed to speakup and not available to other applications, we 
might have a relatively simple solution.

Chris
Chris

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

    

AshcCzTa9L
From speakup-bounces@braille.uwo.ca  Sun Jun 17 23:39:12 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I3dBL9013260
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 23:39:11 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0857-0002XF-00; Sun, 17 Jun 2007 23:39:09 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0856-0002Wc-00
	for <speakup@braille.uwo.ca>; Sun, 17 Jun 2007 23:39:08 -0400
Received: from [24.226.68.228] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I084a-0000LO-67
	for speakup@braille.uwo.ca; Sun, 17 Jun 2007 23:38:36 -0400
Message-ID: <00c601c7b162$b7184180$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <20070617200022.GA16786@linux1><1182118939.3634.15.camel@layla.Mshome><Pine.LNX.4.64.0706171937160.4393@monster><74411A17-AC9D-4C60-BB01-9695456D3126@softcon.com><00a601c7b15b$9749b980$ab00a8c0@tenstac>
	<03BC5C96-1E28-4336-B323-8C3FC6ED1BEE@softcon.com>
Subject: Re: gentoo dropping speakup support
Date: Sun, 17 Jun 2007 23:39:53 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - beaver.sibername.com
X-AntiAbuse: Original Domain - braille.uwo.ca
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - proficio.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

Travis,

I wasn't suggesting that this was addressing the real problem,
as I said, it was a suggestion as interim way to at least have 
speech if  the regular boot doesn't talk. 

The problem is bigger than user space or not. Right now you
cannot grab a doubletalk LT and plug it into a USB serial 
adapter and use speakup, or any RS232 synth. 

Interestingly though, you can plug a doubletalk LT into USB
serial adapter and configure the kernel for usb serial console
and get ALMOST all of the boot messages, but speakup 
will not work.

The days of having RS232 ports on PCs might be limited, 
and  there's lots of RS232 synths around, so this is an 
example where the real answer lies in at mininal some 
re-architecture of the speakup driver.  

I'm perhaps a bit over the edge here, but I like to think 
a lot in the multimodal sense that its always a bad idea 
to assume specific modality, like a PC keyboard for 
example. What I would like to see happening in speech 
and accessibility in general is generic interfaces that do 
not assume specific device. The synth has functions that
you invoke with keyboard, now let's say it was on a 
phone with 4x4 keypad, or on a remote control, it 
would be nice if it could still be doable. So basically 
rather than assuming 104 key keyboard that would be
one mapping of function to controller. 

There seems to be several good arguments for 
re-architecting the drivers in this way, on both the 
synth and user ends of the whole. 

The kernel versus user space argument is interesting.
Consider ALSA, you have kernel drivers, but you 
also have apps that use those drivers like the config
apps and the mixers and players. I tend to think that
strategically speakup needs to move in that direction.

Tactically my suggestion was coming up with some 
small easily installable root file system and kernel 
that would enable speech for those who don't have
it working, which from watching this list for several
years, seems to be many people.

What would be really cool is a USB dongle that 
is not only a speech system but an entire linux 
system on flash too. You could boot it on a 
windows machine and not use windows at all.
And ideally it would also work with windows.
Okay, now back to reality, I'd be happy just to 
figure out how to solve the usb serial problem
in the near term.

  -- Spie



----- Original Message ----- 
From: "Travis Siegel" <tsiegel@softcon.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Sunday, June 17, 2007 10:16 PM
Subject: Re: gentoo dropping speakup support


> Spie.
> Your suggestion of having a small installation on the machine is a  
> good one, and it probably would work.  However, this assumes you  
> already know what the problem is that needs fixed.  Without having  
> access to the actual boot messages (not just the ones you see while  
> booting into your sandbox as it were) you'll never be able to solve   
> any major problems that crop up in regards to the main system.
> it is however, not a bad idea, since it would allow some degree of  
> free usage w/o sighted assistance on simple fixes.  it wouldn't  
> address the  main issue though.
> And, in any case, it's functionally equivalent to the original  
> suggestion of using a live cd to boot and work on fixing the issues  
> from there.
> 
> 
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

     

e"c�<Wsz/ 2neo
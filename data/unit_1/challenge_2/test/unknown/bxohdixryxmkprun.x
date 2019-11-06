From speakup-bounces@braille.uwo.ca  Mon Jun  4 18:18:04 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54MI4hB000890
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 18:18:04 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvKs7-0004Us-00; Mon, 04 Jun 2007 18:17:55 -0400
Received: from ns1.sunset.net ([205.161.255.5] helo=onyx.sunset.net)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvKs6-0004Uj-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 18:17:54 -0400
Received: from sunset.net (198-69-250-171.chico.ca.digitalpath.net
	[198.69.250.171])
	by onyx.sunset.net (8.12.11.20060308/8.12.10) with ESMTP id
	l54MH4Xu024200
	for <speakup@braille.uwo.ca>; Mon, 4 Jun 2007 15:17:04 -0700
Received: (from rreid@localhost)
	by sunset.net (8.13.8/8.13.8/Submit) id l54MHrHx030238
	for speakup@braille.uwo.ca; Mon, 4 Jun 2007 15:17:53 -0700
Date: Mon, 4 Jun 2007 15:17:53 -0700
From: "Ralph W. Reid" <rreid@sunset.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: DECpc is silent
Message-ID: <20070604221753.GB21656@sunset.net>
References: <20070603211513.GA21355@sunset.net>
	<x7ira4ox10.fsf@speech.braille.uwo.ca>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <x7ira4ox10.fsf@speech.braille.uwo.ca>
User-Agent: Mutt/1.4.2.2i
X-src-ip: 198.69.250.171
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

Nothing concerning the decpc shows up in /var/log/syslog.

/var/log/messages gets the following two lines:
Jun  4 14:37:09 taz kernel: Probing for Dectalk PC.
Jun  4 14:37:09 taz kernel: Dectalk PC: 250-257, Driver Version 1.1,

Echoing and catting text to /dev/synth and /proc/speakup/synth_direct
produce neither audio nor screen output of any kind.

The output from `dtload -v` is as follows:
testkernel got dec
Loading kernel of 13284 bytes ( 65 relocs )
    cs:ip == 0040:0010   ss:sp == 047f:0200
card is ready
dt_loadmem: addr = 00000400 size = 13284
done loading kernel
testkernel got 819c
Loading primary dictionary of 15147 entries, 305264 bytes.
Allocating 22867 paragraphs of free ram ...
Index table starts at 82700
dt_loadmem: addr = 00082700 size = 60588
Dictionary text starts at 913ac
dt_loadmem: addr = 000913AC size = 305264
dictionary load complete
Loading lts.exe 264074 bytes ( 30 relocs )
Allocating 8000 bytes of free ram at 3ff30
Total memory taken is 272320 bytes
    cs:ip == 3ff3:0010   ss:sp == 815f:1000
dt_loadmem: addr = 0003FF30 size = 264074
Loading ph.exe 39044 bytes ( 7 relocs )
Allocating 10480 bytes of free ram at 33cb0
Total memory taken is 49776 bytes
    cs:ip == 33cb:0010   ss:sp == 3ee2:1000
dt_loadmem: addr = 00033CB0 size = 39044
Loading cmd.exe 17778 bytes ( 7 relocs )
Allocating 13600 bytes of free ram at 2c110
Total memory taken is 31632 bytes
    cs:ip == 2c11:0010   ss:sp == 31ba:2000
dt_loadmem: addr = 0002C110 size = 17778


I can hear a 'thump' in my headphones when I cold boot the machine, so
I believe I have a good connection for audio output.  I have been
doing everything as root, logged in via ssh, so I do not expect that
any file permissions should be a problem.  I am not sure how to test
the hardware further at this point, but I will keep trying anything
that comes to mind.  By the way, there are two jacks on the card--I
have tried them both with my headphones.  Any suggestions of other
things to try would be appreciated.

Thanks, and have a great day.


On Mon, Jun 04, 2007 at 06:04:59AM -0400, Kirk Reiser wrote: > What
does your /var/log syslog or messages say about the installing of >
the module?  If it is any different than the messages you've already >
provided?  Also what happens if you cat something to >
/proc/speakup/synth_direct or to /dev/synth?  > > Kirk > > -- > > Kirk
Reiser The Computer Braille Facility > e-mail: kirk@braille.uwo.ca
University of Western Ontario > phone: (519) 661-3061 > >

-- 
Ralph.  N6BNO.  Wisdom comes from central processing, not from I/O.
rreid@sunset.net  http://personalweb.sunset.net/~rreid
...passing through The City of Internet at the speed of light...
SLOPE = (y2 - y1) / (x2 - x1)

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                  

te
iee.-hf
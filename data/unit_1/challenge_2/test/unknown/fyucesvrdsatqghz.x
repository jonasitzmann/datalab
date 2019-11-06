From speakup-bounces@braille.uwo.ca  Mon Jun 18 08:39:03 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ICd3L9017492
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 08:39:03 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0GVR-0002Vs-00; Mon, 18 Jun 2007 08:38:53 -0400
Received: from imo-m19.mx.aol.com ([64.12.137.11])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0GVQ-0002VX-00
	for <speakup@braille.uwo.ca>; Mon, 18 Jun 2007 08:38:52 -0400
Received: from mwhapples@aim.com
	by imo-m19.mx.aol.com (mail_out_v38_r9.2.) id f.c6f.1154741a (57876)
	for <speakup@braille.uwo.ca>; Mon, 18 Jun 2007 08:38:11 -0400 (EDT)
Received: from [10.3.107.110] (snsjanet.sns.nottingham.ac.uk
	[128.243.253.217]) by air-ia03.mail.aol.com (v115.17) with
	ESMTP id MAILINIA32-e21446767cad245; Mon, 18 Jun 2007 08:38:11 -0400
Subject: Re: gentoo dropping speakup support
From: Michael Whapples <mwhapples@aim.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
In-Reply-To: <00ec01c7b170$72b6e1f0$ab00a8c0@tenstac>
References: <20070617200022.GA16786@linux1>
	<1182118939.3634.15.camel@layla.Mshome>
	<Pine.LNX.4.64.0706171937160.4393@monster>
	<74411A17-AC9D-4C60-BB01-9695456D3126@softcon.com>
	<00a601c7b15b$9749b980$ab00a8c0@tenstac>
	<03BC5C96-1E28-4336-B323-8C3FC6ED1BEE@softcon.com>
	<00c601c7b162$b7184180$ab00a8c0@tenstac>
	<46760D56.9040800@clearwire.net>
	<00ec01c7b170$72b6e1f0$ab00a8c0@tenstac>
Date: Mon, 18 Jun 2007 13:37:49 +0100
Message-Id: <1182170269.3628.19.camel@layla.Mshome>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.2 
X-AOL-IP: 128.243.253.217
X-Spam-Flag: NO
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

Spie your talking a lot of sense, and when I mentioned about speakup and
how it accesses serial ports I think I was thinking back to some of your
comments.

You have within this thread mentioned should be speakup be a combination
of kernel code and user space code, I think I may have mentioned this
before and would also support this type of idea. As an example, I think
the jupiter speech system is this combination approach, how does it
compare to speakup for ease of being maintained to work with newer
kernels, I know that there has been some times in the past when speakup
has had to be altered specifically for newer kernels (sometimes breaking
it for the older kernels).

Another thought about this idea of making the core of speakup not be
interface specific (which I think would be a good idea), is that I think
on the list someone asked about a headless install, and there was a
reply that if by headless this would also mean no video card, then
speakup wouldn't work, I don't know if it could be done another way, but
this seems a bit specific (thinking, may be speakup would have a driver
to access video memory, but also could have another dummy graphics
driver should the machine not have a video card).

Having all the boot messages, while it is useful, and speakup is about
the only way I know how to get the messages at the time (all, from the
earliest possible moment), the question should be asked, on a properly
configured system, how many problems might realistically occur before
such a stage as USB console can work, and eventually the serial ports
that speakup can currently use will soon be gone if the trend of
hardware manufacturers is anything to go by.

I don't know how many are actually working on speakup, but I think it is
only a few and speakup is probably not the only thing for them. I have
to admit as I understand things we are going to have to make hard
decissions and put what effort in the best direction, may it need to be
a complete rewrite, etc.

From
Michael Whapples
On Mon, 2007-06-18 at 01:18 -0500, Spie Sutherland wrote:
> Speakup does use modules, and it can be statically compiled 
> into kernel instead. That's not a problem. The serial ports, 
> however only support real serial ports, not usb-serial, which 
> is becoming a problem.
> 
> As I said a few months ago, the whole usb mess can be 
> statically compiled, including the usb core, the host controller, 
> and even usb-serial devices audio devices, and synth drivers, 
> like the dtlk for example, so in theory it should be possible to 
> boot and get speech output, with changes to speakup.
> 
> As it is now, the code refers to the standard serial port 
> addresses and irqs, and the communication code is RS232 
> specific. 
> 
> So this what I mean about abstraction. An abstract interface 
> does not implement anything, it only defines. The implementation 
> can be anything as long as it follows the interface. So basically 
> there needs to be a layer of code in between the serial port code
> and the code that writes to it, one interface with several 
> implementations, RS232 serial, USB serial, and potential for any 
> other kind of implementation. And my argument was that the 
> same could be done on the user side, pressing a certain key does 
> some thing, currently assumed to be standard keyboard, but 
> would be nice if abstract interface where the keyboard is one type 
> of controller, other devices could trigger same. I'm mostly thinking 
> about mobile pervasive systems, where you might want to read a 
> message or email, not type, and your device is in your pocket. So 
> you have a little controller sort of like a game pad where you can
> move between messages and read them etc, or get phone numbers 
> from a list. If the interface to the synth is generic then there are all 
> kinds of  possibilities.
> 
> I will be working on this kind of thing with speech, and I am 
> still contemplating whether or not it needs to be kernel space. 
> On an embedded device you really don't need to see all the 
> boot messages, because it will load kernel from flash and will
> always work. If I find a way to adapt this code to work on 
> arm then I might use it, but I actually think I could do the same
> thing entirely in user space. Boot is much simpler than PC and
> very fixed in nature, ie once done it shouldn't change, no need
> to support gazillions of types of hardware etc. I like the idea
> of being able to hear the console output, but then I might end
> up just using usb-serial console and having a microcontroller
> providing a terminal function, in other words both the speech
> and keyboard functions. If done that way it would possibly 
> miss a very small amount of boot messages, but not many. 
> It would be the same as using a terminal program with your
> PC connected to another PC with usb serial dongle and 
> watching the other machine boot. 
> 
>   -- Spie



_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

              

Pa/M 
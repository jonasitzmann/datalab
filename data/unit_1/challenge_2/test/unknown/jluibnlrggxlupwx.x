From speakup-bounces@braille.uwo.ca  Wed Jun 20 13:52:20 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHqKL9013180
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:52:20 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I14Lm-0005GB-00; Wed, 20 Jun 2007 13:52:14 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I14Lk-0005G2-00
	for <speakup@braille.uwo.ca>; Wed, 20 Jun 2007 13:52:12 -0400
Received: from [24.226.69.191] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I14Li-00081H-Pj
	for speakup@braille.uwo.ca; Wed, 20 Jun 2007 13:52:10 -0400
Message-ID: <007b01c7b36c$4ebfc8e0$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <20070620103329.GI4837@implementation.labri.fr><00f501c7b338$312865a0$ab00a8c0@tenstac><20070620124917.GB5078@implementation.labri.fr><20070620154008.GA2616@riley>
	<001c01c7b35e$15d448c0$6405a8c0@ALBERTLC7SN0ZA>
Subject: Re: Speakup in userspace
Date: Wed, 20 Jun 2007 13:53:35 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - beaver.sibername.com
X-AntiAbuse: Original Domain - braille.uwo.ca
X-AntiAbuse: Originator/Caller UID/GID - [0 0] / [47 12]
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

Consider the linux that most of use to be a "protected mode" 
operating system as opposed to "real mode". Protected mode
allows access to things like virtual memory, multi-threading, 
and priviledge levels not available in real mode. Protected 
mode has been the standard on x86 PCs since the 80286.

A protected mode system segregates virtual memory into 
kernel space and user space. Kernel space is strictly reserved
for running the kernel, device drivers, and kernel extensions.
It is usually the case that kernel space memory is not swapped
to disk since that is much slower, which user space memory 
can be swapped to disk.

User space or "userland" processes cannot access the memory
of other processes, the basis of memory protection which 
makes linux very stable. Prior to win2k, the windows os was 
not a protected memory system, hence the freezing up or 
crashing of whole system from one bug in one driver or app.
A user space process, although restricted in memory access,
can request the kernel to map part of its memory onto its own
space, and can also access shared memory. 

The kernel space is the direct hardware access space along
with the management software that controls virtual memory,
DMA, threads, processes, etc. You have kernel processes 
and user processes. The kernel processes are supposed to 
be basic things like the direct interface to hardware. User
space is where applications run. So there is kernel space 
memory, threads, and processes, and user space memory, 
threads, and processes. 

Consider ALSA sound as an example. It's in the kernel but
it's also not in the kernel. There are kernel drivers and there
are user space libraries. The alsa-lib delegates sound control
to user space. This allows application developers to do all 
kinds of things without touching kernel code. The alsa-lib 
provides various functionality like software mixing, support
for the older OSS API, and user specific configuration, and
it is multi-thread safe, essential for complex audio programs.

Alsa may not be the best example, but the idea is separating
the core functionality from the application layer. Let's say I
create an API for writing text to a speech synth. The code 
that actually talks to the synth would ideally be abstracted 
from the API such that the identical programming interface
works for any synth using any protocol like serial or usb.
Some hardware may not implement all parts of the API but
where there are same functions the API should look the 
same. An example of a very well abstracted API is the 
Java API. It had to be done that way in order to make the
programs portable on different systems. I may be biased 
because I used to work there, but if you look at how much
work was done on abstraction it's the most impressively 
abstracted API around. I'm not talking about javascript, 
that's like a virus hehe. Unfortunately Sun wanted Java to 
be the answer to everything everywhere which it is not and
will never be, and Java, like many good ideas, has become
overly bloated and complex, although at least the various 
parts of it are separate APIs, and the compact versions 
like J2ME are still very efficient. They run on almost all 
phones now. There is a good reason for this. I wrote some
apps on blackberry and it was a breeze to do so. Compared
with doing it in C or ASM it's an entirely different world.

  -- Spie

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

              

firrK d 0ml;
From speakup-bounces@braille.uwo.ca  Mon Jun 25 23:20:08 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5Q3K7L9004988
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 23:20:07 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I31ay-00061L-00; Mon, 25 Jun 2007 23:20:00 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I31ax-00060Q-00
	for <speakup@braille.uwo.ca>; Mon, 25 Jun 2007 23:19:59 -0400
Received: from [24.226.66.143] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I31aQ-00011p-Do
	for speakup@braille.uwo.ca; Mon, 25 Jun 2007 23:19:26 -0400
Message-ID: <005301c7b7a9$6871c130$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <BAY141-DAV9F79C63414EC28EC6DE2B8F0B0@phx.gbl><003301c7b7a5$d87cc190$ab00a8c0@tenstac>
	<BAY141-DAV130C4DD5D7430D9DDA57B78F0B0@phx.gbl>
Subject: Re: Slackware: kernel confusion
Date: Mon, 25 Jun 2007 23:21:03 -0500
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

Yea, listen to patrick, "unless you have a particular reason" to install
headers then it's better to not do so. The glibc is the crux of all of 
this toolchain, and the same reason why that old viavoice became 
a nightmare to support. The distro folks like patrick play with gcc,
glibc, and binutils combination until they find a stable combination
to build the entire system out of. The kernel headers, as he states 
in his warning, it's dangerous to use headers newer than the glibc
version on your system. You can still build the 2.6.x kernel. There
are some situations where stuff will not build, which is why he has
the headers on the site, but don't change headers as a default 
starting point, only as a last resort. And yes, you don't need the 
modules, in fact you don't need anything from there. Patrick uses
ONLY unmodified kernels anyways, so if you want the latest 
that still works with speakup, grab the last of the 2.21.x from 
kernel.org. Or be like us old folks who prefer the stable 
"trailing edge". I have not found a need for 2.6.x yet, so using
Patrick's similar logic, I will do so when I have a reason to. 
I used to chase the leading edge kernels but found that it was 
generally a waste of time in the large scheme of things.

  -- Spie

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

                  

tscAnt3CB=dA=tn6
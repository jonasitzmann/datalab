From speakup-bounces@braille.uwo.ca  Wed Jun 27 10:36:34 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5REaUL9028058
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 10:36:31 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I3Ycs-0006a4-00; Wed, 27 Jun 2007 10:36:10 -0400
Received: from ns1.sunset.net ([205.161.255.5] helo=onyx.sunset.net)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I3Ycq-0006Zu-00
	for <speakup@braille.uwo.ca>; Wed, 27 Jun 2007 10:36:08 -0400
Received: from sunset.net (198-69-251-1.chico.ca.digitalpath.net
	[198.69.251.1])
	by onyx.sunset.net (8.12.11.20060308/8.12.10) with ESMTP id
	l5REXas4008019
	for <speakup@braille.uwo.ca>; Wed, 27 Jun 2007 07:33:37 -0700
Received: (from rreid@localhost)
	by sunset.net (8.14.1/8.14.1/Submit) id l5REa4q9002462
	for speakup@braille.uwo.ca; Wed, 27 Jun 2007 07:36:04 -0700
Date: Wed, 27 Jun 2007 07:36:04 -0700
From: "Ralph W. Reid" <rreid@sunset.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: Slackware: kernel confusion
Message-ID: <20070627143604.GA480@sunset.net>
References: <BAY141-DAV130C4DD5D7430D9DDA57B78F0B0@phx.gbl>
	<005301c7b7a9$6871c130$ab00a8c0@tenstac>
	<20070626212007.GC19143@lnx3.holmesgrown.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20070626212007.GC19143@lnx3.holmesgrown.com>
User-Agent: Mutt/1.4.2.3i
X-src-ip: 198.69.251.1
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

I notice that an 'openvpn' package is in Slackware-current (soon to be
Slackware 12.0).  Maybe this package will work with your Cisco
equipment?

As an extra note, the Speakup modified kernel in slackware-current is
version 2.6.21.5--looks like Slackware is about to move on to 2.6.x
kernels completely.

Have a great dday.

On Tue, Jun 26, 2007 at 02:20:07PM -0700, Steve Holmes wrote:
> Yeah, I'm thinking of maintaining both the latest 2.4 and 2.6
> kernels.  I have a Cisco VPN client that works OK with a 2.4 kernel
> but as soon as I throw it on a 2.6 kernel, I keep getting miss-matched
> kernel versions or some such; I thought it was compiled to work with
> 2.6 but here we go with closed source again <yuck!>.
> 
> On Mon, Jun 25, 2007 at 11:21:03PM -0500, Spie Sutherland wrote:
> > Yea, listen to patrick, "unless you have a particular reason" to install
> > headers then it's better to not do so. The glibc is the crux of all of 
> > this toolchain, and the same reason why that old viavoice became 
> > a nightmare to support. The distro folks like patrick play with gcc,
> > glibc, and binutils combination until they find a stable combination
> > to build the entire system out of. The kernel headers, as he states 
> > in his warning, it's dangerous to use headers newer than the glibc
> > version on your system. You can still build the 2.6.x kernel. There
> > are some situations where stuff will not build, which is why he has
> > the headers on the site, but don't change headers as a default 
> > starting point, only as a last resort. And yes, you don't need the 
> > modules, in fact you don't need anything from there. Patrick uses
> > ONLY unmodified kernels anyways, so if you want the latest 
> > that still works with speakup, grab the last of the 2.21.x from 
> > kernel.org. Or be like us old folks who prefer the stable 
> > "trailing edge". I have not found a need for 2.6.x yet, so using
> > Patrick's similar logic, I will do so when I have a reason to. 
> > I used to chase the leading edge kernels but found that it was 
> > generally a waste of time in the large scheme of things.
> > 
> >   -- Spie
> > 
> > _______________________________________________
> > Speakup mailing list
> > Speakup@braille.uwo.ca
> > http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 
> -- 
> HolmesGrown Solutions
> The best solutions for the best price!
> http://holmesgrown.ld.net/

-- 
Ralph.  N6BNO.  Wisdom comes from central processing, not from I/O.
rreid@sunset.net  http://personalweb.sunset.net/~rreid
...passing through The City of Internet at the speed of light...
PARABOLA = x ^ 2

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

aeY1n41 qt3
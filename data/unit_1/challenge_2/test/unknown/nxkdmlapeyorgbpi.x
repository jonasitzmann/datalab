From speakup-bounces@braille.uwo.ca  Fri Jun 22 23:37:57 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5N3buL9013512
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 23:37:56 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1wRb-00051L-00; Fri, 22 Jun 2007 23:37:51 -0400
Received: from ipmail01.adl2.internode.on.net ([203.16.214.140])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1wRa-00051B-00
	for <speakup@braille.uwo.ca>; Fri, 22 Jun 2007 23:37:50 -0400
X-IronPort-AV: E=Sophos;i="4.16,453,1175437800"; d="scan'208";a="147220324"
Received: from ppp121-44-41-180.lns3.syd7.internode.on.net (HELO themuso.com)
	([121.44.41.180])
	by ipmail01.adl2.internode.on.net with SMTP; 23 Jun 2007 13:07:47 +0930
Received: (nullmailer pid 31700 invoked by uid 1000);
	Sat, 23 Jun 2007 03:37:48 -0000
Date: Sat, 23 Jun 2007 13:37:48 +1000
From: Luke Yelavich <themuso@themuso.com>
To: speakup@braille.uwo.ca
Subject: Re: ttsynth help: download problem
Message-ID: <20070623033748.GA31647@themuso.com>
References: <Pine.LNX.4.63.0706222010040.6443@desktop.localnet>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.63.0706222010040.6443@desktop.localnet>
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Sat, Jun 23, 2007 at 01:24:11PM EST, Mike Keithley wrote:
> But when I looked at /opt/IBM/ibmtts, there were no files in the root like 
> COOPYING or readme files.  Also, the source code for ttsynth-say was 
> nowhere in the directory nor were there any files in the voicedata/ENG_US.
> About all there is in the structure are library files in lib and inc files
> in inc.

This is in fact correct. You need to get the ttsynth say and speakup 
connector source code from he ttsynth.com website. When I last looked, 
these could be downloaded from the main page.

> So did I get a partial download or do I misunderstand something.

No, sounds like the download was in fact complete. if the download was 
incomplete, the rpm command would have likely failed.

Also note that you will need the libstdc++-libc6.2-2.so.3 shared library 
present on your system to make use of ttsynth.
- -- 
Luke Yelavich
GPG key: 0xD06320CE 
	 (http://www.themuso.com/themuso-gpg-key.txt)
Email & MSN: themuso@themuso.com
Jabber: themuso@jabber.org.au
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGfJWMjVefwtBjIM4RArbpAJ40EXM/GttDK5Uif02ajRsSePpKpQCg6R+X
zZLcnb9iCEX19x8r+z0SrCE=
=D5KP
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

               

JM
Si<aLma62r 3X
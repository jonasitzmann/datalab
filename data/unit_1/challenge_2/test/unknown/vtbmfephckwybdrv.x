From speakup-bounces@braille.uwo.ca  Sat Jun 23 19:15:29 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5NNFTL9024880
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 19:15:29 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2Ep7-0001mt-00; Sat, 23 Jun 2007 19:15:21 -0400
Received: from 66-197-196-101.hostnoc.net ([66.197.196.101]
	helo=www5.stonewebs.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2Ep5-0001mj-00
	for <speakup@braille.uwo.ca>; Sat, 23 Jun 2007 19:15:19 -0400
Received: from 75-120-34-153.dyn.centurytel.net ([75.120.34.153]
	helo=[192.168.2.107]) by www5.stonewebs.com with esmtpa (Exim 4.63)
	(envelope-from <tsiegel@softcon.com>) id 1I2EpA-0006Ss-HA
	for speakup@braille.uwo.ca; Sat, 23 Jun 2007 18:15:24 -0500
Message-Id: <687B5DCC-F42D-45E5-955B-B89D8E112D28@softcon.com>
From: Travis Siegel <tsiegel@softcon.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
In-Reply-To: <20070622062245.GB32293@localhost.localdomain>
Mime-Version: 1.0 (Apple Message framework v890.2)
Subject: Re: [ot] Windows programming
Date: Sat, 23 Jun 2007 18:15:13 -0500
References: <20070622055540.GA14887@lnx3.holmesgrown.com>
	<000b01c7b493$3224c050$6c01a8c0@tdsportable>
	<20070622062245.GB32293@localhost.localdomain>
X-Mailer: Apple Mail (2.890.2)
X-PopBeforeSMTPSenders: books@softcon.com, msiegel@softcon.com,
	support@windowbridge.ws, tsiegel, tsiegel@softcon.com
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - www5.stonewebs.com
X-AntiAbuse: Original Domain - braille.uwo.ca
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - softcon.com
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

Actually, I'm very definitely *not* a fan of visual basic.
I use powerbasic instead (http://www.powerbasic.com)
It comes with a rather large subset of the windows api calls already  
converted to powerbasic includes, and I simply study those when I need  
to know what api is needed to do something.
Also, in addition to having one large win32api.inc file, they also  
have broken it into smaller includes such as tcp/ip, comm, playback  
services, graphic manipulation, sapi speech, and more.
It's really an excellent development environment, 100% accessible, and  
programs are considerably smaller than any visual basic program you'll  
ever see.  Not to mention, everything you need for the execution of  
the program is compiled into the exe file, so there's no need to hope  
the folks have the proper dlls on their systems.
And, they're still supporting, upgrading, and creating new versions of  
their tools.
They even still sell powerbasic for dos.
Now, how's that for support.
In fact, pb for dos was just upgraded to version 4.0 (from 3.5) only a  
year or two back.


On Jun 22, 2007, at 1:22 AM, Gregory Nowak wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> How did you go about learning the windows api? Did you use tutorials,
> if so, then which ones? If you used books, did you get them, and
> scanned them yourself, or had someone scan them for you, did you get
> them on tape from rfbd/nls, or did you get them in braille, or
> electronically?
>
> Greg
>
>
> On Thu, Jun 21, 2007 at 11:04:10PM -0700, Littlefield, tyler wrote:
>> The windows API is... weird.
>> I went from windows API to linux, and it was a nice change.
>> With windblows, you get to pass the size of everything, and it  
>> doesn't know
>> how to take arguments by reference, or return something besides 0  
>> or error
>> most of the time.
>>
>
> - --
> web site: http://www.romuald.net.eu.org
> gpg public key: http://www.romuald.net.eu.org/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
>
> - --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.6 (GNU/Linux)
>
> iD8DBQFGe2q17s9z/XlyUyARAuSaAKCb80Dryp7dMRIyNpx/Jhv8SVzrdQCbBMC7
> WpmtV/IePjBvWwslOKVeQis=
> =4/G0
> -----END PGP SIGNATURE-----
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
>


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

    

3  pFiellO
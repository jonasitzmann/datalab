From speakup-bounces@braille.uwo.ca  Thu Jun 21 19:39:05 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LNd4L9030981
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 19:39:04 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1WEu-00043d-00; Thu, 21 Jun 2007 19:39:00 -0400
Received: from wsip-24-249-27-228.ri.ri.cox.net ([24.249.27.228]
	helo=lava-net.com)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I1WEt-00043U-00
	for <speakup@braille.uwo.ca>; Thu, 21 Jun 2007 19:38:59 -0400
Received: by lava-net.com (Postfix, from userid 1020)
	id 225D1278002; Thu, 21 Jun 2007 19:38:44 -0400 (EDT)
Date: Thu, 21 Jun 2007 19:38:43 -0400
From: Igor Gueths <igueths@lava-net.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Re: SMP-expantion
Message-ID: <20070621233843.GA9492@lava-net.com>
References: <000a01c7b44c$a640b080$6401a8c0@YOUR3ADE1B78A3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000a01c7b44c$a640b080$6401a8c0@YOUR3ADE1B78A3>
User-Agent: Mutt/1.5.15 (2007-04-06)
X-Lava-net-MailScanner-Information: 
X-Lava-net-MailScanner: Found to be clean
X-Lava-net-MailScanner-From: igueths@lava-net.com
X-Spam-Status: No
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
Hash: SHA512

Hi. The only thing that will happen is that everything you do overall will become much slower, due to the loss of one of your cores temporarily.
On Thu, Jun 21, 2007 at 02:39:25PM -0700, Keith Hinton wrote:
> I wanted to explain. Yes. I know these Speech-Dispatcher bugs are only present in SMP systems.
> Turning off smp support in the Linux kernel would mean obviously losing a core, but it would temporarily solve all issues I have with it crashing until a new public release is made available. What concerns me is whouldn't there be omre issues due to this at that point with compiling programs, running servers etc? Let me know.
> Regards, --Keith
> Skype: skypedude1234
> (Add me and I'll authorize you)
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 
> -- 
> This message has been scanned for viruses and
> dangerous content by MailScanner, and is
> believed to be clean.
> 

- -- 
Igor
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)

iQIVAwUBRnsMA6e2pgKIdGq4AQoZXA/+NvxMdIAOJcjzP6OpCmXyzHTVIN4jqV/Q
QD3HFBcWdi4w3jeWmX+earTkTG159TyBfMgdjWu1NpnCF/UJnX8sMqUpualq4T4V
4c/nhyK5pITbwsqIFb83fIIzn6J4ATfiFni5MkXV+HrpJ+gJsnqoVHj8uWBiLZYV
kWaFBnsH+77JpGdZZBrj41U1VS2D5gWQXPdX4YECZOsCUmkcy9PxwuY1ku7+25pa
FKjX4Z1WouQHwLX6WPGEHKnaHUIlPrpG0J25AudS8Diu5AMXalrHMQOqkokw5fbL
qcaCrnM4PQ28i7hBShvtcrSAQBr+QK1UuXNmPJpjPAHiRYPyfwcOvc+vzaTAMHCQ
oPXNg4Dhdt6wvBqKK8vjfn2Yx5RQqp4Aw8o3fGYE/HV0jqsIijLoeIOSPINy52mC
dM9WEQxtKVL0SbqDpHCfEnMK1LjPjEcjaYGpXqEuPVXroLvSgK50ft8zlwsCPQwd
gcj9cOgMQFjVOYcthHi1VKO1mDFD+rUlY5M2KA8+bcVqPZ/LjaAqj0xPBh5J0GnD
gJji21CIg5DMRK5g18I584nuTBzuQzCvOHRElRQtHHx6RowzYOsSGSuIgTWbSiv7
hr1vm5Cgc88TTfXujjMlNbHWGJ/urXlIsJGZn8cYha4efJMVK1KvPbB7scbGPky+
fl7FUoD4aGI=
=5Hv3
-----END PGP SIGNATURE-----

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

      


s-	p3nS7ohH
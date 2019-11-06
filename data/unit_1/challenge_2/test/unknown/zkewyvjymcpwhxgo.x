From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun  8 05:14:27 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l589ERhB013382
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 05:14:27 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 5628E2E301; Fri,  8 Jun 2007 09:13:53 +0000 (UTC)
Old-Return-Path: <mjr@phonecoop.coop>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.7 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtp4.tcw.telecomplete.net (smtp4.tcw.telecomplete.net [213.160.116.2])
	by murphy.debian.org (Postfix) with ESMTP id 3C6EB2E0BE
	for <debian-legal@lists.debian.org>; Fri,  8 Jun 2007 09:13:47 +0000 (UTC)
Received: from g.towers.org.uk ([86.53.37.59] helo=nail.towers.org.uk)
	by smtp4.tcw.telecomplete.net with esmtp (Exim 4.62)
	(envelope-from <mjr@phonecoop.coop>)
	id 1HwaXq-00023K-HA; Fri, 08 Jun 2007 10:14:10 +0100
Received: by nail.towers.org.uk (Postfix, from userid 1000)
	id C90DCF6E22; Fri,  8 Jun 2007 10:12:37 +0100 (BST)
From: MJ Ray <mjr@phonecoop.coop>
Subject: Re: Bacula: GPL and OpenSSL
To: debian-legal@lists.debian.org
Cc: kern@sibbald.com
References: <20070607161921.GA31193@excelhustler.com>
Message-Id: <20070608091237.C90DCF6E22@nail.towers.org.uk>
Date: Fri,  8 Jun 2007 10:12:37 +0100 (BST)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <rAJhtD.A.7qD.R3RaGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36666
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri,  8 Jun 2007 09:13:53 +0000 (UTC)

John Goerzen <jgoerzen@complete.org> wrote:
> [...] FSFE does not believe that an exception clause to
> the GPL is necessary to legally link to OpenSSL in the manner that
> Bacula is (dynamic linking).

I'm always open to learning more about this fiddly problem.
FSFE's reasoning for this seems to be:

[Kern's mail]
> I've been in conversation with FSFE, and from what they tell me, the GPL 
> prevents distribution of non-GPLed code not loading it in dynamic modules, 
> which is done quite frequently.  Bacula does not distribute any OpenSSL code, 
> and there is no OpenSSL code mixed with the Bacula binaries, therefore 
> according to FSFE there is no problem.

This seems to contradict oft-repeated views such as:
http://www.openssl.org/support/faq.html#LEGAL2
http://www.gnome.org/~markmc/openssl-and-the-gpl.html

Further, if Bacula uses openssl-specific calls, isn't it a derived work
of openssl?

Finally, does licensing@FSF agree with the FSFE opinion?  Having the
licence author on board would probably strengthen the argument for
including a whole range of plain-GPL+OpenSSL software.

[back to John's mail]
> Further, could we not consider OpenSSL to
> be a major component of the OS on which the executable runs, and thus
> fall under that exemption in the GPL anyway? [...]

No.  At least we haven't in the past AIUI because OpenSSL is not a
required part of debian installations.  See end of Anthony Towns's
Message-id: <20010616160333.A21471@azure.humbug.org.au>
http://lists.debian.org/debian-legal/2001/06/msg00043.html

Should we ask bap to add this link to the FAQ?

Can Bacula build against GNUTLS or Mozilla NSS?

Will the copyright holders of other code grant the exception?
Who are they?

(+1 to the 'pain in the neck' comment, by the way.)

Hope that helps,
-- 
MJR/slef
My Opinion Only: see http://people.debian.org/~mjr/
Please follow http://www.uk.debian.org/MailingLists/#codeofconduct


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

             

>zcA2>ZPiA1K 
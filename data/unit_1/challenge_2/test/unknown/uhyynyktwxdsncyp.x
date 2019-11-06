From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Tue Jul  3 03:19:09 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l637J8L9025107
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 03:19:09 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 66F982E63F; Tue,  3 Jul 2007 07:19:28 +0000 (UTC)
Old-Return-Path: <galactus@stack.nl>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=4.0 tests=AWL,FORGED_RCVD_HELO,
	IMPRONONCABLE_1,IMPRONONCABLE_2,SPF_PASS autolearn=no version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from mx1.stack.nl (meestal-mk5.stack.nl [131.155.140.149])
	by murphy.debian.org (Postfix) with ESMTP id EA9DE2E28D
	for <debian-legal@lists.debian.org>; Tue,  3 Jul 2007 07:19:18 +0000 (UTC)
Received: from toad.stack.nl (toad.stack.nl [IPv6:2001:610:1108:5010::135])
	by mx1.stack.nl (Postfix) with ESMTP id 446CF3F578
	for <debian-legal@lists.debian.org>; Tue,  3 Jul 2007 09:18:51 +0200 (CEST)
Received: by toad.stack.nl (Postfix, from userid 488)
	id 406C04191; Tue,  3 Jul 2007 09:18:51 +0200 (CEST)
Date: Tue, 3 Jul 2007 09:18:51 +0200
From: Arnoud Engelfriet <arnoud@engelfriet.net>
To: debian-legal@lists.debian.org
Subject: Re: Bug#431109: [PROPOSAL] Disambiguate of Section 12.5, Deprecate GPL/LGPL symlinks
Message-ID: <20070703071851.GA97769@stack.nl>
References: <20070629193137.31108.55438.reportbug@aragorn> <None.LNX.4.64.0706292201200.24042@cantor.unex.es> <20070629220318.GA3168@aragorn> <None.LNX.4.64.0706300011130.26483@cantor.unex.es> <87d4zdrhs7.fsf@mid.deneb.enyo.de> <ylZC0EUNIWiGFwWQ@thewolery.demon.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ylZC0EUNIWiGFwWQ@thewolery.demon.co.uk>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <8oaU8C.A.i9E.AifiGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36874
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Tue,  3 Jul 2007 07:19:28 +0000 (UTC)

Anthony W. Youngman wrote:
> In message <87d4zdrhs7.fsf@mid.deneb.enyo.de>, Florian Weimer 
> <fw@deneb.enyo.de> writes
> >But do we really want to license everything which is "GPL version 2 or
> >later" under the GPL version 3?
> 
> Actually, YOU CAN'T.
> 
> The only person who can CHANGE the licence is the person who owns the 
> copyright.

Technically you are of course correct. Debian cannot relicense somebody
else's software unless the license grants sublicensing rights.

In this case however the copyright holder gives prospective licensees a
choice:
"you can redistribute it and/or modify it under the terms of the GNU General
Public License as published by the Free Software Foundation; either version
2 of the License, or (at your option) any later version."

The recipient of the software thus can elect to use GPLv2's or GPLv3's
terms. This is not sublicensing or relicensing, it is simply choosing
between one of the offers included by the licensor. It's just like
the "GPL or 'commercial'" dual licensing used by e.g. MySQL or Trolltech.

Debian needs a license in order to distribute the software. Debian can
elect to distribute under the terms of the GPLv3. However to give the user
more choice, I would suggest that Debian tries to use GPLv2 whenever
possible.

Arnoud (IAALBINYL)

-- 
Arnoud Engelfriet, Dutch & European patent attorney - Speaking only for myself
Patents, copyright and IPR explained for techies: http://www.iusmentis.com/
              Arnoud blogt nu ook: http://blog.iusmentis.com/


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

    

Sya.h ce
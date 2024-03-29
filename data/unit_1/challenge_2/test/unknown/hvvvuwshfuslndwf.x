From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sat Jun 30 04:03:49 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5U83kL9004507
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 04:03:47 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E3ABD2DF1B; Sat, 30 Jun 2007 08:03:40 +0000 (UTC)
Old-Return-Path: <fw@deneb.enyo.de>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from mail.enyo.de (mail.enyo.de [212.9.189.167])
	by murphy.debian.org (Postfix) with ESMTP id A9CFB2DDBD
	for <debian-legal@lists.debian.org>; Sat, 30 Jun 2007 08:03:30 +0000 (UTC)
Received: from deneb.vpn.enyo.de ([212.9.189.177] helo=deneb.enyo.de)
	by mail.enyo.de with esmtp id 1I4XvA-000149-V7; Sat, 30 Jun 2007 10:03:09 +0200
Received: from fw by deneb.enyo.de with local (Exim 4.67)
	(envelope-from <fw@deneb.enyo.de>)
	id 1I4Xv6-0007uy-Qz; Sat, 30 Jun 2007 10:03:04 +0200
From: Florian Weimer <fw@deneb.enyo.de>
To: Santiago Vila <sanvila@unex.es>
Cc: 431109@bugs.debian.org, Robert Millan <rmh@aybabtu.com>,
   debian-legal@lists.debian.org
Subject: Re: Bug#431109: [PROPOSAL] Disambiguate of Section 12.5, Deprecate GPL/LGPL symlinks
References: <20070629193137.31108.55438.reportbug@aragorn>
	<None.LNX.4.64.0706292201200.24042@cantor.unex.es>
	<20070629220318.GA3168@aragorn>
	<None.LNX.4.64.0706300011130.26483@cantor.unex.es>
Date: Sat, 30 Jun 2007 10:03:04 +0200
In-Reply-To: <None.LNX.4.64.0706300011130.26483@cantor.unex.es> (Santiago
	Vila's message of "Sat, 30 Jun 2007 00:17:00 +0200 (CEST)")
Message-ID: <87d4zdrhs7.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <-So28.A.EjG.c5ghGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36773
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sat, 30 Jun 2007 08:03:40 +0000 (UTC)

* Santiago Vila:

> +         file.  Packages should not refer to GPL and LGPL symlinks in
> +         that directory since different, incompatible versions of these
> +         licenses have been published by the Free Software Foundation,
> +         hence using the symlinks could lead to ambiguity.
>
> I disagree with this. It should be ok to point to the latest version
> of the GPL if the program says "Version X or later". Many programs
> do that, and we should not need to change them.

But do we really want to license everything which is "GPL version 2 or
later" under the GPL version 3?

And how do we discriminate between "GPL version 2 or later" and "GPL
version 3 or later"?


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

  

  sl
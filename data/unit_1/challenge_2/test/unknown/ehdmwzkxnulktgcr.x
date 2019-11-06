From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jul  1 09:24:31 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61DOUL9001234
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 09:24:30 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 5A29F2E2C3; Sun,  1 Jul 2007 13:24:44 +0000 (UTC)
Old-Return-Path: <rmh@aybabtu.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,LDOSUBSCRIBER,
	SARE_RECV_IP_069060096,SPF_HELO_PASS,SPF_PASS autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from aybabtu.com (aybabtu.com [69.60.117.155])
	by murphy.debian.org (Postfix) with ESMTP id D313B2E2A4
	for <debian-legal@lists.debian.org>; Sun,  1 Jul 2007 13:24:39 +0000 (UTC)
Received: from [192.168.10.6] (helo=aragorn)
	by aybabtu.com with esmtps (TLS-1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <rmh@aybabtu.com>)
	id 1I4zPN-0001A8-4R; Sun, 01 Jul 2007 15:24:10 +0200
Received: from rmh by aragorn with local (Exim 4.63)
	(envelope-from <rmh@aybabtu.com>)
	id 1I4zQn-0001p5-Tg; Sun, 01 Jul 2007 15:25:37 +0200
Date: Sun, 1 Jul 2007 15:25:37 +0200
From: Robert Millan <rmh@aybabtu.com>
To: Andreas Barth <aba@not.so.argh.org>, Florian Weimer <fw@deneb.enyo.de>,
   431109@bugs.debian.org, Santiago Vila <sanvila@unex.es>,
   debian-legal@lists.debian.org
Subject: Re: Bug#431109: [PROPOSAL] Disambiguate of Section 12.5, Deprecate GPL/LGPL symlinks
Message-ID: <20070701132537.GA6764@aragorn>
References: <20070629193137.31108.55438.reportbug@aragorn> <None.LNX.4.64.0706292201200.24042@cantor.unex.es> <20070629220318.GA3168@aragorn> <None.LNX.4.64.0706300011130.26483@cantor.unex.es> <87d4zdrhs7.fsf@mid.deneb.enyo.de> <20070701104958.GD15872@mails.so.argh.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070701104958.GD15872@mails.so.argh.org>
Organization: free as in freedom
X-Message-Flag: Microsoft discourages use of Outlook.
X-Debbugs-No-Ack: true
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Warning-HTML-Mail2: yes
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <4kpU7.A.RbF.cs6hGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36811
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  1 Jul 2007 13:24:44 +0000 (UTC)

On Sun, Jul 01, 2007 at 12:49:58PM +0200, Andreas Barth wrote:
> * Florian Weimer (fw@deneb.enyo.de) [070630 10:16]:
> > * Santiago Vila:
> > 
> > > +         file.  Packages should not refer to GPL and LGPL symlinks in
> > > +         that directory since different, incompatible versions of these
> > > +         licenses have been published by the Free Software Foundation,
> > > +         hence using the symlinks could lead to ambiguity.
> > >
> > > I disagree with this. It should be ok to point to the latest version
> > > of the GPL if the program says "Version X or later". Many programs
> > > do that, and we should not need to change them.
> > 
> > But do we really want to license everything which is "GPL version 2 or
> > later" under the GPL version 3?
> > 
> > And how do we discriminate between "GPL version 2 or later" and "GPL
> > version 3 or later"?
> 
> If it says "version N or later", we should of course point to the
> *earliest* version to give users the choice which version they want.

There's nothing about the earliest giving user more choice than the
latest.  If instead of GPL 2 and GPL 3, we call them GPL Foo and GPL Bar,
we get:

  - Program is licensed under either GPL Foo, GPL Bar, or future versions
  that don't exist yet.
  - Since both Foo and Bar are DFSG-free [1], we are allowed to distribute it
  under the terms of either.  This doesn't take away freedom from our users,
  who are still able to use it as per the terms of Foo or Bar.

AISI, the reason for using the unversioned link is that it means less work
for maintainers (and the work *is* significant when it comes to lots of
packages) who have to update the copyright file every time license changes.
Most GPL programs out there are 2-or-later, so we are always allowed to
distributed as per the latest GPL.  The opposite does not apply.

[1] Even if DFSG-freeness of GPL 3 were to be disputed, this proposal is
    completely agnostic about that.

-- 
Robert Millan

My spam trap is honeypot@aybabtu.com.  Note: this address is only intended
for spam harvesters.  Writing to it will get you added to my black list.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                 

=cB8<2eeKegQv/
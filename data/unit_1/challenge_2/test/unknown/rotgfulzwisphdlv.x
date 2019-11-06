From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 07:20:03 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TBK1L9024862
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 07:20:01 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E82FD2DDDF; Fri, 29 Jun 2007 11:20:02 +0000 (UTC)
Old-Return-Path: <mjr@phonecoop.coop>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from smtp4.tcw.telecomplete.net (smtp4.tcw.telecomplete.net [213.160.116.2])
	by murphy.debian.org (Postfix) with ESMTP id 072CD2E316
	for <debian-legal@lists.debian.org>; Fri, 29 Jun 2007 11:19:57 +0000 (UTC)
Received: from g.towers.org.uk ([86.53.37.59] helo=nail.towers.org.uk)
	by smtp4.tcw.telecomplete.net with esmtp (Exim 4.62)
	(envelope-from <mjr@phonecoop.coop>)
	id 1I4EVx-00035s-IN
	for debian-legal@lists.debian.org; Fri, 29 Jun 2007 12:19:49 +0100
Received: by nail.towers.org.uk (Postfix, from userid 1000)
	id 5B16BF721A; Fri, 29 Jun 2007 12:19:24 +0100 (BST)
From: MJ Ray <mjr@phonecoop.coop>
Subject: Re: slepc license
To: debian-legal@lists.debian.org
References: <85b5c3130706280346y4893c540w66300003dafda3f7@mail.gmail.com>
Message-Id: <20070629111925.5B16BF721A@nail.towers.org.uk>
Date: Fri, 29 Jun 2007 12:19:24 +0100 (BST)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <oXJ-AD.A.2E.irOhGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36758
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 11:20:02 +0000 (UTC)

Ondrej Certik <ondrej@certik.cz> wrote:
> I would like to package SLEPc eigenvalue solvers[0] into non-free, the
> license is below. There is a line "A modified version of the software
> cannot be redistributed". The debian package can be built without
> modificating the upstream sources though, so my question is, can it go
> into non-free?

In the absence of any definition of what they mean by a modified
version, I think a binary package is a modified version of the source.

(This is not a new worry:
http://lists.debian.org/debian-devel/1997/08/msg00119.html
)

> And if not, the upstream authors asked me what words
> should be added to the license in order for the Debian to be able to
> distribute it in non-free?

Permission to distribute binary packages at least.  While you're asking,
why not ask for it as free software?  Even one with an obnoxious ad
clause (so they get their attribution) would be an improvement.

Hope that helps,
-- 
MJR/slef
My Opinion Only: see http://people.debian.org/~mjr/
Please follow http://www.uk.debian.org/MailingLists/#codeofconduct


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                

bqe=
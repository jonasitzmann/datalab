From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun  7 14:15:48 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57IFmhB005369
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 14:15:48 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E5AE32E96E; Thu,  7 Jun 2007 18:14:57 +0000 (UTC)
Old-Return-Path: <jgoerzen@excelhustler.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00 autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from excelhustler.com (gatekeeper.excelhustler.com [69.44.136.67])
	by murphy.debian.org (Postfix) with ESMTP id 60FA22E357
	for <debian-legal@lists.debian.org>; Thu,  7 Jun 2007 18:14:53 +0000 (UTC)
Received: from jgoerzen by wile.internal.excelhustler.com with local (Exim 4.67)
	(envelope-from <jgoerzen@excelhustler.com>)
	id 1HwMVr-0000IO-6S; Thu, 07 Jun 2007 13:15:11 -0500
Date: Thu, 7 Jun 2007 13:15:11 -0500
From: John Goerzen <jgoerzen@complete.org>
To: Walter Landry <wlandry@ucsd.edu>
Cc: debian-legal@lists.debian.org, kern@sibbald.com
Subject: Re: Bacula: GPL and OpenSSL
Message-ID: <20070607181511.GA1025@excelhustler.com>
References: <20070607161921.GA31193@excelhustler.com> <20070607.105039.74754877.walter@geodynamics.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070607.105039.74754877.walter@geodynamics.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <3eQRC.A.6-.hsEaGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36645
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Thu,  7 Jun 2007 18:14:57 +0000 (UTC)

On Thu, Jun 07, 2007 at 10:50:39AM -0700, Walter Landry wrote:
> John Goerzen <jgoerzen@complete.org> wrote:
> > Kern believes that he must remove the explicit OpenSSL exemption from
> > the license in order to be fully GPL-compliant, and it appears that FSFE
> > agrees.
> 
> I just read the contents of 
> 
>   /usr/share/doc/bacula-director-sqlite/copyright
> 
> I have reproduced it below for debian-legal.  The Linking section,
> which is needed for linking with OpenSSL, is not a problem for
> GPL-compatibility.  The other parts may or may not be a problem, and
> indeed seem superfluous, but all that is needed is the Linking
> section.

But the problem is that parts of Bacula's code are copyrighted by third
parties, and licensed under plain GPL (or Kern's license before he added
this exception), and may be unreachable for obtaining permission to
relicense with this exception.  (Kern, have you tried contacting them?)

So the question really is: how can we have Bacula in Debian, with SSL
support, but without that clause?  And why does FSFE disagree with our
interpretation?

-- John


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

   

 ry UZopa 
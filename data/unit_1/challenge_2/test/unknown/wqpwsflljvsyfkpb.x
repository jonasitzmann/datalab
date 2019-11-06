From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 18:17:11 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TMHAL9031694
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 18:17:11 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 5138C2E213; Fri, 29 Jun 2007 22:17:16 +0000 (UTC)
Old-Return-Path: <sanvila@unex.es>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,LDOSUBSCRIBER,SPF_PASS 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from pizarro.unex.es (pizarro.unex.es [158.49.8.2])
	by murphy.debian.org (Postfix) with ESMTP id A924D2DDBA
	for <debian-legal@lists.debian.org>; Fri, 29 Jun 2007 22:17:11 +0000 (UTC)
Received: from localhost (naranjo.unex.es [158.49.8.165])
	by pizarro.unex.es (Postfix/MJ-1.08) with ESMTP id CFCAED17BD;
	Sat, 30 Jun 2007 00:17:00 +0200 (CEST)
Received: from pizarro.unex.es ([158.49.8.2])
	by localhost (naranjo [158.49.17.21]) (amavisd-new, port 10024)
	with ESMTP id 11476-02; Sat, 30 Jun 2007 00:17:00 +0200 (CEST)
Received: from guadiana.unex.es (guadiana.unex.es [158.49.17.23])
	by pizarro.unex.es (Postfix/MJ-1.08) with ESMTP id B508BD16B2;
	Sat, 30 Jun 2007 00:17:00 +0200 (CEST)
Received: from cantor.unex.es ([158.49.18.105])
	by guadiana.unex.es with esmtp (Exim 3.35 #1 (Debian))
	id 1I4Olw-0004Uw-00; Sat, 30 Jun 2007 00:17:00 +0200
Date: Sat, 30 Jun 2007 00:17:00 +0200 (CEST)
From: Santiago Vila <sanvila@unex.es>
To: Robert Millan <rmh@aybabtu.com>
Cc: 431109@bugs.debian.org, debian-legal@lists.debian.org
Subject: Re: [PROPOSAL] Disambiguate of Section 12.5, Deprecate GPL/LGPL
 symlinks
In-Reply-To: <20070629220318.GA3168@aragorn>
Message-ID: <None.LNX.4.64.0706300011130.26483@cantor.unex.es>
References: <20070629193137.31108.55438.reportbug@aragorn>
 <None.LNX.4.64.0706292201200.24042@cantor.unex.es> <20070629220318.GA3168@aragorn>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Virus-Scanned: by amavisd-new-20030616-p10 (Debian/siue) at unex.es
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <LQ-cf.A.lgH.sTYhGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36766
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 22:17:16 +0000 (UTC)

+         file.  Packages should not refer to GPL and LGPL symlinks in
+         that directory since different, incompatible versions of these
+         licenses have been published by the Free Software Foundation,
+         hence using the symlinks could lead to ambiguity.

I disagree with this. It should be ok to point to the latest version
of the GPL if the program says "Version X or later". Many programs
do that, and we should not need to change them.

Instead, I think we should amend policy in this way:

  Packages under a fixed, definite version of the GPL should refer to
  the versioned GPL file in /usr/share/common-licenses.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

 

f-DS� ovn6
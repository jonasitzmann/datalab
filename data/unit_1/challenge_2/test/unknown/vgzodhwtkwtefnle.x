From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jul  5 14:00:56 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65I0tL9029429
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 14:00:55 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id F18C52E7C6; Thu,  5 Jul 2007 18:01:21 +0000 (UTC)
Old-Return-Path: <debbugs@bugs.debian.org>
X-Original-To: debian-legal@lists.debian.org
Received: from rietz.debian.org (rietz.debian.org [140.211.166.43])
	by murphy.debian.org (Postfix) with ESMTP id A02582E1CB;
	Thu,  5 Jul 2007 18:01:21 +0000 (UTC)
Received: from debbugs by rietz.debian.org with local (Exim 4.50)
	id 1I6VZf-0002uy-Go; Thu, 05 Jul 2007 17:57:03 +0000
X-Loop: owner@bugs.debian.org
Subject: Bug#431883: dcraw license does not give permission to distribute modified versions or source alongside
Reply-To: Don Armstrong <don@debian.org>, 431883@bugs.debian.org
Resent-From: Don Armstrong <don@debian.org>
Resent-To: debian-bugs-dist@lists.debian.org
Resent-Cc: debian-legal@lists.debian.org, Steve King <debian@invux.com>
Resent-Date: Thu, 05 Jul 2007 17:57:01 +0000
Resent-Message-ID: <handler.431883.B.11836580817614@bugs.debian.org>
X-Debian-PR-Message: report 431883
X-Debian-PR-Package: dcraw
X-Debian-PR-Keywords: 
X-Debian-PR-Source: dcraw
Received: via spool by submit@bugs.debian.org id=B.11836580817614
          (code B ref -1); Thu, 05 Jul 2007 17:57:01 +0000
Received: (at submit) by bugs.debian.org; 5 Jul 2007 17:54:41 +0000
Received: from rzlab.ucr.edu ([138.23.92.77] helo=epsilon.donarmstrong.com)
	by rietz.debian.org with esmtp (Exim 4.50)
	id 1I6VXN-0001yS-D2
	for submit@bugs.debian.org; Thu, 05 Jul 2007 17:54:41 +0000
Received: from epsilon.donarmstrong.com (localhost [127.0.0.1])
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Debian-3) with ESMTP id l65Hseub028472
	for <submit@bugs.debian.org>; Thu, 5 Jul 2007 10:54:41 -0700
Received: (from remotemail@localhost)
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Submit) id l65HseZL028471
	for submit@bugs.debian.org; Thu, 5 Jul 2007 10:54:40 -0700
Received: (nullmailer pid 26758 invoked by uid 1000);
	Thu, 05 Jul 2007 17:54:37 -0000
Date: Thu, 5 Jul 2007 10:54:37 -0700
From: Don Armstrong <don@debian.org>
To: submit@bugs.debian.org
Message-ID: <20070705175437.GV4800@volo.donarmstrong.com>
Mail-Followup-To: submit@bugs.debian.org
References: <7294.164.11.204.56.1183644515.squirrel@dazzle.invux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7294.164.11.204.56.1183644515.squirrel@dazzle.invux.com>
User-Agent: Mutt/1.5.16 (2007-06-11)
Delivered-To: submit@bugs.debian.org
X-Spam-Checker-Version: SpamAssassin 2.60-bugs.debian.org_2005_01_02 
	(1.212-2003-09-23-exp) on rietz.debian.org
X-Spam-Level: 
X-Spam-Status: No, hits=-13.0 required=4.0 tests=BAYES_01,FROMDEVELOPER,
	HAS_PACKAGE,X_DEBBUGS_CC autolearn=ham 
	version=2.60-bugs.debian.org_2005_01_02
Resent-Date: Thu, 05 Jul 2007 17:57:03 +0000
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36904
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org

Package: dcraw
Version: 7.02-1
Severity: serious

On Thu, 05 Jul 2007, Steve King wrote:
> However I would appreciate it if the assembled masses of legal
> experts could confirm that they agree that this is the case.

There's actually an even more fundamental problem with dcraw.c:

/*
   dcraw.c -- Dave Coffin's raw photo decoder
   Copyright 1997-2007 by Dave Coffin, dcoffin a cybercom o net

   This is a command-line ANSI C program to convert raw photos from
   any digital camera on any computer running any operating system.

   No license is required to download and use dcraw.c.  However,
   to lawfully redistribute this code, you must either (a) include
   full source code* for all executable files containing RESTRICTED
   functions, (b) remove all RESTRICTED functions, re-implement them,
   or copy them from an earlier, unrestricted Revision of dcraw.c,
   or (c) purchase a license from the author.

   The functions that process Foveon images have been RESTRICTED
   since Revision 1.237.  All other code remains free for all uses.

   *If you have not modified dcraw.c in any way, a link to my
   homepage qualifies as "full source code".

   $Revision: 1.387 $
   $Date: 2007/06/24 00:18:52 $
 */


You'll notice that we have no permission to distribute modified
versions of dcraw.c as required by the DFSG. Secondly, it appears that
we must include full source code if we've modified dcraw.c, but we
don't do that. We distribute source alongside.

If you could get Dave Coffin to explicitely dual license under the
GPL, that'd clarify this entire problem. [He seems to want a copyleft,
which the GPL would grant.]

Text like:

Alternately, you can redistribute and/or modify this work under the
terms of the GNU General Public License as published by the Free
Software Foundation, either version 2 of the License, or (at your
option) any later version.

would do the trick.


Don Armstrong

-- 
If everything seems to be going well, you have obviously overlooked
something.
 -- Steven Wright

http://www.donarmstrong.com              http://rzlab.ucr.edu


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

         

=ca Cemc75emut
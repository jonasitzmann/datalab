From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jul  6 02:29:57 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l666TvL9003934
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 6 Jul 2007 02:29:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D440F16383F
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  6 Jul 2007 06:29:52 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id D12EE162AD8; Fri,  6 Jul 2007 06:29:29 +0000 (GMT)
Date: Fri, 06 Jul 2007 16:17:32 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070706062929.D12EE162AD8@lists.samba.org>
Subject: Rev 563: merge from ronnie - we have an official port number,
	yay! in http://samba.org/~tridge/ctdb
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

------------------------------------------------------------
revno: 563
revision-id: tridge@samba.org-20070706061731-yn4ys17aszrhclts
parent: tridge@samba.org-20070705050642-ltzkkn52c37ob48c
parent: sahlberg@ronnie-20070706052903-ubnhrajew6z45y29
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Fri 2007-07-06 16:17:31 +1000
message:
  merge from ronnie - we have an official port number, yay!
removed:
  config/events.d/59.nfslock     nfslock-20070601105340-vlcvnp6euoj3zdwy-2
added:
  config/events.d/61.nfstickle   61.nfstickle-20070706005204-6etuzuk8b86aoua5-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  config/events.d/60.nfs         nfs-20070601141008-hy3h4qgbk1jd2jci-1
  doc/ctdb.1.html                ctdb.1.html-20070609004024-w2r7qblwi5s3iw4a-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  packaging/RPM/ctdb.spec        ctdb.spec-20070527204758-biuh7znabuwan3zn-3
  web/configuring.html           configuring_ctdb.htm-20070608021649-cipqdfao7xedp6ji-1
  web/testing.html               starting_and_testing-20070608025718-naa5fgl4tuhgdl8r-1
    ------------------------------------------------------------
    revno: 432.1.111
    merged: sahlberg@ronnie-20070706052903-ubnhrajew6z45y29
    parent: sahlberg@ronnie-20070706015134-o6iovrw3ymf0zb8k
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Fri 2007-07-06 15:29:03 +1000
    message:
      use the official iana number for ctdb and not 9001
    ------------------------------------------------------------
    revno: 432.1.110
    merged: sahlberg@ronnie-20070706015134-o6iovrw3ymf0zb8k
    parent: sahlberg@ronnie-20070706005442-nuyhln2yco6qiwbl
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Fri 2007-07-06 11:51:34 +1000
    message:
      use 'ctdb tickle' instead of sendip to tickle nfs clients.
    ------------------------------------------------------------
    revno: 432.1.109
    merged: sahlberg@ronnie-20070706005442-nuyhln2yco6qiwbl
    parent: sahlberg@ronnie-20070706004846-1yx6kky4oocr1thb
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Fri 2007-07-06 10:54:42 +1000
    message:
      remove 59.nfslock and fold this into 60.nfs
      add a 61.nfstickle script to make nfs failover faster
    ------------------------------------------------------------
    revno: 432.1.108
    merged: sahlberg@ronnie-20070706004846-1yx6kky4oocr1thb
    parent: sahlberg@ronnie-20070705001746-st3mp12jyjuy3kni
    parent: tridge@samba.org-20070705050642-ltzkkn52c37ob48c
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Fri 2007-07-06 10:48:46 +1000
    message:
      merge from tridge

Diff too large for email (535, the limit is 200).

          

:j>e4nQ
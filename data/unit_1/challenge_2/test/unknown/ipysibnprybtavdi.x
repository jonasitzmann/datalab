From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 00:56:53 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l644urL9005856
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 00:56:53 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 160D1162C35
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 04:56:49 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 738B9162BCC; Wed,  4 Jul 2007 04:56:31 +0000 (GMT)
Date: Wed, 04 Jul 2007 14:51:34 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070704045631.738B9162BCC@lists.samba.org>
Subject: Rev 554: merge from ronnie in http://samba.org/~tridge/ctdb
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
revno: 554
revision-id: tridge@samba.org-20070704045133-umv584idgrsbj03e
parent: tridge@samba.org-20070704031445-m5fab6yl49w9f2hv
parent: sahlberg@ronnie-20070704041628-k3och7ffjambzc8q
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-07-04 14:51:33 +1000
message:
  merge from ronnie
removed:
  tools/socketkiller.c           socketkiller.c-20070704025142-tipbngbwruk1brmb-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  takeover/ctdb_takeover.c       ctdb_takeover.c-20070525071636-a5n1ihghjtppy08r-2
  takeover/system.c              system.c-20070525071636-a5n1ihghjtppy08r-3
  tools/ctdb.c                   ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1
    ------------------------------------------------------------
    revno: 432.1.100
    merged: sahlberg@ronnie-20070704041628-k3och7ffjambzc8q
    parent: sahlberg@ronnie-20070704041448-zf42ebj413oy5jxk
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 14:16:28 +1000
    message:
      we dont need socketkiller anymore now that the 
      kill-tcp-connection code is available from the ctdb tool
    ------------------------------------------------------------
    revno: 432.1.99
    merged: sahlberg@ronnie-20070704041448-zf42ebj413oy5jxk
    parent: sahlberg@ronnie-20070704035322-513o090px81lwtz7
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 14:14:48 +1000
    message:
      add a killtcp command to the ctdb tool
    ------------------------------------------------------------
    revno: 432.1.98
    merged: sahlberg@ronnie-20070704035322-513o090px81lwtz7
    parent: sahlberg@ronnie-20070704033238-gs7rwc6rlho71alx
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 13:53:22 +1000
    message:
      add a new  ctdb_sys_kill_tcp() function that kills (RST) the specified 
      connection
    ------------------------------------------------------------
    revno: 432.1.97
    merged: sahlberg@ronnie-20070704033238-gs7rwc6rlho71alx
    parent: sahlberg@ronnie-20070704032708-ecwyhewxyednnep5
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 13:32:38 +1000
    message:
      change the signature for ctdb_sys_send_ack() to ctdb_sys_send_tcp()
      to make it possible to provide which seq/ack numbers to use and also 
      whether the RST flag should be set.
      
      update all callers to the new signature
    ------------------------------------------------------------
    revno: 432.1.96
    merged: sahlberg@ronnie-20070704032708-ecwyhewxyednnep5
    parent: sahlberg@ronnie-20070704031354-81v3w54n4nbel5p3
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 13:27:08 +1000
    message:
      ETH_P_IP does not work on my ubuntu system   so changing it back to the 
      slightly less efficient ETH_P_ALL
    ------------------------------------------------------------
    revno: 432.1.95
    merged: sahlberg@ronnie-20070704031354-81v3w54n4nbel5p3
    parent: sahlberg@ronnie-20070704025207-o9ddwpxme8vji4mz
    parent: tridge@samba.org-20070704031445-m5fab6yl49w9f2hv
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-07-04 13:13:54 +1000
    message:
      merge from tridge

Diff too large for email (490, the limit is 200).

           

Ro a
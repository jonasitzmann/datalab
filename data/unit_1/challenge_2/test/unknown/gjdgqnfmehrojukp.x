From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 20:33:55 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l520XshB016795
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 20:33:54 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 682C5162B74
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 00:33:49 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id CDEE4163879; Sat,  2 Jun 2007 00:32:09 +0000 (GMT)
Date: Sat, 02 Jun 2007 10:05:05 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070602003209.CDEE4163879@lists.samba.org>
Subject: Rev 429: - moved cmdline options that are only relevant to ctdbd
	into ctdbd.c in http://samba.org/~tridge/ctdb
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
revno: 429
revision-id: tridge@samba.org-20070602000328-131ws0mc6tjlh3ew
parent: tridge@samba.org-20070602000117-hyruu43epqiar7e2
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-02 10:03:28 +1000
message:
  - moved cmdline options that are only relevant to ctdbd into ctdbd.c
  
  - fixed a valgrind error on failing to send a control
  
  - don't mark node dead when already disconnected
  
  - moved node list lock code into common code
modified:
  common/cmdline.c               cmdline.c-20070416041216-w1zvz91bkdsgjckw-1
  common/ctdb_daemon.c           ctdb_daemon.c-20070409200331-3el1kqgdb9m4ib0g-1
  common/ctdb_monitor.c          ctdb_monitor.c-20070518100625-8jf4ft1mjzmb22ck-1
  common/ctdb_recover.c          ctdb_recover.c-20070503002147-admmfgt1oj6gexfo-1
  common/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  direct/ctdbd.c                 ctdbd.c-20070411085044-dqmhr6mfeexnyt4m-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13

Diff too large for email (385, the limit is 200).

                 

E- p0.prnyiii
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 04:25:30 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l548PUhB025702
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 04:25:30 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C7680163991
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 08:25:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 47695163914; Mon,  4 Jun 2007 08:24:59 +0000 (GMT)
Date: Mon, 04 Jun 2007 17:46:38 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604082459.47695163914@lists.samba.org>
Subject: Rev 456: - start moving tunable variables into their own structure
	in http://samba.org/~tridge/ctdb
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
revno: 456
revision-id: tridge@samba.org-20070604074637-ehj05x645nrxro35
parent: tridge@samba.org-20070604072355-lpy6i4311vzfykil
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 17:46:37 +1000
message:
   - start moving tunable variables into their own structure
  - fixed the test scripts to use a separate dbdir
added:
  tests/start_daemons.sh         start_daemons.sh-20070604074603-fbb8x90srun04xn0-1
modified:
  common/ctdb.c                  ctdb.c-20061127094323-t50f58d65iaao5of-2
  common/ctdb_call.c             ctdb_call.c-20061128065342-to93h6eejj5kon81-1
  common/ctdb_control.c          ctdb_control.c-20070426122724-j6gkpiofhbwdin63-1
  common/ctdb_ltdb.c             ctdb_ltdb.c-20061128065342-to93h6eejj5kon81-2
  common/ctdb_monitor.c          ctdb_monitor.c-20070518100625-8jf4ft1mjzmb22ck-1
  common/ctdb_traverse.c         ctdb_traverse.c-20070503021550-ztfs5rwx8jfm8qqx-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  tests/bench.sh                 bench.sh-20070209014602-vdolpr6esqsa58s7-1
  tests/ctdbd.sh                 ctdbd.sh-20070411085038-phusiewluwzyqjpc-2
  tests/fetch.sh                 fetch.sh-20070405031756-lomzqpjyqg3xd1kv-1
  tools/ctdb_control.c           ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1

Diff too large for email (471, the limit is 200).

     

�rpb/mlQsoowtl
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 04:25:36 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l548PZhB025709
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 04:25:36 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 401E716394D
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 08:25:30 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 41E1A163903; Mon,  4 Jun 2007 08:24:59 +0000 (GMT)
Date: Mon, 04 Jun 2007 17:23:56 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604082459.41E1A163903@lists.samba.org>
Subject: Rev 455: remove some cruft thats not needed any more in
	http://samba.org/~tridge/ctdb
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
revno: 455
revision-id: tridge@samba.org-20070604072355-lpy6i4311vzfykil
parent: tridge@samba.org-20070604054452-lronm18fgti5wwzz
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 17:23:55 +1000
message:
  remove some cruft thats not needed any more
removed:
  direct/4nodes.txt              4nodes.txt-20070502024949-2rkyfp289w532z1l-1
  direct/README                  readme-20070411085353-evbh8j3q762w3azh-1
  direct/ctdbd_test.c            ctdbd_test.c-20070411085057-17kgjzfktsh28g99-1
  direct/nodes.txt               nodes.txt-20070411085104-tprj7cr1u6o5i7xm-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  common/ctdb.c                  ctdb.c-20061127094323-t50f58d65iaao5of-2
  common/ctdb_client.c           ctdb_client.c-20070411010216-3kd8v37k61steeya-1
  common/ctdb_daemon.c           ctdb_daemon.c-20070409200331-3el1kqgdb9m4ib0g-1
  include/ctdb.h                 ctdb.h-20061117234101-o3qt14umlg9en8z0-11
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  tests/ctdbd.sh                 ctdbd.sh-20070411085038-phusiewluwzyqjpc-2
  tools/ctdb_control.c           ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1

Diff too large for email (802, the limit is 200).

   


 OseRs
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 21:53:25 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l521rOhB017452
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 21:53:25 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 50CDC162AD4
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 01:53:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 93C6D162AD4; Sat,  2 Jun 2007 01:53:10 +0000 (GMT)
Date: Sat, 02 Jun 2007 11:36:43 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070602015310.93C6D162AD4@lists.samba.org>
Subject: Rev 430: - make specification of a recovery lock file compulsory in
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
revno: 430
revision-id: tridge@samba.org-20070602013642-o54qmh8seluj1nja
parent: tridge@samba.org-20070602000328-131ws0mc6tjlh3ew
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-02 11:36:42 +1000
message:
  - make specification of a recovery lock file compulsory
  - die if someone other than the recmaster can get the recovery lock
modified:
  common/ctdb.c                  ctdb.c-20061127094323-t50f58d65iaao5of-2
  common/ctdb_recover.c          ctdb_recover.c-20070503002147-admmfgt1oj6gexfo-1
  common/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  direct/ctdbd.c                 ctdbd.c-20070411085044-dqmhr6mfeexnyt4m-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  packaging/ctdb.init            ctdb.init-20070527204758-biuh7znabuwan3zn-6
  tests/ctdbd.sh                 ctdbd.sh-20070411085038-phusiewluwzyqjpc-2
  tools/ctdb.sysconfig           ctdb.sysconfig-20070527204758-biuh7znabuwan3zn-7

Diff too large for email (287, the limit is 200).

                

�D<>rswd
Z
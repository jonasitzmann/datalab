From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 17 09:33:16 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5HDXGL9007367
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 09:33:16 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E52CC163845
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 13:33:14 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id C464C162AE8; Sun, 17 Jun 2007 13:32:41 +0000 (GMT)
Date: Sun, 17 Jun 2007 23:32:41 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070617133241.C464C162AE8@lists.samba.org>
Subject: Rev 546: - merged ctdb_store test from ronnie in
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
revno: 546
revision-id: tridge@samba.org-20070617133144-nympluy3k8uuqbf5
parent: tridge@samba.org-20070617020529-q032m8vir2vx3c2i
parent: sahlberg@ronnie-20070617011342-z2cukqaalg61vyrt
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sun 2007-06-17 23:31:44 +1000
message:
  - merged ctdb_store test from ronnie
  - added DatabaseHashSize tunable
  - added logging of events inside recovery (for timing)
added:
  tests/ctdb_store.c             ctdb_store.c-20070617011248-7ze8iaf75dwi0tk0-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  client/ctdb_client.c           ctdb_client.c-20070411010216-3kd8v37k61steeya-1
  config/events.d/10.interface   10.interface-20070604050809-s21zslfirn07zjt8-1
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  lib/tdb/common/lock.c          lock.c-20070220022425-m1wibgjq7n5hahs6-7
  server/ctdb_ltdb_server.c      ctdb_ltdb_server.c-20070607120348-7r182h0nlqxysyss-1
  server/ctdb_recover.c          ctdb_recover.c-20070503002147-admmfgt1oj6gexfo-1
  server/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  server/ctdb_tunables.c         ctdb_tunables.c-20070604095258-4m34d7cm1qa7yos9-1
  tests/start_daemons.sh         start_daemons.sh-20070604074603-fbb8x90srun04xn0-1
    ------------------------------------------------------------
    revno: 432.1.79
    merged: sahlberg@ronnie-20070617011342-z2cukqaalg61vyrt
    parent: sahlberg@ronnie-20070614072642-nkst620h97uuqdjl
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-17 11:13:42 +1000
    message:
      add a small test tool that can be used to create a massive amount of 
      records in the test database.
      
      the tool first creates the number of records requested, then it will 
      loop infinitely reading the records out again.
    ------------------------------------------------------------
    revno: 432.1.78
    merged: sahlberg@ronnie-20070614072642-nkst620h97uuqdjl
    parent: sahlberg@ronnie-20070613033219-6buxjh7f9ugr5i20
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Thu 2007-06-14 17:26:42 +1000
    message:
      note that there is no link on the PUBLIC interface
    ------------------------------------------------------------
    revno: 432.1.77
    merged: sahlberg@ronnie-20070613033219-6buxjh7f9ugr5i20
    parent: sahlberg@ronnie-20070611075942-b2on6teakjz35xg6
    parent: tridge@samba.org-20070612094454-jtmr17z42ko4x7bn
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Wed 2007-06-13 13:32:19 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.76
    merged: sahlberg@ronnie-20070611075942-b2on6teakjz35xg6
    parent: sahlberg@ronnie-20070610224251-wie16wf7b72zt27n
    parent: tridge@samba.org-20070611035650-5le1j4hug22kkd0o
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Mon 2007-06-11 17:59:42 +1000
    message:
      merge from tridge

Diff too large for email (431, the limit is 200).

               

,t2z
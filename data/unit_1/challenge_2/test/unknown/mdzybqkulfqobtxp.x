From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 08:37:28 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57CbShB002147
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 08:37:28 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 204F91638CE
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 12:37:22 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 7DA12162C20; Thu,  7 Jun 2007 12:36:49 +0000 (GMT)
Date: Thu, 07 Jun 2007 22:06:21 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070607123649.7DA12162C20@lists.samba.org>
Subject: Rev 499: start splitting the code into separate client and server
	pieces in http://samba.org/~tridge/ctdb
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
revno: 499
revision-id: tridge@samba.org-20070607120619-egp84n6ztuhc9520
parent: tridge@samba.org-20070607092155-cq7warowco9jcgu0
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Thu 2007-06-07 22:06:19 +1000
message:
  start splitting the code into separate client and server pieces
removed:
  direct/                        direct-20070411085038-phusiewluwzyqjpc-1
added:
  client/                        client-20070607115944-ktuupy8dqixpv5zf-1
  server/                        server-20070607115944-ktuupy8dqixpv5zf-2
  server/ctdb_ltdb_server.c      ctdb_ltdb_server.c-20070607120348-7r182h0nlqxysyss-1
renamed:
  common/ctdb.c => server/ctdb.c ctdb.c-20061127094323-t50f58d65iaao5of-2
  common/ctdb_call.c => server/ctdb_call.c ctdb_call.c-20061128065342-to93h6eejj5kon81-1
  common/ctdb_client.c => client/ctdb_client.c ctdb_client.c-20070411010216-3kd8v37k61steeya-1
  common/ctdb_control.c => server/ctdb_control.c ctdb_control.c-20070426122724-j6gkpiofhbwdin63-1
  common/ctdb_daemon.c => server/ctdb_daemon.c ctdb_daemon.c-20070409200331-3el1kqgdb9m4ib0g-1
  common/ctdb_freeze.c => server/ctdb_freeze.c ctdb_freeze.c-20070512051503-935zdtyuqknqnhmo-1
  common/ctdb_lockwait.c => server/ctdb_lockwait.c ctdb_lockwait.c-20070416214118-n1aeonljj3vpdd9q-1
  common/ctdb_monitor.c => server/ctdb_monitor.c ctdb_monitor.c-20070518100625-8jf4ft1mjzmb22ck-1
  common/ctdb_recover.c => server/ctdb_recover.c ctdb_recover.c-20070503002147-admmfgt1oj6gexfo-1
  common/ctdb_recoverd.c => server/ctdb_recoverd.c recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  common/ctdb_traverse.c => server/ctdb_traverse.c ctdb_traverse.c-20070503021550-ztfs5rwx8jfm8qqx-1
  common/ctdb_tunables.c => server/ctdb_tunables.c ctdb_tunables.c-20070604095258-4m34d7cm1qa7yos9-1
  direct/ctdbd.c => server/ctdbd.c ctdbd.c-20070411085044-dqmhr6mfeexnyt4m-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  common/ctdb_ltdb.c             ctdb_ltdb.c-20061128065342-to93h6eejj5kon81-2
  common/ctdb_message.c          ctdb_message.c-20070208224107-9dnio7x7z33prrmt-1
  server/ctdb.c                  ctdb.c-20061127094323-t50f58d65iaao5of-2
  server/ctdb_call.c             ctdb_call.c-20061128065342-to93h6eejj5kon81-1
  client/ctdb_client.c           ctdb_client.c-20070411010216-3kd8v37k61steeya-1
  server/ctdb_daemon.c           ctdb_daemon.c-20070409200331-3el1kqgdb9m4ib0g-1
  server/ctdbd.c                 ctdbd.c-20070411085044-dqmhr6mfeexnyt4m-1

Diff too large for email (1458, the limit is 200).

               

FH. V
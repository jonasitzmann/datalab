From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 05:54:22 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l549sMhB026439
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 05:54:22 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AD7821638EC
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 09:54:16 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 8E8E11639B2; Mon,  4 Jun 2007 09:53:50 +0000 (GMT)
Date: Mon, 04 Jun 2007 19:53:19 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070604095350.8E8E11639B2@lists.samba.org>
Subject: Rev 457: added tunables settable using ctdb command line tool in
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
revno: 457
revision-id: tridge@samba.org-20070604095319-jm896xka6pchh1tf
parent: tridge@samba.org-20070604074637-ehj05x645nrxro35
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Mon 2007-06-04 19:53:19 +1000
message:
  added tunables settable using ctdb command line tool
added:
  common/ctdb_tunables.c         ctdb_tunables.c-20070604095258-4m34d7cm1qa7yos9-1
  config/events.d/README         readme-20070604074656-9t8b9fryiqc1nyrb-1
modified:
  .bzrignore                     bzrignore-20061117235536-slq8jlz2b5161dfm-1
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  common/ctdb_client.c           ctdb_client.c-20070411010216-3kd8v37k61steeya-1
  common/ctdb_control.c          ctdb_control.c-20070426122724-j6gkpiofhbwdin63-1
  include/ctdb.h                 ctdb.h-20061117234101-o3qt14umlg9en8z0-11
  include/ctdb_private.h         ctdb_private.h-20061117234101-o3qt14umlg9en8z0-13
  tests/ctdbd.sh                 ctdbd.sh-20070411085038-phusiewluwzyqjpc-2
  tests/start_daemons.sh         start_daemons.sh-20070604074603-fbb8x90srun04xn0-1
  tools/ctdb_control.c           ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1

Diff too large for email (555, the limit is 200).

              

Dant
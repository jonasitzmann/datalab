From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 08:24:48 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51COmhB009567
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 08:24:48 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 58108163C28
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 12:24:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 00A2D163B9C; Fri,  1 Jun 2007 12:19:32 +0000 (GMT)
Date: Fri, 01 Jun 2007 20:54:26 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070601121933.00A2D163B9C@lists.samba.org>
Subject: Rev 419: split out events for each subsystem separately in
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
revno: 419
revision-id: tridge@samba.org-20070601105426-8caweabxmsenly05
parent: tridge@samba.org-20070601091658-s52qj3zi6l24os2y
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Fri 2007-06-01 20:54:26 +1000
message:
  split out events for each subsystem separately
added:
  tests/events                   events-20070601105359-jc8p0xp6iq7phful-1
  tools/events.d/                events.d-20070601105340-vlcvnp6euoj3zdwy-1
  tools/events.d/nfslock         nfslock-20070601105340-vlcvnp6euoj3zdwy-2
  tools/events.d/samba           samba-20070601105340-vlcvnp6euoj3zdwy-3
  tools/functions                functions-20070601105405-gajwirydr5a9zd6x-1
modified:
  packaging/RHEL/ctdb.spec       ctdb.spec-20070527204758-biuh7znabuwan3zn-3
  tools/events                   events-20070529030121-04fjh63cxfh8v1pj-1
  tools/statd-callout            statdcallout-20070531010857-6sdlz455vusye5y5-1

Diff too large for email (438, the limit is 200).

 

	zMI=te.-s&te0ls
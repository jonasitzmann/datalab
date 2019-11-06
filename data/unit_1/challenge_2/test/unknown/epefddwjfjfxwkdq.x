From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 20:33:51 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l520XphB016788
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 20:33:51 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id ED03616385C
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 00:33:45 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id C498216381D; Sat,  2 Jun 2007 00:32:09 +0000 (GMT)
Date: Sat, 02 Jun 2007 10:01:18 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070602003209.C498216381D@lists.samba.org>
Subject: Rev 428: another place we need to cope with the strange epoll fork
	semantics in http://samba.org/~tridge/ctdb
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
revno: 428
revision-id: tridge@samba.org-20070602000117-hyruu43epqiar7e2
parent: tridge@samba.org-20070601224649-wvwheltox404k3pe
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-02 10:01:17 +1000
message:
  another place we need to cope with the strange epoll fork semantics
modified:
  lib/events/events_aio.c        events_aio.c-20070501213746-4fxluwiq4rcxib8p-1
  lib/events/events_epoll.c      events_epoll.c-20070501213746-4fxluwiq4rcxib8p-2
  lib/events/events_standard.c   events_standard.c-20061117234101-o3qt14umlg9en8z0-30
=== modified file 'lib/events/events_aio.c'
--- a/lib/events/events_aio.c	2007-05-17 22:33:10 +0000
+++ b/lib/events/events_aio.c	2007-06-02 00:01:17 +0000
@@ -393,6 +393,8 @@
 	struct aio_event_context *aio_ev = talloc_get_type(ev->additional_data,
 							   struct aio_event_context);
 
+	epoll_check_reopen(aio_ev);
+
 	aio_ev->num_fd_events--;
 	aio_ev->destruction_count++;
 

=== modified file 'lib/events/events_epoll.c'
--- a/lib/events/events_epoll.c	2007-05-17 22:33:10 +0000
+++ b/lib/events/events_epoll.c	2007-06-02 00:01:17 +0000
@@ -342,6 +342,8 @@
 	struct epoll_event_context *epoll_ev = talloc_get_type(ev->additional_data,
 							   struct epoll_event_context);
 
+	epoll_check_reopen(epoll_ev);
+
 	epoll_ev->num_fd_events--;
 	epoll_ev->destruction_count++;
 

=== modified file 'lib/events/events_standard.c'
--- a/lib/events/events_standard.c	2007-05-18 01:24:45 +0000
+++ b/lib/events/events_standard.c	2007-06-02 00:01:17 +0000
@@ -379,6 +379,8 @@
 	struct std_event_context *std_ev = talloc_get_type(ev->additional_data,
 							   struct std_event_context);
 
+	epoll_check_reopen(std_ev);
+
 	if (std_ev->maxfd == fde->fd) {
 		std_ev->maxfd = EVENT_INVALID_MAXFD;
 	}

                  

F-3r"b>fdeS6=k
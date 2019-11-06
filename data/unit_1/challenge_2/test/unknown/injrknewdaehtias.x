From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 03:45:03 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l647j3L9007448
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 03:45:03 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 45F0A162BCC
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 07:44:59 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=3.8 tests=AWL,BAYES_40,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 2B5F5162BCC; Wed,  4 Jul 2007 07:44:46 +0000 (GMT)
Date: Wed, 04 Jul 2007 17:45:46 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070704074446.2B5F5162BCC@lists.samba.org>
Subject: Rev 558: forgot to add this in http://samba.org/~tridge/ctdb
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
revno: 558
revision-id: tridge@samba.org-20070704074546-njwthegu8tr03nh1
parent: tridge@samba.org-20070704065238-u4jop7aazj7ptv10
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Wed 2007-07-04 17:45:46 +1000
message:
  forgot to add this
added:
  server/eventscript.c           eventscript.c-20070704074533-95f10rsay8um8wrr-1
=== added file 'server/eventscript.c'
--- a/server/eventscript.c	1970-01-01 00:00:00 +0000
+++ b/server/eventscript.c	2007-07-04 07:45:46 +0000
@@ -0,0 +1,192 @@
+/* 
+   event script handling
+
+   Copyright (C) Andrew Tridgell  2007
+
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 2 of the License, or
+   (at your option) any later version.
+   
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+   
+   You should have received a copy of the GNU General Public License
+   along with this program; if not, write to the Free Software
+   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+*/
+
+#include "includes.h"
+#include "system/filesys.h"
+#include "system/wait.h"
+#include "../include/ctdb_private.h"
+#include "lib/events/events.h"
+
+/*
+  run the event script - varargs version
+ */
+static int ctdb_event_script_v(struct ctdb_context *ctdb, const char *fmt, va_list ap)
+{
+	char *options, *cmdstr;
+	int ret;
+	va_list ap2;
+	struct stat st;
+
+	if (stat(ctdb->takeover.event_script, &st) != 0 && 
+	    errno == ENOENT) {
+		DEBUG(0,("No event script found at '%s'\n", ctdb->takeover.event_script));
+		return 0;
+	}
+
+	va_copy(ap2, ap);
+	options  = talloc_vasprintf(ctdb, fmt, ap2);
+	va_end(ap2);
+	CTDB_NO_MEMORY(ctdb, options);
+
+	cmdstr = talloc_asprintf(ctdb, "%s %s", ctdb->takeover.event_script, options);
+	CTDB_NO_MEMORY(ctdb, cmdstr);
+
+	ret = system(cmdstr);
+	if (ret != -1) {
+		ret = WEXITSTATUS(ret);
+	}
+
+	talloc_free(cmdstr);
+	talloc_free(options);
+
+	return ret;
+}
+
+/*
+  run the event script
+ */
+int ctdb_event_script(struct ctdb_context *ctdb, const char *fmt, ...)
+{
+	va_list ap;
+	int ret;
+
+	va_start(ap, fmt);
+	ret = ctdb_event_script_v(ctdb, fmt, ap);
+	va_end(ap);
+
+	return ret;
+}
+
+
+struct ctdb_event_script_state {
+	struct ctdb_context *ctdb;
+	pid_t child;
+	void (*callback)(struct ctdb_context *, int, void *);
+	int fd[2];
+	void *private_data;
+};
+
+/* called when child is finished */
+static void ctdb_event_script_handler(struct event_context *ev, struct fd_event *fde, 
+				      uint16_t flags, void *p)
+{
+	struct ctdb_event_script_state *state = 
+		talloc_get_type(p, struct ctdb_event_script_state);
+	int status = -1;
+	void (*callback)(struct ctdb_context *, int, void *) = state->callback;
+	void *private_data = state->private_data;
+	struct ctdb_context *ctdb = state->ctdb;
+
+	waitpid(state->child, &status, 0);
+	if (status != -1) {
+		status = WEXITSTATUS(status);
+	}
+	talloc_set_destructor(state, NULL);
+	talloc_free(state);
+	callback(ctdb, status, private_data);
+}
+
+
+/* called when child times out */
+static void ctdb_event_script_timeout(struct event_context *ev, struct timed_event *te, 
+				      struct timeval t, void *p)
+{
+	struct ctdb_event_script_state *state = talloc_get_type(p, struct ctdb_event_script_state);
+	void (*callback)(struct ctdb_context *, int, void *) = state->callback;
+	void *private_data = state->private_data;
+	struct ctdb_context *ctdb = state->ctdb;
+
+	DEBUG(0,("event script timed out\n"));
+	talloc_free(state);
+	callback(ctdb, -1, private_data);
+}
+
+/*
+  destroy a running event script
+ */
+static int event_script_destructor(struct ctdb_event_script_state *state)
+{
+	kill(state->child, SIGKILL);
+	waitpid(state->child, NULL, 0);
+	return 0;
+}
+
+/*
+  run the event script in the background, calling the callback when 
+  finished
+ */
+int ctdb_event_script_callback(struct ctdb_context *ctdb, 
+			       struct timeval timeout,
+			       TALLOC_CTX *mem_ctx,
+			       void (*callback)(struct ctdb_context *, int, void *),
+			       void *private_data,
+			       const char *fmt, ...)
+{
+	struct ctdb_event_script_state *state;
+	va_list ap;
+	int ret;
+
+	state = talloc(mem_ctx, struct ctdb_event_script_state);
+	CTDB_NO_MEMORY(ctdb, state);
+
+	state->ctdb = ctdb;
+	state->callback = callback;
+	state->private_data = private_data;
+	
+	ret = pipe(state->fd);
+	if (ret != 0) {
+		talloc_free(state);
+		return -1;
+	}
+
+	state->child = fork();
+
+	if (state->child == (pid_t)-1) {
+		close(state->fd[0]);
+		close(state->fd[1]);
+		talloc_free(state);
+		return -1;
+	}
+
+	if (state->child == 0) {
+		close(state->fd[0]);
+		ctdb_set_realtime(false);
+		set_close_on_exec(state->fd[1]);
+		va_start(ap, fmt);
+		ret = ctdb_event_script_v(ctdb, fmt, ap);
+		va_end(ap);
+		_exit(ret);
+	}
+
+	talloc_set_destructor(state, event_script_destructor);
+
+	close(state->fd[1]);
+
+	event_add_fd(ctdb->ev, state, state->fd[0], EVENT_FD_READ|EVENT_FD_AUTOCLOSE,
+		     ctdb_event_script_handler, state);
+
+	if (!timeval_is_zero(&timeout)) {
+		event_add_timed(ctdb->ev, state, timeout, ctdb_event_script_timeout, state);
+	}
+
+	return 0;
+}
+
+

  

-cOHz XH
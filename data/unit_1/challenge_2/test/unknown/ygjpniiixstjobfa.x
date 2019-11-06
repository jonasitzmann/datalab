From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  9 08:04:30 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59C4TL9009263
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 08:04:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A747F16393C
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 12:04:29 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id F045E162BD1; Sat,  9 Jun 2007 12:00:38 +0000 (GMT)
Date: Sat, 09 Jun 2007 21:58:50 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070609120038.F045E162BD1@lists.samba.org>
Subject: Rev 524: propogate flag changes to all connected nodes in
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
revno: 524
revision-id: tridge@samba.org-20070609115850-l2fqzlhyvl68lzrl
parent: tridge@samba.org-20070609115747-u1bcpt53aa1sff1j
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-09 21:58:50 +1000
message:
  propogate flag changes to all connected nodes
modified:
  include/ctdb.h                 ctdb.h-20061117234101-o3qt14umlg9en8z0-11
  server/ctdb_control.c          ctdb_control.c-20070426122724-j6gkpiofhbwdin63-1
  server/ctdb_monitor.c          ctdb_monitor.c-20070518100625-8jf4ft1mjzmb22ck-1
  server/ctdb_recoverd.c         recoverd.c-20070503213540-bvxuyd9jm1f7ig90-1
  server/ctdb_server.c           ctdb.c-20061127094323-t50f58d65iaao5of-2
  server/ctdb_traverse.c         ctdb_traverse.c-20070503021550-ztfs5rwx8jfm8qqx-1
=== modified file 'include/ctdb.h'
--- a/include/ctdb.h	2007-06-07 06:34:33 +0000
+++ b/include/ctdb.h	2007-06-09 11:58:50 +0000
@@ -93,6 +93,8 @@
 #define CTDB_BROADCAST_ALL    0xF0000002
 /* send a broadcast to all nodes in the current vnn map */
 #define CTDB_BROADCAST_VNNMAP 0xF0000003
+/* send a broadcast to all connected nodes */
+#define CTDB_BROADCAST_CONNECTED 0xF0000004
 
 
 struct event_context;

=== modified file 'server/ctdb_control.c'
--- a/server/ctdb_control.c	2007-06-07 12:06:19 +0000
+++ b/server/ctdb_control.c	2007-06-09 11:58:50 +0000
@@ -433,12 +433,17 @@
 	struct ctdb_control_state *state;
 	size_t len;
 
-	if (((destnode == CTDB_BROADCAST_VNNMAP) || (destnode == CTDB_BROADCAST_VNNMAP)) && !(flags & CTDB_CTRL_FLAG_NOREPLY)) {
+	if (((destnode == CTDB_BROADCAST_VNNMAP) || 
+	     (destnode == CTDB_BROADCAST_ALL) ||
+	     (destnode == CTDB_BROADCAST_CONNECTED)) && 
+	    !(flags & CTDB_CTRL_FLAG_NOREPLY)) {
 		DEBUG(0,("Attempt to broadcast control without NOREPLY\n"));
 		return -1;
 	}
 
-	if (destnode != CTDB_BROADCAST_VNNMAP && destnode != CTDB_BROADCAST_ALL && 
+	if (destnode != CTDB_BROADCAST_VNNMAP && 
+	    destnode != CTDB_BROADCAST_ALL && 
+	    destnode != CTDB_BROADCAST_CONNECTED && 
 	    (!ctdb_validate_vnn(ctdb, destnode) || 
 	     (ctdb->nodes[destnode]->flags & NODE_FLAGS_DISCONNECTED))) {
 		if (!(flags & CTDB_CTRL_FLAG_NOREPLY)) {

=== modified file 'server/ctdb_monitor.c'
--- a/server/ctdb_monitor.c	2007-06-07 12:06:19 +0000
+++ b/server/ctdb_monitor.c	2007-06-09 11:58:50 +0000
@@ -122,7 +122,7 @@
 	data.dsize = sizeof(c);
 
 	/* tell the other nodes that something has changed */
-	ctdb_daemon_send_message(ctdb, CTDB_BROADCAST_VNNMAP,
+	ctdb_daemon_send_message(ctdb, CTDB_BROADCAST_CONNECTED,
 				 CTDB_SRVID_NODE_FLAGS_CHANGED, data);
 
 }
@@ -213,7 +213,7 @@
 	data.dsize = sizeof(c);
 
 	/* tell the other nodes that something has changed */
-	ctdb_daemon_send_message(ctdb, CTDB_BROADCAST_VNNMAP,
+	ctdb_daemon_send_message(ctdb, CTDB_BROADCAST_CONNECTED,
 				 CTDB_SRVID_NODE_FLAGS_CHANGED, data);
 
 	if ((node->flags & NODE_FLAGS_BANNED) && !(old_flags & NODE_FLAGS_BANNED)) {

=== modified file 'server/ctdb_recoverd.c'
--- a/server/ctdb_recoverd.c	2007-06-09 10:13:25 +0000
+++ b/server/ctdb_recoverd.c	2007-06-09 11:58:50 +0000
@@ -392,7 +392,7 @@
 		data.dptr = (uint8_t *)&c;
 		data.dsize = sizeof(c);
 
-		ctdb_send_message(ctdb, CTDB_BROADCAST_VNNMAP,
+		ctdb_send_message(ctdb, CTDB_BROADCAST_CONNECTED,
 				  CTDB_SRVID_NODE_FLAGS_CHANGED, data);
 
 	}

=== modified file 'server/ctdb_server.c'
--- a/server/ctdb_server.c	2007-06-07 12:16:48 +0000
+++ b/server/ctdb_server.c	2007-06-09 11:58:50 +0000
@@ -390,7 +390,8 @@
 /*
   broadcast a packet to all nodes
 */
-static void ctdb_broadcast_packet_all(struct ctdb_context *ctdb, struct ctdb_req_header *hdr)
+static void ctdb_broadcast_packet_all(struct ctdb_context *ctdb, 
+				      struct ctdb_req_header *hdr)
 {
 	int i;
 	for (i=0;i<ctdb->num_nodes;i++) {
@@ -402,7 +403,8 @@
 /*
   broadcast a packet to all nodes in the current vnnmap
 */
-static void ctdb_broadcast_packet_vnnmap(struct ctdb_context *ctdb, struct ctdb_req_header *hdr)
+static void ctdb_broadcast_packet_vnnmap(struct ctdb_context *ctdb, 
+					 struct ctdb_req_header *hdr)
 {
 	int i;
 	for (i=0;i<ctdb->vnn_map->size;i++) {
@@ -412,6 +414,21 @@
 }
 
 /*
+  broadcast a packet to all connected nodes
+*/
+static void ctdb_broadcast_packet_connected(struct ctdb_context *ctdb, 
+					    struct ctdb_req_header *hdr)
+{
+	int i;
+	for (i=0;i<ctdb->num_nodes;i++) {
+		if (!(ctdb->nodes[i]->flags & NODE_FLAGS_DISCONNECTED)) {
+			hdr->destnode = ctdb->nodes[i]->vnn;
+			ctdb_queue_packet(ctdb, hdr);
+		}
+	}
+}
+
+/*
   queue a packet or die
 */
 void ctdb_queue_packet(struct ctdb_context *ctdb, struct ctdb_req_header *hdr)
@@ -425,6 +442,9 @@
 	case CTDB_BROADCAST_VNNMAP:
 		ctdb_broadcast_packet_vnnmap(ctdb, hdr);
 		return;
+	case CTDB_BROADCAST_CONNECTED:
+		ctdb_broadcast_packet_connected(ctdb, hdr);
+		return;
 	}
 
 	ctdb->statistics.node_packets_sent++;

=== modified file 'server/ctdb_traverse.c'
--- a/server/ctdb_traverse.c	2007-06-07 12:06:19 +0000
+++ b/server/ctdb_traverse.c	2007-06-09 11:58:50 +0000
@@ -248,7 +248,8 @@
 	data.dsize = sizeof(r);
 
 	/* tell all the nodes in the cluster to start sending records to this node */
-	ret = ctdb_daemon_send_control(ctdb, CTDB_BROADCAST_VNNMAP, 0, CTDB_CONTROL_TRAVERSE_ALL,
+	ret = ctdb_daemon_send_control(ctdb, CTDB_BROADCAST_VNNMAP, 0, 
+				       CTDB_CONTROL_TRAVERSE_ALL,
 				       0, CTDB_CTRL_FLAG_NOREPLY, data, NULL, NULL);
 	if (ret != 0) {
 		talloc_free(state);

                

:>DaaeB8 it
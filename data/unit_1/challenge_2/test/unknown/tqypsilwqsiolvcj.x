From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 11:39:35 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57FdYhB003954
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 11:39:34 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5B053163838
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 15:39:27 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 7B26E162AEC;
	Thu,  7 Jun 2007 15:39:05 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HwK4n-000780-3W; Thu, 07 Jun 2007 17:39:05 +0200
Received: by intern.SerNet.DE
	id 1HwK4m-0008Oh-SV; Thu, 07 Jun 2007 17:39:04 +0200
Received: by intern.SerNet.DE
	id 1HwK4m-0008Od-JX; Thu, 07 Jun 2007 17:39:04 +0200
Date: Thu, 7 Jun 2007 17:39:04 +0200
From: Michael Adam <ma@sernet.de>
To: samba-technical@lists.samba.org
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
User-Agent: Mutt/1.5.9i
Message-Id: <E1HwK4m-0008Oh-SV@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: jerry@samba.org
Subject: [PATCH] fix RPC_ANONYMOUS_AUTH_TYPE in 3_0_26
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi list, Jerry,

this one gave me some headaches: I could not set
rights with "net rpc rights grant ...".  Got
NT_STATUS_ACCESS_DENIED. I found that in=20
the pipe_user.ut.uid was -1 in _lsa_add_acct_rights.

This lead me up to rpc_server/srv_pipe.c
where I found that the copy_current_user call was
missing (compared to 3_0) under RPC_ANONYMOUS_AUTH_TYPE
in api_pipe_bind_req.

The attached patch fixes my issue.=20

Volker asked me to present the patch to the list first,
because this is critical code.=20

With your approval I would like commit it.

Cheers, Michael

--=20
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 G=F6ttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG G=F6ttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

--KsGdsel6WgEHnImy
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="srv_pipe.diff"

Index: rpc_server/srv_pipe.c
===================================================================
--- rpc_server/srv_pipe.c	(revision 23377)
+++ rpc_server/srv_pipe.c	(working copy)
@@ -1632,11 +1632,18 @@
 
 		case RPC_ANONYMOUS_AUTH_TYPE:
 			/* Unauthenticated bind request. */
+			/* Get the authenticated pipe user from current_user */
+			if (!copy_current_user(&p->pipe_user, &current_user)) {
+				DEBUG(10, ("Could not copy current user\n"));
+				goto err_exit;
+			}
 			/* We're finished - no more packets. */
 			p->auth.auth_type = PIPE_AUTH_TYPE_NONE;
 			/* We must set the pipe auth_level here also. */
 			p->auth.auth_level = PIPE_AUTH_LEVEL_NONE;
 			p->pipe_bound = True;
+			/* The session key was initialized from the SMB
+			 * session in make_internal_rpc_pipe_p */
 			break;
 
 		default:

--KsGdsel6WgEHnImy--

 

 �g/i hAA5V
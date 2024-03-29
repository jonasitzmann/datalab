From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 16:53:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QKrwL9017567
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 16:53:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5AAB61639A4
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 20:53:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 8D499162AF8; Tue, 26 Jun 2007 20:53:05 +0000 (GMT)
Date: Tue, 26 Jun 2007 13:53:03 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@samba.org
Message-ID: <20070626205303.GE10360@samba1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.11
Subject: Changing the vfs set_nt_acl calls to return NTSTATUS.
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Jeremy Allison <jra@samba.org>
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

I wanted to give everyone a heads-up that I'm in the process
of changing the Samba VFS for 3.0.26 to allow set_nt_acl, fset_nt_acl
to return NTSTATUS not simply a BOOl.

I've been investigating some newly observed behaviour with MS-Office
and we need this change to get our ACL mapping correct.

When I commit the change I'll make modifications to all
the modules affected in the modules/ directory, but I won't be
able to test many of these as they require set-ups I don't
have access to (AIX NFSv4 ACLs, AFS ACLs etc.). If your
module is affected by this change please take a look at
the new code and send in patches accordingly for 3.0.26.

Thanks,

	Jeremy.

             

eSoR">o
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 19:44:47 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63NilL9003052
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 19:44:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 73D82163861
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 23:44:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id D16E6162BD0; Tue,  3 Jul 2007 23:44:07 +0000 (GMT)
Date: Tue, 3 Jul 2007 16:44:05 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070703234405.GM7578@samba1>
References: <20070703233402.B254F162B74@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070703233402.B254F162B74@lists.samba.org>
User-Agent: Mutt/1.5.11
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23691 - in branches:
	SAMBA_3_0/source/modules SAMBA_3_0_26/source/modules
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

On Tue, Jul 03, 2007 at 11:34:02PM +0000, idra@samba.org wrote:
> Author: idra
> Date: 2007-07-03 23:34:01 +0000 (Tue, 03 Jul 2007)
> New Revision: 23691
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23691
> 
> Log:
> 
> fix for bug on touching files as described here:
> https://bugzilla.redhat.com/bugzilla/show_bug.cgi?id=243897

Arg. Just a style thing but can you change the
variable name "status" to "ret".

Historically we use "status" for NTSTATUS
and "ret" for an int.

It;s just convention but it makes code easier
to read.

Jeremy.

           

bonuex:l
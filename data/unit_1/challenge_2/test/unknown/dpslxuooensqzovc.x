From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 13:28:58 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CHSwL9029710
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 13:28:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E1949162BDC
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 16:55:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 118E51638C4; Tue, 12 Jun 2007 16:55:08 +0000 (GMT)
Date: Tue, 12 Jun 2007 09:55:03 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070612165503.GJ1305@samba1>
References: <20070612080233.82019162ADF@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070612080233.82019162ADF@lists.samba.org>
User-Agent: Mutt/1.5.11
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23426 - in branches:
	SAMBA_3_0/source/nsswitch SAMBA_3_0_26/source/nsswitch
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org, Jeremy Allison <jra@samba.org>
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

On Tue, Jun 12, 2007 at 08:02:33AM +0000, vlendec@samba.org wrote:
> there, do some reformatting.

Argg. You're just upset I messed with your code :-).

> Jeremy, I think we should also kill the child. It might hang in
> something (an fcntl lock for example) that the next child might run into
> immediately again.

Yes, that was my original idea as well. Jerry is a little more
conservative, but we should probably add this after more testing.

Jeremy.

                   

d1bsVc62ttafluce
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 16 15:00:50 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GJ0nL9018539
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 15:00:49 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7CF7B1638D6
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 19:00:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 3B963162B70; Sat, 16 Jun 2007 18:59:16 +0000 (GMT)
Date: Sat, 16 Jun 2007 11:57:00 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070616185700.GC18339@jeremy2.wintest.samba.local>
References: <20070616114813.C1FAE162ABF@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070616114813.C1FAE162ABF@lists.samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23518 - in branches: SAMBA_3_0/source/lib
	SAMBA_3_0/source/smbd SAMBA_3_0_26/source/lib
	SAMBA_3_0_26/source/smbd
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

On Sat, Jun 16, 2007 at 11:48:13AM +0000, vlendec@samba.org wrote:
> Author: vlendec
> Date: 2007-06-16 11:48:11 +0000 (Sat, 16 Jun 2007)
> New Revision: 23518
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23518
> 
> Log:
> Remove the silly assumption that string_replace requires a pstring.
> 
> Jeremy, I am always very confused about the different length arguments
> in convert_string and friends. Can you take a look at the change in
> string_replace and verify it's ok? Thanks!
> 
> While at it, remove the pstring limit for strhasupper and strhaslower.

Looks very good to me. Should help make several code paths
less brittle against change - thanks !

Jeremy.

    

 utr
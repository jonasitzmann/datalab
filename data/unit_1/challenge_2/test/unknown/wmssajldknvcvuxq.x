From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 17:44:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DLiRL9012859
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 17:44:27 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A004F163920
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 21:44:26 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 5CA92162AD3; Wed, 13 Jun 2007 21:37:04 +0000 (GMT)
Date: Wed, 13 Jun 2007 14:37:02 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070613213702.GB6113@jeremy-laptop>
References: <20070613110433.AAB5C162AD1@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070613110433.AAB5C162AD1@lists.samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23465 - in branches:
	SAMBA_3_0/source/registry SAMBA_3_0_26/source/registry
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

On Wed, Jun 13, 2007 at 11:04:33AM +0000, obnox@samba.org wrote:
> Author: obnox
> Date: 2007-06-13 11:04:31 +0000 (Wed, 13 Jun 2007)
> New Revision: 23465
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23465
> 
> Log:
> There was this diff between reg_printing in 3_0 and 3_0_26:
> before writing to secdesc_buf->sd,
> 3_0 checked secdesc_buf->sd while 3_0_26 checked secdesc_buf->sd_size.
> 
> This patch makes both revisions check _both_ befor writing.
> 
> Jerry / Jeremy : please check if this is correct!

This looks correct to me, thanks.

Jeremy.

  

rer-" >Z ma
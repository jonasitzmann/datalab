From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 21 12:38:09 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LGc9L9026439
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 12:38:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7F28816391C
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 16:38:07 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 4248A162ACD; Thu, 21 Jun 2007 16:37:30 +0000 (GMT)
Date: Thu, 21 Jun 2007 09:37:28 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070621163728.GA31163@samba1>
References: <20070621154120.62243162AEB@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070621154120.62243162AEB@lists.samba.org>
User-Agent: Mutt/1.5.11
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23570 - in
	branches/SAMBA_3_0_25/source/client: .
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

On Thu, Jun 21, 2007 at 03:41:20PM +0000, vlendec@samba.org wrote:
> Author: vlendec
> Date: 2007-06-21 15:41:19 +0000 (Thu, 21 Jun 2007)
> New Revision: 23570
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23570
> 
> Log:
> Merge cli_connect bugfix to 3_0_25.
> 
> Jeremy, I'm surprised to find this in 3_0_25, I thought you had said you
> don't want to see this there. What has changed your mind?

3.0.25b is frozen - this needs to be in 3.0.25c (if we do one).

Jeremy.

                   

n>kbc)
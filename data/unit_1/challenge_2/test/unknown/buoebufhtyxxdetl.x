From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:24:09 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHO8L9012900
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:24:08 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id BFBC6163904
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:24:06 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id CBED5162AE1; Wed, 20 Jun 2007 17:23:33 +0000 (GMT)
Date: Wed, 20 Jun 2007 10:23:25 -0700
From: Jeremy Allison <jra@samba.org>
To: "Christopher R. Hertel" <crh@ubiqx.mn.org>
Message-ID: <20070620172325.GG28880@samba1>
References: <46795965.5060002@ubiqx.mn.org>
	<1182358319.7401.129.camel@localhost.localdomain>
	<20070620165921.GE28880@samba1> <4679610A.1050305@ubiqx.mn.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4679610A.1050305@ubiqx.mn.org>
User-Agent: Mutt/1.5.11
Cc: samba-technical@samba.org
Subject: Re: Preserving NTFS permissions.
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

On Wed, Jun 20, 2007 at 12:16:58PM -0500, Christopher R. Hertel wrote:
> 
> Won't we also need to manage the relationship between the NTFS ACEs and the
> old FAT-style permission bits?

No. These two have nothing to do with each other.

    

Cn05z0Oo00la
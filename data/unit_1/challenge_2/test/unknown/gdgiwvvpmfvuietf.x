From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:00:13 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KH0DL9012588
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:00:13 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 155FA163861
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:00:11 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 3D0B2162AD1; Wed, 20 Jun 2007 16:59:23 +0000 (GMT)
Date: Wed, 20 Jun 2007 09:59:21 -0700
From: Jeremy Allison <jra@samba.org>
To: simo <idra@samba.org>
Message-ID: <20070620165921.GE28880@samba1>
References: <46795965.5060002@ubiqx.mn.org>
	<1182358319.7401.129.camel@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1182358319.7401.129.camel@localhost.localdomain>
User-Agent: Mutt/1.5.11
Cc: "Christopher R. Hertel" <crh@ubiqx.mn.org>, samba-technical@samba.org
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

On Wed, Jun 20, 2007 at 04:51:59PM +0000, simo wrote:
> 
> Not sure we can really do this with the current samba3 VFS
> infrastructure.

Yes we can - there are get/set calls in the VFS.

> In any case storing the ACL in an EA is not the problem,
> the problem is then enforcing them.

Yup :-).

     

aeoan/p;03C
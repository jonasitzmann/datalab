From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:11:28 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHBSL9012782
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:11:28 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1548C162C2C
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:11:26 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 773C3162AE1; Wed, 20 Jun 2007 17:10:49 +0000 (GMT)
Date: Wed, 20 Jun 2007 10:10:46 -0700
From: Jeremy Allison <jra@samba.org>
To: "Christopher R. Hertel" <crh@ubiqx.mn.org>
Message-ID: <20070620171046.GF28880@samba1>
References: <46795965.5060002@ubiqx.mn.org> <20070620165125.GD28880@samba1>
	<46795E70.7050300@ubiqx.mn.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46795E70.7050300@ubiqx.mn.org>
User-Agent: Mutt/1.5.11
Cc: Jeremy Allison <jra@samba.org>, samba-technical@samba.org
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

On Wed, Jun 20, 2007 at 12:05:52PM -0500, Christopher R. Hertel wrote:
> 
> I may be in a position to do or help do the work.  I won't promise yet (you
> know me too well anyway) but it does sound like an interesting problem to solve.
> 
> Would we need only one ACE per file/directory or is it possible to have
> multiple ACEs assigned?  I imagine the latter.

Store/restore the NDR linearization of the ACL. That's the easy part.
Then you have to make it fit with checks on open(), and also obey
the inheritance rules on the ACL in the parent directory. That's the
hard part.

Jeremy.

 

b.Vep:ofttt O p
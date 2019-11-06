From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 19:02:51 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MN2KL9010382
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 19:02:20 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 994C1163851
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 21:02:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 11C77162C3A; Fri, 22 Jun 2007 21:02:27 +0000 (GMT)
Date: Fri, 22 Jun 2007 14:02:12 -0700
From: Jeremy Allison <jra@samba.org>
To: Theodore Tso <tytso@mit.edu>
Message-ID: <20070622210212.GA11851@samba1>
References: <87ejkbbycq.fsf@rho.meyering.net>
	<1182175456.13184.7.camel@kleikamp.austin.ibm.com>
	<87wsy15p5n.fsf@rho.meyering.net>
	<20070622064144.GC17097@thunk.org> <20070622172704.GA10211@samba1>
	<20070622202020.GJ15285@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070622202020.GJ15285@thunk.org>
User-Agent: Mutt/1.5.11
Cc: Dave Kleikamp <shaggy@linux.vnet.ibm.com>, linux-ext4@vger.kernel.org,
   samba-technical@lists.samba.org, Jim Meyering <jim@meyering.net>,
   Jeremy Allison <jra@samba.org>
Subject: Re: avoid leak upon failed realloc
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

On Fri, Jun 22, 2007 at 04:20:20PM -0400, Theodore Tso wrote:
> 
> Hmm.... There are actually several realloc calls in the tdb sources,
> not just the one which Jim pointed out.  If it's better I can just
> simply hack one of my patches to provide a realloc wrapper that deals
> with all of the cases in one fell swoop.

I checked. I think all other realloc uses in tdb are safe.

Jeremy.

          

n ssVml
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 15:24:02 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58JO1hB020266
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 15:24:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 611571639EE
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 19:23:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 19B69162AE9;
	Fri,  8 Jun 2007 19:23:18 +0000 (GMT)
From: simo <idra@samba.org>
To: Jeremy Allison <jra@samba.org>
In-Reply-To: <20070608183451.GB7252@samba1>
References: <DA041B37-7FC6-4390-A3E6-FD881A126592@samba.org>
	<20070608043125.GC3690@jeremy2.wintest.samba.local>
	<20070608043939.GD3690@jeremy2.wintest.samba.local>
	<20070608044922.GE3690@jeremy2.wintest.samba.local>
	<A3550CEA-EC03-4781-BD40-D92321D05419@samba.org>
	<20070608164814.GA6173@jeremy-laptop>
	<BC0802F3-DA74-40F2-B06B-A5A1B2837D86@samba.org>
	<20070608183451.GB7252@samba1>
Content-Type: text/plain
Organization: Samba Team
Date: Fri, 08 Jun 2007 15:23:17 -0400
Message-Id: <1181330597.7961.33.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: [PATCH 1/4] Make sure groups[0] is the effective gid on FreeBSD.
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
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

On Fri, 2007-06-08 at 11:34 -0700, Jeremy Allison wrote:
> On Fri, Jun 08, 2007 at 11:12:39AM -0700, James Peach wrote:
> 
> > OK, I'll do that for SAMBA_3_0 only (at least for now).
> > 
> > >If Darwin is broken after that, then let's push for
> > >them to fix their code.
> > 
> > There is no possibility of that.
> 
> So they've given up on POSIX ?

I wish the Linux folks would wake up from the POSIX insomnia and start
innovating by upgrading the standard.
Not saying Apple did it right, I would like to see at least one RFC
where they state what is _their_ standard reference.

> The current code works according to the POSIX
> standard - what did Apple break ?

I fear more then what we want to know :-)

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

       

hh>tly1
  
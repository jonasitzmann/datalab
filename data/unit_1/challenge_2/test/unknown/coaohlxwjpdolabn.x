From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 14 19:40:20 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ENeKL9027678
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 19:40:20 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 91CA3162C33
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 23:40:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3EBEC162AD2;
	Thu, 14 Jun 2007 23:39:38 +0000 (GMT)
From: simo <idra@samba.org>
To: tridge@samba.org, samba-technical@lists.samba.org
In-Reply-To: <20070614231804.1539616385C@lists.samba.org>
References: <20070614231804.1539616385C@lists.samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Thu, 14 Jun 2007 19:39:38 -0400
Message-Id: <1181864378.16362.13.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Subject: Re: Rev 590: added option to call out to a script for ID mapping
	in tdb2 idmapper in http://samba.org/~tridge/3_0-ctdb
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

On Fri, 2007-06-15 at 07:35 +1000, tridge@samba.org wrote:
> message:
>   added option to call out to a script for ID mapping in tdb2 idmapper


Tridge, this commit triggered my attention so I read this idmap_tdb2
code, and I don't understand why you wrote this.

Since 3.0.25 we already have a cache tdb (see idmap_cache.c) and a
permanent tdb storage.
This backend adds yet another caching tdb, why?

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

      

p fgcq
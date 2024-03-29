From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 07:07:10 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QB79L9009903
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 07:07:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DBEB8163829
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 11:07:06 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id C6094162ABE; Tue, 26 Jun 2007 11:06:25 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18048.62343.367293.380080@samba.org>
Date: Tue, 26 Jun 2007 21:07:51 +1000
To: Jelmer Vernooij <jelmer@samba.org>
In-Reply-To: <20070625201245.GA17946@rhonwyn.vernstok.nl>
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, simo <idra@samba.org>,
   samba-technical@samba.org
Subject: Re: Short HOWTO on using git for Samba development
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: tridge@samba.org
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

Jelmer,

 > For the last half year I've used Bazaar for my Samba code, but while 
 > local performance has improved it's really, really slow to push across the
 > full history of Samba over the wire all the time. Until lazy 
 > repositories/history horizons (being able to push/pull a tree without its 
 > history) land, I'll go back to Subversion for my Samba code.

I've been using bzr for the 3.0-ctdb tree, and found that it works
quite fast as long as you use rspush for pushing, and use rsync for
initial checkouts (using any other local tree for rsync to feed off
for the initial pull).

Cheers, Tridge

          

d/ 
rMmisTDlUg
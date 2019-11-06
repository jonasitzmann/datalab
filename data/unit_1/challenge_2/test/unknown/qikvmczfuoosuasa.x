From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 17:14:12 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PLECL9001620
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 17:14:12 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AC88F163849
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 21:14:09 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 646 seconds by postgrey-1.24 at dp.samba.org;
	Mon, 25 Jun 2007 21:13:53 GMT
Received: from smtp-vbr16.xs4all.nl (smtp-vbr16.xs4all.nl [194.109.24.36])
	by lists.samba.org (Postfix) with ESMTP id 232AF162AD8
	for <samba-technical@samba.org>; Mon, 25 Jun 2007 21:13:53 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr16.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5PL372q095149;
	Mon, 25 Jun 2007 23:03:07 +0200 (CEST)
	(envelope-from jelmer@rhonwyn.vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id B928E10381E;
	Mon, 25 Jun 2007 23:03:06 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id ExEzkhuBAmRp; Mon, 25 Jun 2007 23:03:01 +0200 (CEST)
Received: by rhonwyn.vernstok.nl (Postfix, from userid 1000)
	id E81B810381D; Mon, 25 Jun 2007 23:03:00 +0200 (CEST)
Date: Mon, 25 Jun 2007 23:03:00 +0200
From: Jelmer Vernooij <jelmer@samba.org>
To: Andrew Bartlett <abartlet@samba.org>
Message-ID: <20070625210300.GA21820@rhonwyn.vernstok.nl>
References: <1182421953.13415.14.camel@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1182421953.13415.14.camel@localhost.localdomain>
X-Operating-System: Linux rhonwyn.vernstok.nl 2.6.20-14-server
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by XS4ALL Virus Scanner
Cc: Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
Subject: Re: Progress towards TP6?
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

Hi Andrew,

On Thu, Jun 21, 2007 at 08:32:33PM +1000, Andrew Bartlett wrote:
> I'm very happy with the progress I've made over the past few days, with
> MMC write support nicely capping off the work by metze and others on
> schema.

> The features I would like to see in Samba4 TP6 are:
>  - registry rewrite (or ACLs on the existing registry)
I'm going to push what I have so far back into Subversion, finish the
last few bits of it there and then merge it into the main branch.

Browsing was also on my plate, but I'm not sure when I'll get to that. Before, 
I'd like to merge a couple of other things I have partially (but not
entirely) finished:

 * 4.0-codepage: Move codepage data inside library (may need some discussion)
 * 4.0-dso: More shared library improvements, allowing Samba 4 to work
   with a system-provided ldb.
 * 4.0-elimref: Removes pointer_type_top(unique) where it is still
   remaining
 * 4.0-namedpipe: Adds a separate named pipe API for Samba 4
 * 4.0-nestedpidl: pidl support for nested structs/unions
 * 4.0-portstring: Converts all port ints to service names
 * 4.0-regwrite, of course
 * 4.0-python: Embeds python, rewrite of provisioning in Python
 * 4.0-reduceparam: Remove some unused parameters
 * 4.0-socket-refactor: Simplifies the socket code a bit, initial 
       work on support for netbios named pipes as part of the socket
	   subsystem
 * 4.0-spoolss: Spoolss tests

Cheers,

Jelmer

-- 
Jelmer Vernooij <jelmer@samba.org> - http://jelmer.vernstok.nl/

 

D 3<.M
aKP�2=wbs
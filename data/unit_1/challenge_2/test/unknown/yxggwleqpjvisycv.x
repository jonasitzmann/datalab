From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 16:13:49 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PKDmL9001007
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 16:13:48 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0F17F163829
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 20:13:46 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=3.8 tests=AWL, BAYES_50, FORGED_RCVD_HELO,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from smtp-vbr7.xs4all.nl (smtp-vbr7.xs4all.nl [194.109.24.27])
	by lists.samba.org (Postfix) with ESMTP id 7F982163855;
	Mon, 25 Jun 2007 20:13:27 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr7.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5PKCqvI037780;
	Mon, 25 Jun 2007 22:12:59 +0200 (CEST)
	(envelope-from jelmer@rhonwyn.vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id B01D710381E;
	Mon, 25 Jun 2007 22:12:51 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id Qfe6DnaofYJj; Mon, 25 Jun 2007 22:12:45 +0200 (CEST)
Received: by rhonwyn.vernstok.nl (Postfix, from userid 1000)
	id E12D110381D; Mon, 25 Jun 2007 22:12:45 +0200 (CEST)
Date: Mon, 25 Jun 2007 22:12:45 +0200
From: Jelmer Vernooij <jelmer@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070625201245.GA17946@rhonwyn.vernstok.nl>
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <467FE2A8.70602@samba.org>
X-Operating-System: Linux rhonwyn.vernstok.nl 2.6.20-14-server
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by XS4ALL Virus Scanner
Cc: simo <idra@samba.org>, samba-technical@samba.org
Subject: Re: Short HOWTO on using git for Samba development
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

On Mon, Jun 25, 2007 at 10:43:36AM -0500, Gerald (Jerry) Carter wrote:
> Alan DeKok wrote:
> >   I've used mercurial in a number of projects.  It's 
> > much better than anything else I've used, and the
> > repositories are smaller than git, too!.  It's simple,
> > easy to use, and the tool just doesn't get in the way.
> The main thing that won me over to git was the git-svn
> plugin.  I tried using Jelmer's bzr-svn plugin but never
> got things going just right.  But git-svn just worked
> out for the box. The reason why this is important to me
> is that it allows for experimenting with git without
> changing any samba.org infrastructure.  The git-svnimport
> went smooth as well so these two are known quantities to me.

> I assume that mercurial has something similar but a
> quick search doesn't turn anything up.  Have you got
> any pointers for me?
Mercurial doesn't have anything as complete as bzr-svn yet. Bazaar and Mercurial
are very different from Git in that they use strings (revision ids / file ids) 
to define the identity of revisions and files (and their history). Git defines 
a tree or files' identity by just a hash of their contents (excluding their
history). 

This has the advantage for git that if you import the same tree by
different means (two people import a tarball independently), the tree
will have be considered the same by git and it won't worry about
history. Bazaar or mercurial will consider the history of the trees as
well and this has the consequence that tools like bzr-svn have to work
on the full history (for now) and thus are much more complex than
git-svn.

However, this model also has the disadvantage that git isn't able to store 
rename information. All it has is a best guess as to which file was renamed
to which based on the contents of those files - and this can have
consequences for merges. Other disadvantages are
disambiguouty over the history of a tree and slow (and non-ambiguous?) 
performance of annotation.

I really think Bazaar has the best approach of the various DVCS systems.
They are also the (only?) one that focussed on correctness of model
first rather than speed and that's really breaking them up at the
moment.

For the last half year I've used Bazaar for my Samba code, but while 
local performance has improved it's really, really slow to push across the
full history of Samba over the wire all the time. Until lazy 
repositories/history horizons (being able to push/pull a tree without its 
history) land, I'll go back to Subversion for my Samba code.

Cheers,

Jelmer

P.S. I'm a VCS n00b, please point out errors.

-- 
Jelmer Vernooij <jelmer@samba.org> - http://jelmer.vernstok.nl/



=i4edl"t
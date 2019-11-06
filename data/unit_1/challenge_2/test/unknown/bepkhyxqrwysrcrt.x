From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 07:20:56 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QBKsL9010039
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 07:20:54 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 14DE9162BD8
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 11:20:51 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 343 seconds by postgrey-1.24 at dp.samba.org;
	Tue, 26 Jun 2007 11:20:16 GMT
Received: from smtp-vbr2.xs4all.nl (smtp-vbr2.xs4all.nl [194.109.24.22])
	by lists.samba.org (Postfix) with ESMTP id 3F5F5162AC0;
	Tue, 26 Jun 2007 11:20:16 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr2.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5QBJxTY047678;
	Tue, 26 Jun 2007 13:20:04 +0200 (CEST)
	(envelope-from jelmer@rhonwyn.vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id ACF2110381E;
	Tue, 26 Jun 2007 13:19:58 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id 3tXix0C63XzB; Tue, 26 Jun 2007 13:19:52 +0200 (CEST)
Received: by rhonwyn.vernstok.nl (Postfix, from userid 1000)
	id 11A7F10381D; Tue, 26 Jun 2007 13:19:51 +0200 (CEST)
Date: Tue, 26 Jun 2007 13:19:51 +0200
From: Jelmer Vernooij <jelmer@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070626111951.GA7333@rhonwyn.vernstok.nl>
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
	<468032B6.6010404@samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <468032B6.6010404@samba.org>
X-Operating-System: Linux rhonwyn.vernstok.nl 2.6.20-14-server
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Virus-Scanned: by XS4ALL Virus Scanner
Cc: simo <idra@samba.org>, samba-technical@samba.org
Subject: Re: Comparision of Git & Bzr [was Re: Short HOWTO on using git for
	Samba development]
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

On Mon, Jun 25, 2007 at 04:25:10PM -0500, Gerald (Jerry) Carter wrote:
> Jelmer Vernooij wrote:
> > I really think Bazaar has the best approach of the 
> > various DVCS systems. They are also the (only?) one that
> > focussed on correctness of model first rather than speed
> > and that's really breaking them up at the moment.
> Other than tracking renames, what else do you mean by
> "correctness".  I haven't followed all the DSCM bake-offs
> and debates.
I think the Bazaar model is a bit easier to understand than the git
one, especially for people coming from (for example) Subversion. The
UI is also much nicer. For example, there's no need to worry about sha1s as a
regular user and the commands make a little bit more sense. It's usable 
easily in a centralized fashion. 

Git's data format and representation are intermixed - there's no way
of upgrading the repository format without changing the revision ids,
as they are checksums tied to the format. Bazaar has infrastructure
for upgrading to newer formats and thus can support things like nested
trees in the future without breaking everybody's existing branches. 

Git is really fast and efficient at what it is supposed to do: merge between
and store snapshots of code on POSIX systems. It does not aim to do
more than that; for example, win32 will be tricky to get fast because it 
relies on platform-specific features and its heavy integration with
the current data format means it's hard to add new features such as nested 
trees. Bazaar is trying to be more generic.

> > For the last half year I've used Bazaar for my Samba 
> > code, but while  local performance has improved it's really,
> > really slow to push across the full history of Samba over the
> > wire all the time. Until lazy repositories/history horizons
> > (being able to push/pull a tree without its history) land,
> > I'll go back to Subversion for my Samba code.
> I truly like bzr as a project.  I do however, find the
> branch checkouts in git much more intuitive and having
> all branches in < 100M is a huge deal for me.  I haven't
> played with bzr's smart server to compare it with the
> git-daemon but the latter seems pretty snappy.
bzr's smart server improves performance significantly, especially for 
high-latency connections. The fact that all of Samba's history has to 
be transmitted makes that its still slow.

> The things I like about git are:

> * git-svnimport and git-svn (for now)
> * fast-forwards and rebasing branches
I've never really understood what's so nice about fast-forwards or
rebasing. What's so useful about it?

> * speed
> * disk and RAM footprint
Yeah, I have to agree with these. The speed and RAM usage of git are 

> Questions about bzr are

> * Will svn2bzr.py actually work on the Samba sv repo now ?
Not sure about svn2bzr.py, but svn-import (similar command from
bzr-svn) does. 

> * What would the resulting size be?
I think it was about half the size of the Samba Subversion repository
last time I tried it.  Obviously, it would be a lot less when lazy 
repositories would be supported.

> * What is the status of bzr repositories and cheap branching?
It's high on the list for the summer. Most of the current focus is on
performance.

"bzr switch" changes the branch that is used by the current working
tree, much in the way you can do so with git. It doesn't change
directory or anything.

Cheers,

Jelmer

-- 
Jelmer Vernooij <jelmer@samba.org> - http://jelmer.vernstok.nl/
 23:41:21 up 78 days, 22:32,  1 user,  load average: 1.34, 0.93, 0.56

    

 g+"o<0e
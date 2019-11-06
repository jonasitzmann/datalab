From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 10:27:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QERwL9012017
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 10:27:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7619716392E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 14:27:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 20903162ACF;
	Tue, 26 Jun 2007 14:27:08 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id B23952F20E;
	Tue, 26 Jun 2007 09:27:07 -0500 (CDT)
Message-ID: <4681223B.9050203@samba.org>
Date: Tue, 26 Jun 2007 09:27:07 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Jelmer Vernooij <jelmer@samba.org>
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
	<468032B6.6010404@samba.org>
	<20070626111951.GA7333@rhonwyn.vernstok.nl>
In-Reply-To: <20070626111951.GA7333@rhonwyn.vernstok.nl>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Jelmer Vernooij wrote:

> On Mon, Jun 25, 2007 at 04:25:10PM -0500, Gerald (Jerry) Carter wrote:
>>
>> Other than tracking renames, what else do you mean by
>> "correctness".  I haven't followed all the DSCM bake-offs
>> and debates.
>
> I think the Bazaar model is a bit easier to understand 
> than the git one,  especially for people coming from (for
> example) Subversion. The UI is also much nicer. For example,
> there's no need to worry about sha1s as a regular user
> and the commands make a little bit more sense. It's usable
> easily in a centralized fashion.

Agreed, but I can live with this.

> Git's data format and representation are intermixed - 
> there's no way of upgrading the repository format without
> changing the revision ids, as they are checksums tied to
> the format. Bazaar has infrastructure for upgrading to
> newer formats and thus can support things like nested trees
> in the future without breaking everybody's existing branches.

Hmmm...I'll have to think about this.  It's a good point.

> Git is really fast and efficient at what it is supposed 
> to do: merge between and store snapshots of code on POSIX systems.
> It does not aim to do more than that; for example, win32 will
> be tricky to get fast because it relies on platform-specific
> features and its heavy integration with the current
> data format means it's hard to add new features such as
> nested trees. Bazaar is trying to be more generic.

I mentioned this before but I'm curious, do people
consider win32 support a requirement for our SCM?

>> The things I like about git are:
> 
>> * git-svnimport and git-svn (for now)
>> * fast-forwards and rebasing branches
>
> I've never really understood what's so nice about 
> fast-forwards or rebasing. What's so useful about it?

Maybe this is just a nice thing currently working with
git-svn but rebasing keeps the hist in the svn tree linear
and conceptually only maintaining a branch point where it
really matters.

>> Questions about bzr are
> 
>> * Will svn2bzr.py actually work on the Samba sv repo now ?
> Not sure about svn2bzr.py, but svn-import (similar command from
> bzr-svn) does.

Cool.

>> * What would the resulting size be?
> 
> I think it was about half the size of the Samba Subversion 
> repository last time I tried it.  Obviously, it would be a
> lot less when lazy repositories would be supported.

Really ?  Does the revision sharing in a repository gain
you that much? My SAMBA_4_0.bzr diff/patch mirror from svn is
312MB alone.  And the entire Samba svn repo is only about
550MB.

>> * What is the status of bzr repositories and cheap 
>>   branching?
> 
> It's high on the list for the summer. Most of the current 
> focus is on performance.
> 
> "bzr switch" changes the branch that is used by the 
> current working tree, much in the way you can do so with git.
> It doesn't change directory or anything.

Help me to understand something about repositories.  The way
I read things, "bzr init-repo" just gives me a way of sharing
revision history between branches but does not provide a way
to do the equivalent of "git-clone" where I get the entire
repo and branches.  I can only "bzr clone" a single branch
at a time.

So a repo is a nice for a single developer or a shared
repository where people do checkouts, but not as a means of
publicaly sharing branches in a project.

Am I right?






cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGgSI7IR7qMdg1EfYRAoUkAJ9e/fCjEypBvk/XDgXgu68x116/+QCgrbB8
82P5BV6mKdYDOzZqM/4gdaM=
=O5id
-----END PGP SIGNATURE-----

                   

ezooet
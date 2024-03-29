From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 13:20:16 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QHKGL9013987
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 13:20:16 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id ADC4916396F
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 17:20:13 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from smtp-vbr8.xs4all.nl (smtp-vbr8.xs4all.nl [194.109.24.28])
	by lists.samba.org (Postfix) with ESMTP id 6EC68162AF8;
	Tue, 26 Jun 2007 17:19:34 +0000 (GMT)
Received: from rhonwyn.vernstok.nl (a62-251-123-16.adsl.xs4all.nl
	[62.251.123.16])
	by smtp-vbr8.xs4all.nl (8.13.8/8.13.8) with ESMTP id l5QHJDGL088767;
	Tue, 26 Jun 2007 19:19:18 +0200 (CEST)
	(envelope-from jelmer@rhonwyn.vernstok.nl)
Received: from localhost (localhost [127.0.0.1])
	by rhonwyn.vernstok.nl (Postfix) with ESMTP id 54DA610381E;
	Tue, 26 Jun 2007 19:19:12 +0200 (CEST)
Received: from rhonwyn.vernstok.nl ([127.0.0.1])
	by localhost (rhonwyn.vernstok.nl [127.0.0.1]) (amavisd-new, port 10024)
	with SMTP id ak04zIqGX50U; Tue, 26 Jun 2007 19:18:58 +0200 (CEST)
Received: by rhonwyn.vernstok.nl (Postfix, from userid 1000)
	id 8D11F10381D; Tue, 26 Jun 2007 19:18:58 +0200 (CEST)
Date: Tue, 26 Jun 2007 19:18:58 +0200
From: Jelmer Vernooij <jelmer@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070626171858.GA29529@rhonwyn.vernstok.nl>
References: <467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
	<468032B6.6010404@samba.org>
	<20070626111951.GA7333@rhonwyn.vernstok.nl>
	<4681223B.9050203@samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46812A3B.6090407@samba.org> <4681223B.9050203@samba.org>
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
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5QHKGL9013987

On Tue, Jun 26, 2007 at 09:27:07AM -0500, Gerald (Jerry) Carter wrote:
> Jelmer Vernooij wrote:
> I mentioned this before but I'm curious, do people
> consider win32 support a requirement for our SCM?
No, I don't think it is. People with Windows already have a SMB
server. Also, git does work on Windows, it just can't be as fast as it
is on Linux.

> >> * What would the resulting size be?
> > I think it was about half the size of the Samba Subversion 
> > repository last time I tried it.  Obviously, it would be a
> > lot less when lazy repositories would be supported.
> Really ?  Does the revision sharing in a repository gain
> you that much? My SAMBA_4_0.bzr diff/patch mirror from svn is
> 312MB alone.  And the entire Samba svn repo is only about
> 550MB.
That's odd, I recall my just-Samba 4 import into bzr was around 200 Mb
last I tried (but that's a while ago now).

> Help me to understand something about repositories.  The way
> I read things, "bzr init-repo" just gives me a way of sharing
> revision history between branches but does not provide a way
> to do the equivalent of "git-clone" where I get the entire
> repo and branches.  I can only "bzr clone" a single branch
> at a time.

> So a repo is a nice for a single developer or a shared
> repository where people do checkouts, but not as a means of
> publicaly sharing branches in a project.

> Am I right?
Right. Shared repositories are just a storage optimization. They're
not a UI thing (yet). I've heard people talking about allowing you to
push repositories and all the branches in them at once, but haven't
seen any actual implementations.

On Tue, Jun 26, 2007 at 10:01:15AM -0500, Gerald (Jerry) Carter wrote:
> Jelmer Vernooij wrote:
> I would be very concerned about scaling a bzr repo with our
> existing number of svn commits.  Granted that we coud drop
> the svn history and that a DSCM system may not see the same
> high number f commits as the "svn-commit-to-save" pattern
> we have here, but long term this could be a real problem.
Bazaar is working on getting better performance, it's just not there
yet. It will work with large trees in the future, just not yet. I also
don't think we should adopt it (even by truncating history) until it
can handle the larger histories.

> I don't want to start out with performance issues.
> And I don't see rsync as a valid means of initial branching.
> bzr should stand on its own without alternative means of
> obtaining the initial tree.
Agreed.

Cheers,

Jelmer

-- 
Jelmer Vernooij <jelmer@samba.org> - http://jelmer.vernstok.nl/

     

"0tt3thA -o
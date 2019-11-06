From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 11:35:10 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PFZAL9030473
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 11:35:10 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 112F6162C3C
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 15:35:07 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id BF0F4162AD6;
	Mon, 25 Jun 2007 15:34:07 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 5B2E12F030;
	Mon, 25 Jun 2007 10:34:07 -0500 (CDT)
Message-ID: <467FE06F.5070308@samba.org>
Date: Mon, 25 Jun 2007 10:34:07 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <467EF15A.4080701@samba.org>	
	<1182729701.2895.8.camel@localhost.localdomain>	
	<467FCAE7.3050306@samba.org>	
	<1182780800.2895.22.camel@localhost.localdomain>	
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
In-Reply-To: <1182782825.2895.28.camel@localhost.localdomain>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

simo wrote:

>> Using a DSCM forces individual developers to pull others
>> trees (which can be automated via cron jobs).  But by the
>> time the patches end up in the stable tree, they should
>> be well tested and ready to go.
> 
> The only downside of this is forgetting, missing parts.
> Your local tree works, but the patch you send does not as 
> some of the premises are missing. But I guess this happen
> seldom enough it is not a good reason to hold up using
> a possibly better model.

I think in some ways that this encourages looser couplings
which is a good thing.  But if you are working closely
with another developer, you just pull changes from each
other's tree.  The patch is finally proposed for upstream
merge when it is "released" by the developers.  Meaning that
you or who ever your are working with have tested it
in the upstream tree and all checks out ok.

I'll point out that with more of the maintainer model, I
believe you'll see less upstream churn that will break
local work.  Upstream will change of course, but not
on the daily basis it has now.  And the DSCM model forces
for public discussion of changes to be merged as all
merge requests must go through the public mailing lists.

>> The other advantage of using something like git is that
>> branch maintenance is reduced as individuals no longer
>> have to checkin to multiple branches.  The SAMBA_3_0_*
>> branches we have in svn will simply go away.  Of course,
>> the patch release model doesn't go away, but the responsibility
>> shifts.
> 
> Uhmm how this is true? I mean, in some case the code need to be
> different between 2 trees, who will adjust the patches 
> to apply cleanly ?

It's not automatic of course and requires coordination.
But the upstream trees become more stable due to the lack of
need for an experiemental upstream branch such as SAMBA_3_0.
In some ways, the upstream trees should always be stable.
Patches for a release will have to be backported where as
most of the time now, major portions of the SAMBA_3_0
and SAMBA_3_0_26 are identical and the multiple checkins
is just a "svn diff && (cd ,../other/tree && patch -p0)"

>>> This work flow model is ok if a few people work on a 
>>> very isolated part of a tree, or on some experimental
>>> features, but if you need to collaborate it may
>>> make things more annoying.
>> I don't see any change here.  Instead of "svn commit && svn up",
>> you have "git commit && git pull".  This would also allow for
>> more of a maintainer model than we have now as well.
> 
> Ahh so more people can commit on the same tree?
> I didn't understand this, if that works then I guess we 
> could end up with the best mix between centralized and
> distributed development, sounds interesting.

See comments above.  I really would like to see us move
away from the central repository and break the distinction
between those with svn commit access and those without.

>> Anyways, I'm not proposing any changes at this time.  I plan
>> to spend the next couple ofmonths using git for daily
>> development.  If things go well, there's a string possibility
>> I will bring it up for discussion around the CIFS workshop
>> in Sept.
> 
> Ok, but to really test the D in DSCM we need to be more 
> than one and test how the exchange of patches between
> individual trees works. I will try it as well.


Thanks.



cheers, jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGf+BuIR7qMdg1EfYRAtD8AKC7/vgx0qJQ/d2daUS1pjP2akK+DwCg3gEl
bLOGO5Q3Mr8eSdoC0DrzDMM=
=YU1a
-----END PGP SIGNATURE-----

       

0=AnD(t
O9MK
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 07:46:11 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QBkBL9010261
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 07:46:11 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A3E33162C3C
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 11:46:08 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 79FF7162AC0;
	Tue, 26 Jun 2007 11:45:41 +0000 (GMT)
From: simo <idra@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
In-Reply-To: <46809CB4.4050607@samba.org>
References: <200706260004.03003.kai@samba.org>  <46809CB4.4050607@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Tue, 26 Jun 2007 07:45:41 -0400
Message-Id: <1182858341.2895.59.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: Samba technical mailing list <samba-technical@samba.org>
Subject: Re: [Patch]Handle git/git-svn checkouts in mkversion.sh
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

On Mon, 2007-06-25 at 23:57 -0500, Gerald (Jerry) Carter wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Kai,
> 
> > Hi folks,
> > 
> > Now that Jerry set up a git repository, I've fixed mkversion.sh 
> > to give a  useful revision number. As the full sha-1 committish is
> > a bit long, I've  settled for the first eight hex numbers of
> > the committish.
> > 
> > Comments?
> 
> +1 from me.    I show the following revision in my local branch
> 
>   Samba("3.0.27pre1-GIT-0bd4d99e-[SVN-SAMBA_3_0@23601]")
> 
> I have noticed that mkversion.sh is newer in SAMBA_4_0 so
> I'll merge it across nice you check this in.

I guess there is no guarantee that the half hash you get from GIT will
me always greater then the previous one. So in this case it is probably
more advisable to add the date. The version is useful only if ti gives
you a way to guess where in time it has been taken. A random hash makes
it only unique but it is not otherwise useful imo.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

            

Bwu'ajITsim@al
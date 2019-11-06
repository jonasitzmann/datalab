From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 20:02:40 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5702ehB027715
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 20:02:40 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 73FF1163849
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 00:02:34 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,NO_RELAYS 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 56787162AF4; Thu,  7 Jun 2007 00:01:56 +0000 (GMT)
Date: Wed, 6 Jun 2007 17:01:54 -0700
From: Jeremy Allison <jra@samba.org>
To: Taj Khattra <taj.khattra@gmail.com>
Message-ID: <20070607000154.GC2629@samba1>
References: <57a21f730704191330h6acfd183mb75037683b7d0f3a@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57a21f730704191330h6acfd183mb75037683b7d0f3a@mail.gmail.com>
User-Agent: Mutt/1.5.11
Cc: samba-technical@lists.samba.org
Subject: Re: typo in tdb_firstkey?
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Jeremy Allison <jra@samba.org>
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

On Thu, Apr 19, 2007 at 01:30:04PM -0700, Taj Khattra wrote:
> hi,
> 
> re: samba-4_0 revision r22117
> 
> should the F_RDLCK in tdb_firstkey():
> 
>    tdb->travlocks.lock_rw = F_RDLCK;
> 
> be F_WRLCK - the subsequent unlock in firstkey, and the lock/unlock in
> nextkey all use F_WRLCK?
> 
> in any case, i was wondering why we take a write-lock on a hash chain
> in firstkey/nextkey instead of a read-lock?  (it's only held briefly,
> so i don't know if it matters in practice)

Taj,

	I think you are correct on this. I've just fixed traverse
to use travlocks.lock_rw consistently. Please svn checkout and
review the change.

Thanks a *LOT* for noticing this,

Jeremy.

             

Cdb5A8FXlont,a0 
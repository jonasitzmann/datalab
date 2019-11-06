From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 13:23:14 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62HNEL9016697
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 13:23:14 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9B0C3163869
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 17:23:10 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 79EBE162AD8;
	Mon,  2 Jul 2007 17:22:50 +0000 (GMT)
From: simo <idra@samba.org>
To: Jeremy Allison <jra@samba.org>
In-Reply-To: <20070702171936.GD6922@samba1>
References: <34BD34321AE0604294FA03A2081207A15278F4@sjcex03.DataDomain.com>
	<200706280554.29669.kernel@kukkukk.com> <20070702164154.GA5461@samba1>
	<1183395054.2895.276.camel@localhost.localdomain>
	<20070702165321.GA6922@samba1>
	<1183396194.2895.281.camel@localhost.localdomain>
	<20070702171936.GD6922@samba1>
Content-Type: text/plain
Organization: Samba Team
Date: Mon, 02 Jul 2007 17:22:50 +0000
Message-Id: <1183396970.2895.284.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: Samba Technical <samba-technical@samba.org>
Subject: Re: [Samba] Support for multiple file streams?
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

On Mon, 2007-07-02 at 10:19 -0700, Jeremy Allison wrote:
> On Mon, Jul 02, 2007 at 05:09:54PM +0000, simo wrote:
> > 
> > The biggest problem is leaking streams from one user to another:
> > userA delete fileA with streamA
> > userB create fileB
> > accidentally fileB inode == fileA
> > userB has streamA data in fileB
> 
> That's not an in Samba issue - on delete
> of fileA we also delete the stream directory
> containing the inode name. Could be a problem
> with UNIX tool access though. We need a generation
> count or something similar....

Yes I was point out the problem of manipulating files from the user
side, not the samba side.
Keeping the same ACL on the streams that you have on the original files
may mitigate the problem a lot though.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

              

eoqziu1kRVln
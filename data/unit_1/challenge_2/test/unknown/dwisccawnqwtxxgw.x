From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 12:54:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62Gs6L9016338
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 12:54:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4F3DE162AD8
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 16:54:02 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 9C6D6162AD8; Mon,  2 Jul 2007 16:53:23 +0000 (GMT)
Date: Mon, 2 Jul 2007 09:53:21 -0700
From: Jeremy Allison <jra@samba.org>
To: simo <idra@samba.org>
Message-ID: <20070702165321.GA6922@samba1>
References: <34BD34321AE0604294FA03A2081207A15278F4@sjcex03.DataDomain.com>
	<200706280554.29669.kernel@kukkukk.com>
	<20070702164154.GA5461@samba1>
	<1183395054.2895.276.camel@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1183395054.2895.276.camel@localhost.localdomain>
User-Agent: Mutt/1.5.11
Cc: Jeremy Allison <jra@samba.org>,
   Samba Technical <samba-technical@samba.org>
Subject: Re: [Samba] Support for multiple file streams?
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

On Mon, Jul 02, 2007 at 04:50:54PM +0000, simo wrote:

> I was thinking if it couldn't be better to use just one directory in the
> root of the filesystem and within it create a directory for each file
> where we want to write an alternate stream. The idea would be to use the
> files inode as the dir name 0x123456 and inside it the stream name as
> file name for the stream. This way renaming or moving the file wouldn't
> loose the streams. Does it make sense?

That's a pretty good idea - we'd have to do some recursing up the
tree to find the filesystem root of each share - maybe we could
do this at share connection time....

Jeremy.

        

	Itce0d
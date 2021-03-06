From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 12:51:37 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62GpbL9016314
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 12:51:37 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 691B91638F9
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 16:51:33 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 050B3162AD8;
	Mon,  2 Jul 2007 16:50:55 +0000 (GMT)
From: simo <idra@samba.org>
To: Jeremy Allison <jra@samba.org>
In-Reply-To: <20070702164154.GA5461@samba1>
References: <34BD34321AE0604294FA03A2081207A15278F4@sjcex03.DataDomain.com>
	<200706280554.29669.kernel@kukkukk.com> <20070702164154.GA5461@samba1>
Content-Type: text/plain
Organization: Samba Team
Date: Mon, 02 Jul 2007 16:50:54 +0000
Message-Id: <1183395054.2895.276.camel@localhost.localdomain>
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

[moved to technical]

On Mon, 2007-07-02 at 09:41 -0700, Jeremy Allison wrote:

> I really dislike mapping streams into EA's - I think in
> the long run this will be a disaster.

I concur, 4k EAs will be filled up with junk and will steal precious
space from other more important apps (SELinux ?).

>  I'd rather use
> a .streams: directory and store streams as directories
> within it. It sucks for plain POSIX but will give correct
> (seekable + large size) semantics for Windows clients.

I was thinking if it couldn't be better to use just one directory in the
root of the filesystem and within it create a directory for each file
where we want to write an alternate stream. The idea would be to use the
files inode as the dir name 0x123456 and inside it the stream name as
file name for the stream. This way renaming or moving the file wouldn't
loose the streams. Does it make sense?

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

                

:ScB5	Bsul/0
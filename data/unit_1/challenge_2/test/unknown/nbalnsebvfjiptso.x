From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 13:39:40 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62HdeL9016864
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 13:39:40 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A29F2162C19
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 17:39:36 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E5F99162AD8;
	Mon,  2 Jul 2007 17:39:08 +0000 (GMT)
From: simo <idra@samba.org>
To: James Peach <jpeach@samba.org>
In-Reply-To: <6ACC5C79-FA74-4BD8-9624-CA120D4362A2@samba.org>
References: <34BD34321AE0604294FA03A2081207A15278F4@sjcex03.DataDomain.com>
	<200706280554.29669.kernel@kukkukk.com> <20070702164154.GA5461@samba1>
	<1183395054.2895.276.camel@localhost.localdomain>
	<20070702165321.GA6922@samba1>
	<6ACC5C79-FA74-4BD8-9624-CA120D4362A2@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Mon, 02 Jul 2007 13:39:08 -0400
Message-Id: <1183397948.2895.290.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: Jeremy Allison <jra@samba.org>,
   Samba Technical <samba-technical@samba.org>
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

On Mon, 2007-07-02 at 10:27 -0700, James Peach wrote:
> On Jul 2, 2007, at 9:53 AM, Jeremy Allison wrote:
> 
> > On Mon, Jul 02, 2007 at 04:50:54PM +0000, simo wrote:
> >
> >> I was thinking if it couldn't be better to use just one directory  
> >> in the
> >> root of the filesystem and within it create a directory for each file
> >> where we want to write an alternate stream. The idea would be to  
> >> use the
> >> files inode as the dir name 0x123456 and inside it the stream name as
> >> file name for the stream. This way renaming or moving the file  
> >> wouldn't
> >> loose the streams. Does it make sense?
> 
> Ted T'so presented a very similar streams implementation at  
> linux.conf.au in 2006:
> 	http://www.linux.org.au/conf/2006/abstract1f24.html?id=384
> 
> > That's a pretty good idea - we'd have to do some recursing up the
> > tree to find the filesystem root of each share - maybe we could
> > do this at share connection time....
> 
> A variation on this would be to store the streams metadata in a Samba- 
> private EA. This would give you something analogous to the streaminfo  
> data link back to the hidden streams data files. You would be able to  
> quickly determine the stream status for a file and you'd have a lot of  
> flexibility in evolving the implementation. You'd also be able to  
> reconstruct the EA metadata from the hidden streams data (slowly), and  
> verify the hidden streams data from the EA (quickly). If you  
> standardised the EA format, you would be able to add non-Samba tools  
> to manipulate streams.

Using the EA to store a file path to the /.streams dir would be very
good, that would avoid the unix side delete/create problem as we have a
way to validate it is the right stream.
Sounds a nice mix :-)

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

           

=r oq   te:tcyl 
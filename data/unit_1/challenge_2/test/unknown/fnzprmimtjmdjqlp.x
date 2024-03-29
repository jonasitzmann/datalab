From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 16 15:06:29 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5GJ6TL9018609
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 15:06:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1680F163956
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 16 Jun 2007 19:06:28 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 0BF90162B70; Sat, 16 Jun 2007 19:05:06 +0000 (GMT)
Date: Sat, 16 Jun 2007 12:02:50 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070616190250.GD18339@jeremy2.wintest.samba.local>
References: <20070616180745.8C200162AD7@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070616180745.8C200162AD7@lists.samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23522 - in branches/SAMBA_3_0/source/smbd: .
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org, Jeremy Allison <jra@samba.org>
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

On Sat, Jun 16, 2007 at 06:07:45PM +0000, vlendec@samba.org wrote:
> Author: vlendec
> Date: 2007-06-16 18:07:44 +0000 (Sat, 16 Jun 2007)
> New Revision: 23522
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23522
> 
> Log:
> Save us a kilobyte stack space in a hot code path: I can't see a reason
> why check_path_syntax should not be able to run in-line. The destination
> pointer either walks side by side with the source pointer or is
> decremented. So as far as I can see s>=d is true throughout the whole
> routine.
> 
> Jeremy, I'm checking this only into 3_0 for now. Please review and ack
> or directly merge this to 3_0_26.

Wow - you're on a roll today :-).

The key was noticing that s>=d is always true. Well
done for spotting that. Very sharp change. I might
add a comment in the code that explains this, so we
don't ever break that assumption going forward.

I'll merge this for 3.0.26 - great change.

I wonder what effect this has on micro-benchamarks ?

Jeremy.

                 

3 e 1Pstd nM
nO>
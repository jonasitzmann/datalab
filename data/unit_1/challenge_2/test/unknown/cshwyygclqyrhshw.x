From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 18:38:47 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58MckL9002443
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 18:38:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id B22401639B5
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 22:38:46 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.8 tests=AWL,BAYES_00,NO_RELAYS 
	autolearn=ham version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 54B00162AE8; Fri,  8 Jun 2007 22:38:24 +0000 (GMT)
Date: Fri, 8 Jun 2007 15:37:41 -0700
From: Jeremy Allison <jra@samba.org>
To: samba-technical@lists.samba.org
Message-ID: <20070608223741.GG7252@samba1>
References: <20070608222556.CBDBE163842@lists.samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070608222556.CBDBE163842@lists.samba.org>
User-Agent: Mutt/1.5.11
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23393 - in branches/SAMBA_3_0/source: lib
	smbd
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

On Fri, Jun 08, 2007 at 10:25:56PM +0000, jpeach@samba.org wrote:
> Author: jpeach
> Date: 2007-06-08 22:25:55 +0000 (Fri, 08 Jun 2007)
> New Revision: 23393
> 
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23393
> 
> Log:
> Support BSD group semantics by making sure that the effective GID is always
> passed as the first GID when calling setgroups(2).

Please add to 3.0.26 also (but not 3.0.25)

Thanks,

Jeremy.

                   

rms.nfB-=arc
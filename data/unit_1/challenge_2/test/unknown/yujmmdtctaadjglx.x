From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 30 20:42:52 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l610gpL9013617
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 20:42:51 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E5F2E163863
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 00:42:47 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 6F72C162B70; Sun,  1 Jul 2007 00:42:04 +0000 (GMT)
Date: Sat, 30 Jun 2007 17:39:49 -0700
From: Jeremy Allison <jra@samba.org>
To: Michael Adam <ma@sernet.de>
Message-ID: <20070701003949.GB1418@jeremy2.wintest.samba.local>
References: <20070630235224.17FF3162BD8@lists.samba.org>
	<20070630235349.GA1418@jeremy2.wintest.samba.local>
	<E1I4mvc-0007vV-DH@intern.SerNet.DE>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1I4mvc-0007vV-DH@intern.SerNet.DE>
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-technical@lists.samba.org, Jeremy Allison <jra@samba.org>
Subject: Re: svn commit: samba r23668 - in branches: SAMBA_3_0/source/lib
	SAMBA_3_0_26/source/lib
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

On Sun, Jul 01, 2007 at 02:04:36AM +0200, Michael Adam wrote:
> 
> I did not create a security hole (kept at the worst): 
> This block of code was just indented one additional level. 
> num_ucs2 = length/2, length being passed to the function. 
> So there is no danger of wrap here. - right?

Where did length come from ? Please check length.

Jeremy.

             

:0w@rnrfpEeI
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 17:46:03 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BLk3L9019159
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 17:46:03 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AC2421638E0
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 21:46:02 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=3.8 tests=AWL,BAYES_00,NO_RELAYS 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 396BC1638BC; Mon, 11 Jun 2007 21:44:58 +0000 (GMT)
Date: Mon, 11 Jun 2007 14:44:56 -0700
From: Jeremy Allison <jra@samba.org>
To: Michael B Allen <mba2000@ioplex.com>
Message-ID: <20070611214456.GG1305@samba1>
References: <f325f5a00706071911p4ca8f089s21a3f67bdc86d03b@mail.gmail.com>
	<20070608122024.b39470da.mba2000@ioplex.com>
	<f325f5a00706102009p4d35e70aw4d51e9abc198788a@mail.gmail.com>
	<20070610233503.e5577200.mba2000@ioplex.com>
	<20070611172050.GB1305@samba1> <466D894B.1000001@ubiqx.mn.org>
	<20070611145241.f17e4b5f.mba2000@ioplex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070611145241.f17e4b5f.mba2000@ioplex.com>
User-Agent: Mutt/1.5.11
Cc: "Christopher R. Hertel" <crh@ubiqx.mn.org>, samba-technical@samba.org
Subject: Re: [SMB] NTCreateANDX quesiotn
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

On Mon, Jun 11, 2007 at 02:52:41PM -0400, Michael B Allen wrote:
> Hi Chris,
> 
> It looks to me like the WordCount is too big but Jeremy said 42 was
> right so I'm not sure.

The wcnt is 42, but you have to pretend it said 50 :-).
bcc is always zero.

        

8baT6pMrXHwrp
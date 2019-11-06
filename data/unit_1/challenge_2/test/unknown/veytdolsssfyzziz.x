From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 19 14:25:39 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JIPcL9032523
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 14:25:38 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0879B16382E
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 18:25:36 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 15B70162AC1; Tue, 19 Jun 2007 18:25:07 +0000 (GMT)
Date: Tue, 19 Jun 2007 11:25:03 -0700
From: Jeremy Allison <jra@samba.org>
To: Jeremy Allison <jra@samba.org>
Message-ID: <20070619182503.GD19639@samba1>
References: <8434BF50-B7FE-4CB3-A1CE-C2CC8C656DC3@isilon.com>
	<20070619182152.GC19639@samba1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070619182152.GC19639@samba1>
User-Agent: Mutt/1.5.11
Cc: Todd Stecher <todd.stecher@isilon.com>,
   samba-technical <samba-technical@samba.org>
Subject: Re: Problem with DELETE_ON_CLOSE open_file_ntcreate()?
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

On Tue, Jun 19, 2007 at 11:21:52AM -0700, Todd wrote:
> 
> I'm hesitant to "fix" this (e.g. set the lock->delete_on_close bit  
> when we see the FILE_DELETE_ON_CLOSE option), because there might be  
> some subtlety I'm missing here.

Another FYI: There is a subtlety here. Allowing setting the
delete on close semantics on open is different to setting
the delete on close semantics on an already open handle.

The logic in SAMBA_3_0_25 is (I believe) correct. Once you've
patched your 3.0.24 run the latest Samba4 smbtorture against it
to make sure you've got the changes correct.

Jeremy.

                

95z�
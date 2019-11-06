From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 18 18:09:44 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IM9hL9022417
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 18:09:44 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 470A416384F
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 22:09:42 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [jT??IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 7F235162AE8;
	Mon, 18 Jun 2007 22:08:59 +0000 (GMT)
Message-Id: <8493BD55-2583-4AC9-A626-0545D7293F77@samba.org>
From: James Peach <jpeach@samba.org>
To: Herb Lewis <hlewis@panasas.com>
In-Reply-To: <4676ED08.5030902@panasas.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Mon, 18 Jun 2007 15:08:58 -0700
References: <4676ED08.5030902@panasas.com>
X-Mailer: Apple Mail (2.890.2)
Cc: samba tech <samba-technical@lists.samba.org>
Subject: Re: vfs module question
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

On Jun 18, 2007, at 1:37 PM, Herb Lewis wrote:

> I'm confused by when to use SMB_VFS_LAYER_TRANSPARENT vs
> SMB_VFS_LAYER_OPAQUE.
>
> It seems to me from looking at the example modules, that only
> those functions that call SMB_VFS_NEXT_xxx should be listed as
> TRANSPARENT but that is not the case for most modules. Am I
> misunderstanding something here on the use of these flags?

nope, you're correct

>
> If all the function does is return results for the intended
> function and not make any calls to the next layer shouldn't
> it be OPAQUE?

They should be using OPAQUE. However, there's nothing to enforce this  
at runtime and the net result should be the same.

--
James Peach | jpeach@samba.org

                

.hhoDisl2tf<Le
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 14:53:24 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QIrOL9016305
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 14:53:24 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3C56B1638E8
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 18:53:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [E???IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id BC3B6162BC2;
	Tue, 26 Jun 2007 18:52:51 +0000 (GMT)
Message-Id: <60275A6C-83B4-43AD-8098-6D1A58FDA6A1@samba.org>
From: James Peach <jpeach@samba.org>
To: Kai Blin <kai@samba.org>
In-Reply-To: <200706262039.56616.kai@samba.org>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Tue, 26 Jun 2007 11:52:51 -0700
References: <467EF15A.4080701@samba.org> <46813AC9.6000604@samba.org>
	<C1CFB36C-B232-459E-93A4-828B8803199D@samba.org>
	<200706262039.56616.kai@samba.org>
X-Mailer: Apple Mail (2.890.2)
Cc: samba-technical@lists.samba.org
Subject: Re: Comparision of Git & Bzr [was Re: Short HOWTO on using git for
	Samba development]
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

On Jun 26, 2007, at 11:39 AM, Kai Blin wrote:

> On Tuesday 26 June 2007 18:29:29 James Peach wrote:
>
>>> I mean we could start a fresh new repo in git or bzr
>>> just like we did when converting to svn from cvs.
>>
>> IMO that was a big mistake. We switched over too soon before tools to
>> migrate history were available.
>>
>> We absolutely must have the author history, if only to maintain
>> correct copyright attributions when moving code around.
>
> Importing history should work pretty well for git. When Wine moved  
> to Git, we
> managed to actually restore the history of an older cvs repos that the
> development cvs repository didn't have anymore.

Yep, I imported ~240 svn branches into a git repository with git-svn  
and AFAICT it worked perfectly. This gave me a git repo of 510M  
compared to a svn checkout of trunk in 119M.

--
James Peach | jpeach@samba.org

       

0sm48AvErr3ti
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 11:47:45 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QFljL9012959
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 11:47:45 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3FB211638EA
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 15:47:42 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 8C677162B72;
	Tue, 26 Jun 2007 15:47:12 +0000 (GMT)
Message-Id: <B6E50612-5826-4B60-B8F6-F122FB55F06E@samba.org>
From: James Peach <jpeach@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
In-Reply-To: <46812A3B.6090407@samba.org>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Tue, 26 Jun 2007 08:47:02 -0700
References: <467EF15A.4080701@samba.org>
	<1182729701.2895.8.camel@localhost.localdomain>
	<467FCAE7.3050306@samba.org>
	<1182780800.2895.22.camel@localhost.localdomain>
	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<20070625201245.GA17946@rhonwyn.vernstok.nl>
	<468032B6.6010404@samba.org>
	<20070626111951.GA7333@rhonwyn.vernstok.nl>
	<46812A3B.6090407@samba.org>
X-Mailer: Apple Mail (2.890.2)
Cc: Jelmer Vernooij <jelmer@samba.org>, simo <idra@samba.org>,
   samba-technical@samba.org
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

On Jun 26, 2007, at 8:01 AM, Gerald (Jerry) Carter wrote:
>
[snip]
> I would be very concerned about scaling a bzr repo with our
> existing number of svn commits.  Granted that we coud drop
> the svn history

Do you mean dropping the history in the central repository or dropping  
the history of the remote developer's clone?

--
James Peach | jpeach@samba.org

                 

C+5wd
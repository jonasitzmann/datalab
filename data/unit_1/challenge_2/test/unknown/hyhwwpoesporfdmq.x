From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 12:29:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QGTvL9013360
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 12:29:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D761E163882
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 16:29:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 0F19C162BC2;
	Tue, 26 Jun 2007 16:29:29 +0000 (GMT)
Message-Id: <C1CFB36C-B232-459E-93A4-828B8803199D@samba.org>
From: James Peach <jpeach@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
In-Reply-To: <46813AC9.6000604@samba.org>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Tue, 26 Jun 2007 09:29:29 -0700
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
	<B6E50612-5826-4B60-B8F6-F122FB55F06E@samba.org>
	<46813AC9.6000604@samba.org>
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

On Jun 26, 2007, at 9:11 AM, Gerald (Jerry) Carter wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> James Peach wrote:
>> On Jun 26, 2007, at 8:01 AM, Gerald (Jerry) Carter wrote:
>>>
>> [snip]
>>> I would be very concerned about scaling a bzr repo with our
>>> existing number of svn commits.  Granted that we coud drop
>>> the svn history
>>
>> Do you mean dropping the history in the central
>> repository or dropping the history of the remote
>> developer's clone?
>
> I mean we could start a fresh new repo in git or bzr
> just like we did when converting to svn from cvs.

IMO that was a big mistake. We switched over too soon before tools to  
migrate history were available.

We absolutely must have the author history, if only to maintain  
correct copyright attributions when moving code around.

> I don't really like this idea unless there is no other way
> though.

If that's the only way, I'd rather stick with svn, even though I quite  
like git :)

--
James Peach | jpeach@samba.org

             

C;d CtGzesars
a
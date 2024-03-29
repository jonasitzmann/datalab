From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:06:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KH6RL9012688
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:06:27 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6DD68163898
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:06:25 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from rwcrmhc15.comcast.net (rwcrmhc15.comcast.net [216.148.227.155])
	by lists.samba.org (Postfix) with ESMTP id EF919162BC1;
	Wed, 20 Jun 2007 17:05:59 +0000 (GMT)
Received: from [192.168.101.21]
	(c-71-195-35-115.hsd1.mi.comcast.net[71.195.35.115])
	by comcast.net (rwcrmhc15) with ESMTP
	id <20070620170558m1500134f1e>; Wed, 20 Jun 2007 17:05:58 +0000
Message-ID: <46795E70.7050300@ubiqx.mn.org>
Date: Wed, 20 Jun 2007 12:05:52 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Jeremy Allison <jra@samba.org>
References: <46795965.5060002@ubiqx.mn.org> <20070620165125.GD28880@samba1>
In-Reply-To: <20070620165125.GD28880@samba1>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: Preserving NTFS permissions.
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

Jeremy Allison wrote:
> On Wed, Jun 20, 2007 at 11:44:21AM -0500, Christopher R. Hertel wrote:
>> It appears as though this is something that could be done using the VFS
>> layer.  In particular, I should be able to store the full NTFS ACE in an EA.
>>  Something I read suggests that Samba 4 is already doing this.
> 
> Storing it is easy - evaluating it is more tricky. I'd be happy to
> add a VFS module that does this (and change the VFS interface if
> it needs changing to make this work), but no one has yet committed
> the resources to add this.

I may be in a position to do or help do the work.  I won't promise yet (you
know me too well anyway) but it does sound like an interesting problem to solve.

Would we need only one ACE per file/directory or is it possible to have
multiple ACEs assigned?  I imagine the latter.

Thanks.

Chris -)-----

--
"Implementing CIFS - the Common Internet FileSystem" ISBN: 013047116X
Samba Team -- http://www.samba.org/     -)-----   Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/   -)-----   ubiqx development, uninq.
ubiqx Team -- http://www.ubiqx.org/     -)-----   crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/    -)-----   crh@ubiqx.org

     

 >rStxiaLtossg
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 12:09:55 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56G9phB023621
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 12:09:51 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4CD14162BD8
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 16:09:45 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [?^???$??P????%?$IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 5C866162AD0;
	Wed,  6 Jun 2007 16:09:10 +0000 (GMT)
In-Reply-To: <E1Hvt7R-0003x4-N7@intern.SerNet.DE>
References: <20070604104048.8504C162AF7@lists.samba.org>
	<46640C66.9070109@samba.org>
	<E1HvCbl-0000j1-CD@intern.SerNet.DE> <466417EB.30206@samba.org>
	<20070604141916.GA31364@j3e.de> <46642A13.7050307@samba.org>
	<E1Hvt7R-0003x4-N7@intern.SerNet.DE>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <D9B70082-3B63-4307-B8E1-3A103B23D424@samba.org>
Content-Transfer-Encoding: 7bit
From: James Peach <jpeach@samba.org>
Date: Wed, 6 Jun 2007 09:09:06 -0700
To: Michael Adam <ma@sernet.de>
X-Mailer: Apple Mail (2.752.3)
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: svn commit: samba-docs r1120 - in trunk/smbdotconf/winbind: .
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

On 06/06/2007, at 3:52 AM, Michael Adam wrote:

> Hi Jerry,
>
> On Mon, Jun 04, 2007 at 10:04:51AM -0500, Gerald (Jerry) Carter wrote:
>> Bjoern Jacke wrote:
>>
>>> Winbind however is part of Samba's core and thus
>>> all Winbind options that can be put into smb.conf
>>> should be listed there.
>>
>> Then why have a winbindd(8) man page at all ?  For that matter,
>> why is the "rpc only" parameter a parameteric option in the first
>> place?  Let's just make it a full fledged parameter and be done
>> with it.
>
> Agreed! I was not aware of the nature of the "parametric" options.
> (I am not sure whether I really know yet what it's all about.) But
> under these aspects, the options should probably not be parametric.
>
> To my taste, the winbind related options belong into the manpage
> since they belong a core component of samba, as Bjoern stated,
> and they belong to the winbindd manpage, since this manpage
> for the samba component exists. And it has right to exist, because
> it is also useful to have the winbind-related options
> concentrated in one place, too. An alternative would be to
> have a separate winbind.conf (say). Then these options could
> be removed from smb.conf(5). :-)

Separate smb.conf and winbindd.conf is icky because some params have  
to match for both, eg. "passdb backend", "guest account".

--
James Peach | jpeach@samba.org


   

niewifnn
iBFy>7e
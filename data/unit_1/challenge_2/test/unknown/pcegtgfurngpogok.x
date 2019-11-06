From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 14:59:44 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54IxhhB031593
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 14:59:43 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id B9447163972
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 18:59:37 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [3O??IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id D8DDD162BD4;
	Mon,  4 Jun 2007 18:59:09 +0000 (GMT)
Message-Id: <2F3CBAB8-345F-4645-AEA4-393D0C0FB5C4@samba.org>
From: James Peach <jpeach@samba.org>
To: simo <idra@samba.org>
In-Reply-To: <1180981077.24923.262.camel@localhost.localdomain>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.1)
Date: Mon, 4 Jun 2007 11:40:38 -0700
References: <E1HtO0D-0006oi-Ut@intern.SerNet.DE>
	<46491125-76F7-4754-91DF-CDBDCB7591F0@samba.org>
	<E1HvBBk-0001YM-77@intern.SerNet.DE>
	<20070604172351.GC30537@samba1> <20070604173955.GA8764@sernet.de>
	<E1HvGYV-0005eF-8u@intern.SerNet.DE>
	<1180981077.24923.262.camel@localhost.localdomain>
X-Mailer: Apple Mail (2.890.1)
Cc: Volker.Lendecke@SerNet.DE, Jeremy Allison <jra@samba.org>,
   samba-technical@samba.org
Subject: Re: idle_timeout processing in the parent smbd?
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

On Jun 4, 2007, at 11:17 AM, simo wrote:

> On Mon, 2007-06-04 at 19:45 +0200, Volker Lendecke wrote:
>> On Mon, Jun 04, 2007 at 07:39:55PM +0200, Volker Lendecke wrote:
>>> BTW, I find the concept that some daemon creates the
>>> listening socket for us quite strange. inetd, that's
>>> something I see, but doing the listen and not do the fork? I
>>> don't know...
>>
>> Another question: How does this play with the Samba4 model
>> which listens on a ton of ports?
>
> Personally I think that running samba out of inetd is a bad idea in
> general.
> Just make samba4 run in single mode, so that it does not spawn more
> process and disable the subsystems you don't need and you achieve  
> almost
> the same goal as having it running from inetd.
>
> Is there any other reason to run something off of inetd besides a
> perceived save of resources?

I'd argue that it's an actual saving of resources (for some use  
cases). smbd is 6MB on my system, nmbd is 2MB and winbindd is 4MB. So  
running these cost ~12MB of some combination of swap space and  
physical memory. For a desktop machine, that might only get 1 or 2  
connections a day, that is a useful saving, especially once you start  
adding the saving up across multiple projects.

inetd mode is just fine for desktop usage, but it's too expensive for  
servers that have to handle numbers of simultaneous connection.

--
James Peach | jpeach@samba.org

   

Kc6IAocN4q> f 
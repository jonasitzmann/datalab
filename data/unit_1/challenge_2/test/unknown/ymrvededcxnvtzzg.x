From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun  5 16:42:22 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55KgMhB013622
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 16:42:22 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 05BC41642E7
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  5 Jun 2007 20:42:16 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [?v???+?IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 7CE87163860;
	Tue,  5 Jun 2007 19:55:36 +0000 (GMT)
In-Reply-To: <4665BE53.7000701@samba.org>
References: <A1DA1CCF-A737-42C7-8BF9-9C81BD1A3DFC@samba.org>
	<90D75B5F-A39E-4ACA-BAD3-87BEBD521852@samba.org>
	<4665BE53.7000701@samba.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <475987F2-5D10-4011-989F-B91033D036A1@samba.org>
Content-Transfer-Encoding: 7bit
From: James Peach <jpeach@samba.org>
Date: Tue, 5 Jun 2007 12:55:32 -0700
To: "Gerald (Jerry) Carter" <jerry@samba.org>
X-Mailer: Apple Mail (2.752.3)
Cc: samba-technical@lists.samba.org
Subject: Re: [PATCH 2/2] Remove support for automatically
	generated	prototype headers.
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

On 05/06/2007, at 12:49 PM, Gerald (Jerry) Carter wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> James Peach wrote:
>> On 05/06/2007, at 12:32 PM, James Peach wrote:
>>
>>> as per subject.
>>
>> Patch 1/2 is being help for moderation, but it's
>> just the checking of a snapshot of the proto headers.
>
> Ah...ok.  Released from the moderator queue now.
>
>> As you can see, I wasn't planning on anything
>> sophisticated here. The main (only?) issue is to
>> establish a consensus on whether generated headers
>> are wanted or not.
>
> +1 from me.  Are you still planning on working on this
> in SAMBA_3_0 ?

The only thing left to do is the 99% that is breaking the proto  
headers into sensible chunks. That's something that pretty open-ended.

>   Or using a bzr tree based on SAMBA_3_0.bzr?

I'm not planning on doing anything else until there is agreement on  
whether or not we want generated headers.

--
James Peach | jpeach@samba.org


                  

/a llce  AG
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 23 11:28:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5NFSuL9020426
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 11:28:56 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D26C416393C
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 15:28:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [?S??~P??P????!?$IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id C6DC3162AC2;
	Sat, 23 Jun 2007 15:28:11 +0000 (GMT)
In-Reply-To: <E1I22nf-00077Z-Fn@intern.SerNet.DE>
References: <DE2C5A36-763C-4BBF-858A-3188E5FC9107@samba.org>
	<E1I22nf-00077Z-Fn@intern.SerNet.DE>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <5E830D52-3E47-4598-948B-0234BFFA838A@samba.org>
Content-Transfer-Encoding: 7bit
From: James Peach <jpeach@samba.org>
Date: Sat, 23 Jun 2007 08:27:58 -0700
To: Volker.Lendecke@SerNet.DE
X-Mailer: Apple Mail (2.752.3)
Cc: samba tech <samba-technical@lists.samba.org>
Subject: Re: [RFC][SAMBA3] minimal named stream support
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

On 23/06/2007, at 2:53 AM, Volker Lendecke wrote:

> On Fri, Jun 22, 2007 at 05:16:36PM -0700, James Peach wrote:
>> --- samba/source/smbd/trans2.c.orig
>> +++ samba/source/smbd/trans2.c
>> @@ -7,6 +7,8 @@
>>     Copyright (C) Steve French			2005
>>     Copyright (C) James Peach			2007
>>
>> +   Copyright (C) 2006-2007 Apple Inc. All right reserved.
>> +
>
> How much would it take to get this removed?

If we decide that this is the right approach for doing streams, it's  
just a matter of doing some paperwork. I understood that there were  
multiple approaches that we wanted to evaluate.

--
James Peach | jpeach@samba.org


     

G<
UH5tp4
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 15:28:22 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DJSLL9011576
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 15:28:21 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A7AA1162C1D
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 19:28:20 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id E430E162ACB;
	Wed, 13 Jun 2007 19:27:59 +0000 (GMT)
Message-Id: <6F4A523A-275B-4157-805B-1F33B9366505@samba.org>
From: James Peach <jpeach@samba.org>
To: Volker.Lendecke@SerNet.DE
In-Reply-To: <E1HyXFR-0005Hx-Fq@intern.SerNet.DE>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Wed, 13 Jun 2007 12:27:57 -0700
References: <B625B1FF-B55E-4516-A419-B8BA60A4A5A2@samba.org>
	<E1HyXFR-0005Hx-Fq@intern.SerNet.DE>
X-Mailer: Apple Mail (2.890.2)
Cc: samba-technical@lists.samba.org
Subject: Re: kerberos auth account restrictions
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

On Jun 13, 2007, at 11:06 AM, Volker Lendecke wrote:

> On Wed, Jun 13, 2007 at 11:04:03AM -0700, James Peach wrote:
>> Is there a good reason that we don't do this for Kerberos auth in
>> reply_spnego_kerberos()?
>
> Others (the DC) decide over that. When we look at the SAM,
> we're the boss. For Kerberos or sec=domain we don't even
> have that info.

Hmmm. In both these cases, smbd manually creates a struct samu from  
the auth information without hitting the passdb backend. In the  
Kerberos case, it only does this if PAC information was included.

The context of this is that I have a local account lockout mechanism  
that I need to support and it needs to work for all auth types. If the  
Kerberos auth path did a pdb_getsampwnam and checked ACB_AUTOLOCK,  
then I could hide this all in my passdb module.

Do you have any suggestions how I could do this? I'd rather not add a  
system-specific check into the main code path if I don't have to.

--
James Peach | jpeach@samba.org

     

ae6= fb"
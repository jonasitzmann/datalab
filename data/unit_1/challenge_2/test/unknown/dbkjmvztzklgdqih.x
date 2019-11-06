From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 19:11:17 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58NBHL9002733
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 19:11:17 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id EC63E163B6B
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 23:10:54 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [?i???+?IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 50DDA163880;
	Fri,  8 Jun 2007 23:09:12 +0000 (GMT)
In-Reply-To: <E1HwnBd-0006pD-0d@intern.SerNet.DE>
References: <20070608143732.336F5162B74@lists.samba.org>
	<203D9177-421B-4B98-BF85-8A02EB88E9A1@samba.org>
	<E1HwnBd-0006pD-0d@intern.SerNet.DE>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <77B1AB9A-10ED-41B9-B31A-E57D5F0E3716@samba.org>
Content-Transfer-Encoding: 7bit
From: James Peach <jpeach@samba.org>
Date: Fri, 8 Jun 2007 16:09:05 -0700
To: Michael Adam <ma@sernet.de>
X-Mailer: Apple Mail (2.752.3)
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23389 - in branches/SAMBA_3_0/source: .
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

On 08/06/2007, at 3:44 PM, Michael Adam wrote:

> Hi James,
>
> On Fri, Jun 08, 2007 at 08:55:42AM -0700, James Peach wrote:
>> On Jun 8, 2007, at 7:37 AM, obnox@samba.org wrote:
>>>
>>> Log:
>>> Disabling ACL support on Darwin/Mac OS X for now.
>>>
>>> Current configure check detects posix ACL support
>>> but compile of modules/vfs_posixacl.c fails due
>>> to missing defines in sys/acl.h:
>>> ACL_USER, ACL_USER_OBJ, ACL_GROUP, ACL_GROUP_OBJ, ACL_OTHER,
>>> ACL_MASK, ACL_WRITE, ACL_READ
>>>
>>> It has to be investigated, if this can be fixed within
>>> the posixacl vfs module or if we need a darwinacl module.
>>
>> The Darwin ACL model is a lot closer to the Windows/NFS4 model  
>> than it
>> is to the traditional Posix model. I have a module, which I'll post
>> for review in due time. If you have a particular need for it, I can
>> accelerate the process.
>
> Yes, I would like to see that module. No hurry though - samba
> didn't have working Darwin ACL support up to now if I am not
> mistaken.
>
> Is the module you are referring to by chance the one available under
> http://www.opensource.apple.com/darwinsource/Current/samba-100.7/ 
> darwin_vfs/darwin_acls.c

Yep, though its now slightly altered from that code.

> In this case, it does of course not fit into our acl schema.
> But with some work it could (judging from a first glance)
> be integrated.
> Or do you already have something that integrates with upstream Samba?

Well we hook in at the nt_acl VFS layer, not the POSIX ACL layer  
though I could probably add support for that as well. I guess we  
could do the native->NFSv4->NT conversion, but it feels icky. I'll  
look at it more closely when the time comes.

> I don't have any special or urgent need, just want to make Samba's
> ACL support more complete.

Ok, no rush then

--
James Peach | jpeach@samba.org


      

kFdEnA
A:8rb1I@
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 17:31:14 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62LVCL9019259
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 17:31:12 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 70B7B1638C2
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  2 Jul 2007 21:31:08 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 51083162AEB;
	Mon,  2 Jul 2007 21:30:29 +0000 (GMT)
From: simo <idra@samba.org>
To: "Christopher R. Hertel" <crh@ubiqx.mn.org>
In-Reply-To: <46896028.4000304@ubiqx.mn.org>
References: <46795965.5060002@ubiqx.mn.org>
	<1182358319.7401.129.camel@localhost.localdomain>
	<20070620165921.GE28880@samba1> <4679610A.1050305@ubiqx.mn.org>
	<20070620172325.GG28880@samba1> <4679665F.1000009@ubiqx.mn.org>
	<20070620174510.GJ28880@samba1> <46895854.6010807@ubiqx.mn.org>
	<1183406592.2895.328.camel@localhost.localdomain>
	<46896028.4000304@ubiqx.mn.org>
Content-Type: text/plain
Organization: Samba Team
Date: Mon, 02 Jul 2007 17:30:29 -0400
Message-Id: <1183411829.2895.352.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
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

On Mon, 2007-07-02 at 15:29 -0500, Christopher R. Hertel wrote:
> You guys should know by now that I like to grok something in a deep and
> meaningful way before I approach it with a pointed stick.  :)
> 
> Okay.  I'll see if we can put together something that just stores and
> retrieves the ACEs as a first step.
> 
> The thing that still confuses me is that the default VFS behavior seems to
> take the settings from Windows systems and map them to the Posix bits, which
> in turn impacts the VFAT bitmap interpretation.  There's something weird
> going on there.

No they are not necessarily in the way, look at "store dos attributes".

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

               

ceAV
SCm0oto
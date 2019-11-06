From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 28 15:30:01 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SJTwL9014675
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 15:29:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 534981638A0
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 28 Jun 2007 19:29:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 3CC69162AF5;
	Thu, 28 Jun 2007 19:29:02 +0000 (GMT)
Received: from [127.0.0.1] (drizzt.plainjoe.org [192.168.1.84])
	by mail.plainjoe.org (Postfix) with ESMTP id CF8CC2F04C;
	Thu, 28 Jun 2007 14:29:01 -0500 (CDT)
Message-ID: <46840BFD.3090808@samba.org>
Date: Thu, 28 Jun 2007 14:29:01 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Michael Adam <ma@sernet.de>
References: <46809A05.5090007@samba.org> <E1I3flp-0002DR-6x@intern.SerNet.DE>
In-Reply-To: <E1I3flp-0002DR-6x@intern.SerNet.DE>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: Proposal for SAMBA_3_0/README.Coding
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Michael Adam wrote:
> On Mon, Jun 25, 2007 at 11:45:57PM -0500, Gerald (Jerry) Carter wrote:
>> * Use 8 Space Tabs to Indent
>>   No whitespace filler.
> 
> To make sure I don't get this wrong:
> 
> This means that when breaking arguments for functions,
> they should not be algnend under the parentheses along
> with the other arguments (using spaces for the last
> few steps), right?
> 
> How should on chose the number of tabs to indent for
> a function etc that needs to have is argument wrapped?

I'm updated the coding style guide.  It's based on what
emacs does using the Linux kernel style so I don't think
it contradicts anything we've already agreed on.

Indention & Whitespace & 80 columns
- -----------------------------------

To avoid confusion, indentations are to be 8 character with tab (not
8 ' ' characters.  When wrapping parameters for function calls,
alignment parameter list with the first parameter on the previous line.
Use tabs to get as close as possible and then fill in the final 7
characters or less with whitespace.  For example,

	var1 = foo(arg1, arg2,
		   arg3);

The previous example is intended to illustrate alignment of function
parameters across lines and not as encourage for gratuitous line
splitting.  Never split a line before columns 70 - 79 unless you
have a really good reason.  Be smart about formatting.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGhAv9IR7qMdg1EfYRAgmOAJ4ib+F2xuMsWxZ//nzvq/rELiwKmwCgrnQf
yRXJOULcTRUOhyvTmZnF1wU=
=JGal
-----END PGP SIGNATURE-----

               

g-d�NePh
Ya.>/
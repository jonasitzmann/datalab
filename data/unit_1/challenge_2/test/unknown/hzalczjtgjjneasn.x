From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 11:08:10 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64F88L9012038
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 11:08:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A6CBB1638A5
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 15:08:04 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id BC56E162BD9;
	Wed,  4 Jul 2007 15:07:51 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 781702F1FD;
	Wed,  4 Jul 2007 10:07:51 -0500 (CDT)
Message-ID: <468BB7C7.4060309@samba.org>
Date: Wed, 04 Jul 2007 10:07:51 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: =?UTF-8?B?TGFycyBNw7xsbGVy?= <lars@samba.org>
References: <468A4CBA.10500@cynapses.org> <468A5DFC.6020405@samba.org>
	<468A70DC.1050203@cynapses.org>
	<20070704141545.GA20307@gab.suse.de>
In-Reply-To: <20070704141545.GA20307@gab.suse.de>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: samba-technical@lists.samba.org
Subject: Re: [Patch] Make the days before the password expiry warning appears
 configurable
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

Lars Müller wrote:
> Hi Andreas,
> 
> On Tue, Jul 03, 2007 at 05:53:00PM +0200, Andreas Schneider wrote:
>> Gerald (Jerry) Carter wrote:
>>> I like the idea.  The pam_winbind.conf is a little long (and
>>> prone to mistype). How about just "warn_pwd_expire = <num_days>"?
>>>
>>> I think some of the lines are past 80 columns.  See the recent
>>> README.Coding file in SAMBA_3_0.  I'll spend some time on Thursday
>>> reviewing this more and hopefully getting it into the tree.
>> I've renamed it to warn_pwd_expire. As requested by Jeremy, attached is
>> a reformatted version of the patch.
> 
> A slightly modified version is added to 3_0 and 3_0_26 with revision
> 23704.
> 
>> As a hint for the VIM section of README.Coding:
>>
>> " Show tabs and trailing whitespace visually
>> set list listchars=tab:»·,trail:·,extends:…
> 
> Merged with revision 23705.
> 
> Thanks a lot for this feature Andreas.

Lars,

Why did you merge this already when I had said I
would review it tomorrow?



jerry
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGi7fHIR7qMdg1EfYRAkBhAJ9PQEdR1G3RWg8jfi+Y6z8o6mAmugCcCuiY
lUsuDR6rBqIhggI3RHKlGU8=
=wYV+
-----END PGP SIGNATURE-----

           

 un5t0l5j
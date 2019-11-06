From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 23:37:52 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5D3bqL9002713
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 23:37:52 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A45DD163877
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 03:37:51 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id F0A90162AD3; Wed, 13 Jun 2007 03:35:58 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18031.26214.560479.765217@samba.org>
Date: Wed, 13 Jun 2007 13:37:10 +1000
To: Frank Gruman <fgatwork@verizon.net>
In-Reply-To: <1181703988.28967.22.camel@toybox.thegrumans.int>
References: <1181620739.14169.17.camel@toybox.thegrumans.int>
	<466E88A4.60100@samba.org>
	<1181703988.28967.22.camel@toybox.thegrumans.int>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: "Stefan \(metze\) Metzmacher" <metze@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: EPOLL_CTL_ADD failed (Bad file descriptor) in TP5
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: tridge@samba.org
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

Frank,

 > Yes - this happens with just about every network operation (login,
 > folder access, file access, etc).  
 > 
 > 
 >         toybox:~ # smbd -i
 >         smbd version 4.0.0tp5-SVN-build-23403 started.
 >         Copyright Andrew Tridgell and the Samba Team 1992-2007
 >         smbd: using 'standard' process model
 >         EPOLL_CTL_ADD failed (Bad file descriptor) - falling back to
 >         select()

Does this happen with smbclient or smbtorture?

What we really need is a backtrace showing the code path that causes
this. If you attach to smbd with gdb and set a breakpoint on
events_standard.c:162 then set follow-fork-mode to child, you should
be able to catch this. Then do a "bt full" and send that to us when
the error happens.

For example:

    root@blu:/home/tridge/samba4# gdb --args bin/smbd -i
    GNU gdb 6.6-debian
    Copyright (C) 2006 Free Software Foundation, Inc.
    GDB is free software, covered by the GNU General Public License, and you are
    welcome to change it and/or distribute copies of it under certain conditions.
    Type "show copying" to see the conditions.
    There is absolutely no warranty for GDB.  Type "show warranty" for details.
    This GDB was configured as "i486-linux-gnu"...
    bUsing host libthread_db library "/lib/libthread_db.so.1".
    (gdb) b events_standard.c:162
    Breakpoint 1 at 0x879e788: file lib/events/events_standard.c, line 162.
    (gdb) set follow-fork-mode child
    (gdb) r
    Starting program: /home/tridge/samba/branches/SAMBA_4_0/source/bin/smbd -i
    smbd version 4.0.0tp5-SVN-build-23235 started.
    Copyright Andrew Tridgell and the Samba Team 1992-2007
    smbd: using 'standard' process model


Thanks!

Cheers, Tridge

                  

ktdtesnp

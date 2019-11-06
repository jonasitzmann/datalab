From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jul  5 12:33:34 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65GXXL9028589
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 12:33:33 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3AC071639E1
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  5 Jul 2007 16:33:29 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.6 required=3.8 tests=BAYES_50,FORGED_RCVD_HELO,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 1030 seconds by postgrey-1.24 at dp.samba.org;
	Thu, 05 Jul 2007 16:32:58 GMT
Received: from ns3.mintra.com (host13.unitech.host.ifl.telecomplete.net
	[213.160.120.213])
	by lists.samba.org (Postfix) with ESMTP id 2616D163823
	for <samba-technical@samba.org>; Thu,  5 Jul 2007 16:32:58 +0000 (GMT)
X-ClientAddr: 195.137.84.84
Received: from hypercubesystems.co.uk (i-195-137-84-84.freedom2surf.net
	[195.137.84.84]) (authenticated bits=0)
	by ns3.mintra.com (8.12.11/8.12.11) with ESMTP id l65HdRfu002173
	for <samba-technical@samba.org>; Thu, 5 Jul 2007 18:39:27 +0100
From: Seb James <seb@esfnet.co.uk>
To: samba-technical@samba.org
Content-Type: text/plain
Date: Thu, 05 Jul 2007 17:15:46 +0100
Message-Id: <1183652146.16597.8.camel@circle.hypercube>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.2 
Content-Transfer-Encoding: 7bit
X-Mintra-MailScanner-Information: Please contact the ISP for more information
X-Mintra-MailScanner: Not scanned: please contact your Internet E-Mail Service
	Provider for details
X-MailScanner-From: seb@esfnet.co.uk
Subject: smbtree patch - adds option to print out share type
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

Hi list,

I've made a small patch for smbtree. With this patch (made against
smbtree.c from Samba release 3.0.24) you can pass the option -H or
--sharetype and then the output from smbtree might look like this:

seb:/usr/src/samba-3.0.24/source$ ./bin/smbtree -b -N --sharetype
HYPERCUBE
        \\MORPHEUS
                \\MORPHEUS\WELP                 Disk            The ELP folder
                \\MORPHEUS\C$                   Disk (admin)    Default share
                \\MORPHEUS\ADMIN$               Disk (admin)    Remote Admin
                \\MORPHEUS\openoffice.org-2.1   Disk            This is a test share from MS Windows 2000
                \\MORPHEUS\HPLaserJ             Print           HP1320 on Sebs Desk, shared via Win2K Machine
                \\MORPHEUS\lj202                Disk            A random driver folder
                \\MORPHEUS\print$               Disk            Printer Drivers
                \\MORPHEUS\IPC$                 IPC (admin)     Remote IPC

With the additional column in the middle showing whether the share is a
Disk, Print or IPC share.

The patch is available here:

http://www.esfnet.co.uk/patches/smbtree_showsharetype.patch

with best regards,

Seb James
Embedded Software Foundry Ltd.
Tel: +44 (0)845 4580277
Sheffield, UK.

    

a5
1anSsN
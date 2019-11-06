From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 19 14:06:59 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JI6wL9032384
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 14:06:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id B498916383B
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 18:06:56 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=3.8 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 812 seconds by postgrey-1.24 at dp.samba.org;
	Tue, 19 Jun 2007 18:06:23 GMT
Received: from seaxch05.isilon.com (seaxch05.isilon.com [70.103.106.43])
	by lists.samba.org (Postfix) with ESMTP id BC468162AC1;
	Tue, 19 Jun 2007 18:06:23 +0000 (GMT)
Received: from [10.8.6.239] ([10.8.6.239]) by seaxch05.isilon.com with
	Microsoft SMTPSVC(6.0.3790.211); Tue, 19 Jun 2007 10:52:50 -0700
Mime-Version: 1.0 (Apple Message framework v752.3)
To: samba-technical <samba-technical@samba.org>,
   "'Jeremy Allison'" <jra@samba.org>
Message-Id: <8434BF50-B7FE-4CB3-A1CE-C2CC8C656DC3@isilon.com>
From: Todd Stecher <todd.stecher@isilon.com>
Date: Tue, 19 Jun 2007 10:51:04 -0700
X-Mailer: Apple Mail (2.752.3)
X-OriginalArrivalTime: 19 Jun 2007 17:52:50.0469 (UTC)
	FILETIME=[A749D550:01C7B29A]
Content-Type: text/plain;
	charset=US-ASCII;
	delsp=yes;
	format=flowed
Content-Transfer-Encoding: 7bit
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: Problem with DELETE_ON_CLOSE open_file_ntcreate()?
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

We're running 3.0.24.

Here's the scenario:

*	A file exists on our share
* 	An XP client opens the file:
	CreateFile(file, DELETE, 0, NULL, OPEN_EXISTING, DELETE_ON_CLOSE)  
api) with DELETE_ON_CLOSE (only 1 opener of file)

* 	The file handle is closed, the file is NOT deleted.

This same series of steps succeeds on Windows (e.g. file is deleted  
when handle is closed).  It also used to work on our old 3.0.11  
distribution.  I debugged it, and it appears as if the  
FILE_DELETE_ON_CLOSE flag is not setting the fsp- 
 >initial_delete_on_close, or lock->delete_on_close appropriately for  
existing files:


reply_ntcreateX: flags = 0x10, access_mask = 0x110080 file_attributes  
= 0x0, share_access = 0x0, create_disposition = 0x1 create_options =  
0x1000 root_dir_fid = 0x0

parse_share_modes: delete_on_close: 0, initial_delete_on_close: 0,  
num_share_modes: 1
parse_share_modes: share_mode_entry[0]:  pid = 28233, share_access =  
0x0, private_options = 0x1000, access_mask = 0x110080, mid = 0x0,  
type= 0x10, file_id = 1, uid = 10000, dev = 0x22c1fb52, inode =  
4295229443, snapid = -1


I'm hesitant to "fix" this (e.g. set the lock->delete_on_close bit  
when we see the FILE_DELETE_ON_CLOSE option), because there might be  
some subtlety I'm missing here.  It also appears that Jeremy's been  
doing a lot of work in this area (so maybe its a TODO?).  Upgrading  
to a newer version of Samba is not an option, but if there's a one  
line fix I'm missing, that'd be great.  If its just an oversite, I'll  
submit a patch.

Thanks!

Todd




Todd Stecher | Windows Interop Dev
Isilon Systems    P +1-206-315-7500     F  +1-206-315-7501
www.isilon.com    D +1-206-315-7638    M +1-425-205-1180



 

>Emma
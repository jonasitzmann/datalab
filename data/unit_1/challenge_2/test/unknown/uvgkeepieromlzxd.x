From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 18:16:23 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61MGNL9005949
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 18:16:23 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D63B11638CE
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 22:16:19 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.8 tests=AWL,BAYES_50,
	DNS_FROM_RFC_ABUSE,DNS_FROM_RFC_POST,NO_MORE_FUNN,RCVD_IN_DSBL,
	SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from vms040pub.verizon.net (vms040pub.verizon.net [206.46.252.40])
	by lists.samba.org (Postfix) with ESMTP id D2CF0162B6F
	for <samba-technical@lists.samba.org>;
	Sun,  1 Jul 2007 22:15:37 +0000 (GMT)
Received: from [127.0.0.1] ([72.94.182.190])
	by vms040.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JKI001PCTTX27OD@vms040.mailsrvcs.net> for
	samba-technical@lists.samba.org; Sun, 01 Jul 2007 17:15:34 -0500 (CDT)
Date: Sun, 01 Jul 2007 18:15:33 -0400
From: Matt Schwartz <mes5048@verizon.net>
To: samba-technical@lists.samba.org
Message-id: <46882785.3060308@verizon.net>
MIME-version: 1.0
Content-type: text/plain; charset=ISO-8859-1; format=flowed
Content-transfer-encoding: 7bit
X-Antivirus: avast! (VPS 000752-8, 07/01/2007), Outbound message
X-Antivirus-Status: Clean
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
Subject: Samba4 MMC Write Support
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

Hello,  I successfully got MMC write support working with Samba4.  
However, when I try to create a new user I get a Global Catalog error.  
This is probably because this feature hasn't been implemented.  Am I 
correct?  Also, I understand that gpedit.msc works now.  However, I have 
no luck being able to use it.  I get a permissions error.  Here is my 
smb.conf with the share definitions.  Please help me so that I can 
continue to test.  Thanks.

[NETLOGON]
path = /usr/local/samba/netlogon
read only = no

[SYSVOL]
path = /usr/local/samba/private
read only = no

When I try to launch the editor, I get the following message: "Failed to 
Open the Group Policy Object.  You may not have the apropriate rights.  
Details: The System cannot find the specified path."  I also notice that 
when launching the editor from AD Users and Groups only the edit and 
properties buttons are available to me.

Thanks much,
Matt

     

ze  lL Qp0<1et
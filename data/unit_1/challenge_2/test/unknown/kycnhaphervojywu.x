From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 06:07:13 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DA7DL9006317
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 06:07:13 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 50799162BC2
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 10:07:12 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=3.8 tests=AWL, BAYES_50, FORGED_RCVD_HELO,
	HTML_MESSAGE,RCVD_IN_BLARS_RBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.erion.co.uk (www.erion.co.uk [80.84.66.24])
	by lists.samba.org (Postfix) with ESMTP id A74FE162ACB
	for <samba-technical@samba.org>; Wed, 13 Jun 2007 10:06:30 +0000 (GMT)
Received: from erion.otley.erion.co.uk
	(host81-130-197-24.in-addr.btopenworld.com [81.130.197.24] (may
	be forged)) (authenticated bits=128)
	by mail.erion.co.uk (8.13.1/8.13.1) with ESMTP id l5DA5vTF009265
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <samba-technical@samba.org>; Wed, 13 Jun 2007 11:06:23 +0100
Received: from PCANCALA001 (pcancala001.otley.erion.co.uk [192.168.1.1])
	by erion.otley.erion.co.uk (8.13.5/8.13.5) with ESMTP id l5DA5sen008426
	for <samba-technical@samba.org>; Wed, 13 Jun 2007 11:05:55 +0100
From: "David Holder" <david.holder@erion.co.uk>
To: <samba-technical@samba.org>
Date: Wed, 13 Jun 2007 11:01:12 +0100
Organization: Erion Ltd
Message-ID: <000401c7ada1$c6a43a60$0101a8c0@PCANCALA001>
MIME-Version: 1.0
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0005_01C7ADAA.2868A260"
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook, Build 10.0.6626
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.2826
Importance: Normal
X-Virus-Scanned: ClamAV version 0.83, clamav-milter version 0.83 on localhost
X-Virus-Status: Clean
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: Linux CIFS IPv6 Patch
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: david.holder@erion.co.uk
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

This is a multi-part message in MIME format.

------=_NextPart_000_0005_01C7ADAA.2868A260
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have been testing the IPv6 enabled version of the Linux CIFS client
against Windows Server 2008 (formally Longhorn). It was working fine on our
IPv6 test network. It stopped working when I tried it on the live Erion
network. 

 

The error message was 'ip address too long'. Our test lab uses very short
IPv6 addresses, like 3000::1. Our real network uses full addresses. 

 

I found that the test for the length of the IP address was two short in
mount.cifs and in fs/cifs/connect.c. The test was for 35 bytes. I have
changed this to 45 bytes. I also changed some error checking in connect.c.
This change is not necessary for this fix to work (I duplicated the code so
it probably isn't the best way to do it).

 

The longest possible IPv6 address is an IPv4-mapped IPv6 address written in
full. For example:

 

0000:0000:0000:0000:0000:0000:192.168.100.100

 

This is 45 bytes long. I suspect that the 35 in the current code is a typo.

 

Two patches are attached. One for mount.cifs.c and one for connect.c. The
versions I was working with were linux-2.6.21 patched with 2.6.22-rc2 and
samba-3.0.24.

 

Any questions let me know. Also, what is the best way of submitting patches
for the Linux CIFS client - is this OK?

 

Regards,

David

  _____  

Dr David Holder CEng MIET MIEEE

Erion Ltd, Oakleigh, Upper Sutherland Road, Halifax, HX3 8NT

Reception: +44 (0)1422 207000

Direct Dial: +44 (0)131 2026317

Cell: +44 (0) 7768 456831

http://www.erion.co.uk

 

Registered in England and Wales. Registered Number 3521142

VAT Number: GB 698 3633 78

 


------=_NextPart_000_0005_01C7ADAA.2868A260
Content-Type: application/octet-stream;
	name="mount.cifs-3.0.24.diff"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="mount.cifs-3.0.24.diff"

420c420=0A=
< 			} else if (strnlen(value, 35) < 35) {=0A=
---=0A=
> 			} else if (strnlen(value, 45) < 45) {=0A=
425c425=0A=
< 				printf("ip address too long\n");=0A=
---=0A=
> 				printf("specified ip address too long\n");=0A=

------=_NextPart_000_0005_01C7ADAA.2868A260
Content-Type: application/octet-stream;
	name="cifs-2.6.22-rc2.diff"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="cifs-2.6.22-rc2.diff"

923c923=0A=
< 			} else if (strnlen(value, 35) < 35) {=0A=
---=0A=
> 			} else if (strnlen(value, 45) < 45) {=0A=
1829c1829,1840=0A=
< 		} else =0A=
---=0A=
> 			if (rc < 0) {=0A=
> 				cERROR(1,=0A=
> 			       	("Error connecting to IPv6 socket. Aborting operation"));			=
       =0A=
> 				if (csocket !=3D NULL)=0A=
> 					sock_release(csocket);=0A=
> 				kfree(volume_info.UNC);=0A=
> 				kfree(volume_info.password);=0A=
> 				kfree(volume_info.prepath);=0A=
> 				FreeXid(xid);=0A=
> 				return rc;=0A=
> 			}=0A=
> 		} else {=0A=
1833,1842c1844,1854=0A=
< 		if (rc < 0) {=0A=
< 			cERROR(1,=0A=
< 			       ("Error connecting to IPv4 socket. Aborting operation"));			 =
      =0A=
< 			if (csocket !=3D NULL)=0A=
< 				sock_release(csocket);=0A=
< 			kfree(volume_info.UNC);=0A=
< 			kfree(volume_info.password);=0A=
< 			kfree(volume_info.prepath);=0A=
< 			FreeXid(xid);=0A=
< 			return rc;=0A=
---=0A=
> 			if (rc < 0) {=0A=
> 				cERROR(1,=0A=
> 			       	("Error connecting to IPv4 socket. Aborting operation"));			=
       =0A=
> 				if (csocket !=3D NULL)=0A=
> 					sock_release(csocket);=0A=
> 				kfree(volume_info.UNC);=0A=
> 				kfree(volume_info.password);=0A=
> 				kfree(volume_info.prepath);=0A=
> 				FreeXid(xid);=0A=
> 				return rc;=0A=
> 			}=0A=
1844d1855=0A=
< =0A=

------=_NextPart_000_0005_01C7ADAA.2868A260--

   

dsRq1P 3vSFsd
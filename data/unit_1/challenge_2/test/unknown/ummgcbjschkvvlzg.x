From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:40:26 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHePL9013072
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:40:26 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id EA64A1638CA
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:40:23 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from alnrmhc12.comcast.net (alnrmhc12.comcast.net [206.18.177.52])
	by lists.samba.org (Postfix) with ESMTP id 91CCE162ACE
	for <samba-technical@samba.org>; Wed, 20 Jun 2007 17:39:58 +0000 (GMT)
Received: from [192.168.101.21]
	(c-71-195-35-115.hsd1.mi.comcast.net[71.195.35.115])
	by comcast.net (alnrmhc12) with ESMTP
	id <20070620173954b1200rgrnse>; Wed, 20 Jun 2007 17:39:58 +0000
Message-ID: <4679665F.1000009@ubiqx.mn.org>
Date: Wed, 20 Jun 2007 12:39:43 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: samba-technical@samba.org
References: <46795965.5060002@ubiqx.mn.org>	<1182358319.7401.129.camel@localhost.localdomain>	<20070620165921.GE28880@samba1>
	<4679610A.1050305@ubiqx.mn.org> <20070620172325.GG28880@samba1>
In-Reply-To: <20070620172325.GG28880@samba1>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

Jeremy Allisonwrote:
> On Wed, Jun 20, 2007 at 12:16:58PM -0500, Christopher R. Hertel wrote:
>> Won't we also need to manage the relationship between the NTFS ACEs and the
>> old FAT-style permission bits?
> 
> No. These two have nothing to do with each other.

Interesting.  I would have thought that changing NTFS permission values
would also change the 16-bit view of the file.  Eg., if I remove
GENERIC_WRITE I would have thought that the FAT READ_ONLY bit would get set.

Chris -)-----

-- 
"Implementing CIFS - the Common Internet FileSystem" ISBN: 013047116X
Samba Team -- http://www.samba.org/     -)-----   Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/   -)-----   ubiqx development, uninq.
ubiqx Team -- http://www.ubiqx.org/     -)-----   crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/    -)-----   crh@ubiqx.org

        

C=a<4;_0 .loer 
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 18:28:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63MSlL9002281
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 18:28:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AD01416383D
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 22:28:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from cassoulet.panasas.com (gw-e.panasas.com [65.194.124.178])
	by lists.samba.org (Postfix) with ESMTP id 3C337162ACB;
	Tue,  3 Jul 2007 22:28:22 +0000 (GMT)
Received: from laguna.int.panasas.com (localhost.localdomain [127.0.0.1])
	by cassoulet.panasas.com (8.13.1/8.13.1) with ESMTP id l63MSLKP007795; 
	Tue, 3 Jul 2007 18:28:21 -0400
Received: from 172.17.132.41 ([172.17.132.41] helo=laguna.int.panasas.com)
	by ASSP-nospam; 3 Jul 2007 18:28:21 -0400
Received: from [172.17.132.117] ([172.17.132.117]) by laguna.int.panasas.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 3 Jul 2007 15:28:21 -0700
Message-ID: <468ACD84.3070101@panasas.com>
Date: Tue, 03 Jul 2007 15:28:20 -0700
From: Herb Lewis <hlewis@panasas.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.7.13) Gecko/20060501 Fedora/1.7.13-1.1.fc4
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <468AA9C8.3040903@panasas.com> <468AABE5.5070703@samba.org>
In-Reply-To: <468AABE5.5070703@samba.org>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 03 Jul 2007 22:28:21.0027 (UTC)
	FILETIME=[760D4F30:01C7BDC1]
Cc: samba tech <samba-technical@lists.samba.org>
Subject: Re: error in includes.h
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

svn annotate didn't show anything.

      2      CVSIN struct smb_ldap_privates;

so it was done way back in the cvs days I guess.

Gerald (Jerry) Carter wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Herb Lewis wrote:
> 
>>in the file include/includes.h there is a reference to
>>
>>struct smb_ldap_privates;
>>
>>supposedly as a forward reference from printing.h, however
>>this struct does not exist anywhere in the code.
>>
>>Does anyone remember why this was added? Should it be a
>>different struct (maybe ldapsam_privates) or is it no
>>longer needed?
> 
> 
> No memory.  Does svn annotate not show anything even if you
> dig back into the last tag of trunk?
> 

                  

-TeaOtD9h-eoX 
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 14 12:37:23 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EGbLL9024062
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 12:37:21 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9ADE01638F6
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 16:37:20 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=BAYES_00 autolearn=ham 
	version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from smtp1.su.se (smtp1.su.se [130.237.162.112])
	by lists.samba.org (Postfix) with ESMTP id C96EA162AE4
	for <samba-technical@lists.samba.org>;
	Thu, 14 Jun 2007 16:36:53 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.su.se (Postfix) with ESMTP id A5140741FA;
	Thu, 14 Jun 2007 18:36:52 +0200 (CEST)
Received: from smtp1.su.se ([127.0.0.1])
	by localhost (smtp1.su.se [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18619-02-25; Thu, 14 Jun 2007 18:36:52 +0200 (CEST)
Received: from [192.168.1.101] (unknown [67.99.198.2])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp1.su.se (Postfix) with ESMTP id 9584374130;
	Thu, 14 Jun 2007 18:36:51 +0200 (CEST)
In-Reply-To: <20070614121954.33DE11639BF@lists.samba.org>
References: <20070614121954.33DE11639BF@lists.samba.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <2E81D0BA-15A2-4CEF-90AD-F4B810F173C8@kth.se>
Content-Transfer-Encoding: 7bit
From: =?ISO-8859-1?Q?Love_H=F6rnquist_=C5strand?= <lha@kth.se>
Date: Thu, 14 Jun 2007 09:36:44 -0700
To: Stefan Metzmacher <metze@samba.org>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at smtp.su.se
Cc: Samba Technical <samba-technical@lists.samba.org>
Subject: Re: svn commit: samba r23488 - in branches/SAMBA_4_0/source/kdc: .
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

14 jun 2007 kl. 05.19 skrev metze@samba.org:

> Author: metze
> Date: 2007-06-14 12:19:53 +0000 (Thu, 14 Jun 2007)
> New Revision: 23488
>
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi? 
> view=rev&root=samba&rev=23488
>
> Log:
> hdb_openp has changed from void * to int...
>
> lha: what is the reason for this? it's really bad to use
>      an int for storing a pointer value...

The hdb-ldb code should use hdb_dbc that is meant for the cursor, not  
for hdb_openp thats meant for open status.

Love

     

 =
a
�e
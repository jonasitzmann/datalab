From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 16:47:11 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57KlAhB006870
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 16:47:10 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D07E4162BC6
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 20:47:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id D8100162AE9;
	Thu,  7 Jun 2007 20:46:15 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HwOs2-0002bB-MO; Thu, 07 Jun 2007 22:46:14 +0200
Received: by intern.SerNet.DE
	id 1HwOs2-0006MI-6B; Thu, 07 Jun 2007 22:46:14 +0200
Received: by intern.SerNet.DE
	id 1HwOs1-0006MF-UX; Thu, 07 Jun 2007 22:46:14 +0200
Date: Thu, 7 Jun 2007 22:46:13 +0200
From: Michael Adam <ma@sernet.de>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <E1HwK4m-0008Oh-SV@intern.SerNet.DE> <46683E21.7000505@samba.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <46683E21.7000505@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1HwOs2-0006MI-6B@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
Subject: Re: [PATCH] fix RPC_ANONYMOUS_AUTH_TYPE in 3_0_26
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
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l57KlAhB006870

On Thu, Jun 07, 2007 at 12:19:29PM -0500, Gerald (Jerry) Carter wrote:
> Very nice catch.  I missed this in the merge from SAMBA_3_0
> when dealing with the current_user changes in lsa and spoolss.
> Thanks for spotting it.  Please commit to SAMBA_3_0_26.

r23378. 

Thanks - Michael

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

               

idn35aI4b u

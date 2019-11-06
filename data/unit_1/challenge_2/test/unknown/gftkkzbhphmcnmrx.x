From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 09:39:57 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54DduhB028486
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 09:39:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3590B16398F
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 13:39:51 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 9BA6F162ACB;
	Mon,  4 Jun 2007 13:39:24 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HvCmJ-0003w6-Kz; Mon, 04 Jun 2007 15:39:24 +0200
Received: by intern.SerNet.DE
	id 1HvCmJ-0001ti-82; Mon, 04 Jun 2007 15:39:23 +0200
Received: by intern.SerNet.DE
	id 1HvCmI-0001tc-UP; Mon, 04 Jun 2007 15:39:23 +0200
Date: Mon, 4 Jun 2007 15:39:22 +0200
From: Michael Adam <ma@sernet.de>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <465F3E56.8080906@samba.org> <20070603194454.GE19641@sernet.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20070603194454.GE19641@sernet.de>
User-Agent: Mutt/1.5.9i
Message-Id: <E1HvCmJ-0001ti-82@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@samba.org
Subject: Re: Cutoff for major changes to 3.0.26 is scheduled for Monday,
	June 4
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l54DduhB028486

On Sun, Jun 03, 2007 at 09:44:55PM +0200, Michael Adam wrote:
> On Thu, May 31, 2007 at 04:29:58PM -0500, Gerald (Jerry) Carter wrote:
> > 
> > How are people feeling about June 4 as the freeze for
> > major code changes in 3.0.26 ?  
> 
> I am feeling a bit hounded now. I wanted to merge my net_conf
> and registry globals stuff into (3_0 and) 3_0_26. I have not
> managed to begin with that earlier than yesterday evening.
> 
> I don't know if these are considered major changes at all, :-)
> but anyways I hope that you don't object me finishing these 
> merges probably not tomorrow but in the next few days. 

I am in the middle of the preparations for merging the
net_conf / registry stuff I have been working on. 

The preliminary creation of reg_api and rewrite of 
rpc_server/srv_winreg_nt.c by Volker has not been merged
yet... Are there any objections to me starting the merge?

The only chance I see to accomplish this is to (more or 
less) copy srv_winreg_nt.c and pull other changes necessary
to get the system to build again.

Thanks - Michael

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE



o3paeoe
F
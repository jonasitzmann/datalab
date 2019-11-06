From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 20:58:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5N0wkL9011822
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 20:58:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DE903163826
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 00:58:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 89552162BD9; Sat, 23 Jun 2007 00:57:50 +0000 (GMT)
Date: Fri, 22 Jun 2007 17:57:48 -0700
From: Jeremy Allison <jra@samba.org>
To: Kurt Pfeifle <kurt.pfeifle@infotec.com>
Message-ID: <20070623005748.GG11851@samba1>
References: <467BE8BD.2000704@infotec.com> <467BEE9C.10200@samba.org>
	<467C5D3D.8030903@infotec.com> <467C652E.9050409@infotec.com>
	<467C6786.4090401@infotec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <467C6786.4090401@infotec.com>
User-Agent: Mutt/1.5.11
Cc: Guenther Deschner <gd@samba.org>, samba-technical@lists.samba.org
Subject: Re: [SOLVED!] Joining AD domain fails: "Failed to set
	servicePrincipalNames. [...] Type or value exists"
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Jeremy Allison <jra@samba.org>
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

On Sat, Jun 23, 2007 at 02:21:26AM +0200, Kurt Pfeifle wrote:
> 
> Oh, my!
> 
> It's there, in plain sight: while I had meant to configure everything
> to use pdf*server*, in smb.conf a line "netbios name = pdf*maker*"
> had slipped in. What a stupid mistake!
> 
> Removal of that line then did the magic. Now it's all cool again:
> 
> -------------------------------------------------------------------
> root@pdfserver:~# net ads join -W infotecsys.de -S dc -U Administrator
>    Administrator's password:
>    Using short domain name -- INFOTECSYS
>    Joined 'PDFSERVER' to realm 'INFOTECSYS.DE'
> -------------------------------------------------------------------
> 
> 
> Sorry if I wasted everyone's time. (May Google now help other people
> to find *that* cause for the error message of "Failed to set
> servicePrincipalNames. [...] Type or value exists"  as well... People
> remember to never set a different/wrong "netbios name" in smb.conf
> when you want to become part of an ADS...)

Hmmmm. Could we have detected that before hand and reported the
error ?

Jeremy.

               

l :iiQ
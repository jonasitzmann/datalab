From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 03:45:37 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l547jbhB024915
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 03:45:37 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 77A3516382C
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 07:45:31 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id E717E162AC0;
	Mon,  4 Jun 2007 07:44:54 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1Hv7FG-00061Y-IH; Mon, 04 Jun 2007 09:44:54 +0200
Received: by intern.SerNet.DE
	id 1Hv7FG-0000jH-98; Mon, 04 Jun 2007 09:44:54 +0200
Received: by intern.SerNet.DE
	id 1Hv7FF-0000jC-U2; Mon, 04 Jun 2007 09:44:54 +0200
Date: Mon, 4 Jun 2007 09:44:53 +0200
From: Michael Adam <ma@sernet.de>
To: "Stefan (metze) Metzmacher" <metze@samba.org>
References: <20070603202426.46323162ACD@lists.samba.org>
	<4663C222.6040000@samba.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <4663C222.6040000@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1Hv7FG-0000jH-98@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23317 - in branches/SAMBA_3_0/source: .
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l547jbhB024915

On Mon, Jun 04, 2007 at 09:41:22AM +0200, Stefan (metze) Metzmacher wrote:
> obnox@samba.org schrieb:
> > Author: obnox
> > Date: 2007-06-03 20:24:25 +0000 (Sun, 03 Jun 2007)
> > New Revision: 23317
> > 
> > WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23317
> > 
> > Log:
> > Fix the build: r23315 was a little overeager in removing the
> > INIPARSER_OBJ from the bin/net target altogether. I re-add it
> > in the guise of @BUILD_INIPARSER@ (to NET_OBJ). This also 
> > eliminates the need to have @BUILD_INIPARSER@ in the deps for
> > the bin/net target. 
> > Same procedure for the pam_winbindd module.
> 
> Thanks! It compiled for me as I have libiniparser installed...

Oh, I should have read through all new mails before replying
to the othe mail above... :-)

Michael

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

      

9w cl :D;in
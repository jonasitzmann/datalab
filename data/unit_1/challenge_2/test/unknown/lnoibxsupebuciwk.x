From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 10:03:35 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54E3YhB028774
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 10:03:34 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 530C816397B
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 14:03:28 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id A6E16162AC1;
	Mon,  4 Jun 2007 14:03:05 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1HvD9E-0005vW-OI; Mon, 04 Jun 2007 16:03:04 +0200
Received: by intern.SerNet.DE
	id 1HvD9E-0004DG-8Q; Mon, 04 Jun 2007 16:03:04 +0200
Received: by intern.SerNet.DE
	id 1HvD9D-0004DA-Pv; Mon, 04 Jun 2007 16:03:03 +0200
Date: Mon, 4 Jun 2007 16:03:03 +0200
From: Michael Adam <ma@sernet.de>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <20070604104048.8504C162AF7@lists.samba.org>
	<46640C66.9070109@samba.org>
	<E1HvCbl-0000j1-CD@intern.SerNet.DE> <466417EB.30206@samba.org>
	<E1HvCwJ-0002z9-IT@intern.SerNet.DE> <46641900.7090908@samba.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <46641900.7090908@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1HvD9E-0004DG-8Q@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: Volker Lendecke <Volker.Lendecke@sernet.de>,
   samba-technical@lists.samba.org, kseeger@samba.org
Subject: Re: svn commit: samba-docs r1120 - in trunk/smbdotconf/winbind: .
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l54E3YhB028774

On Mon, Jun 04, 2007 at 08:52:00AM -0500, Gerald (Jerry) Carter wrote:
> > On Mon, Jun 04, 2007 at 08:47:23AM -0500, Gerald (Jerry) Carter wrote:
> >> Michael Adam wrote:
> >>
> >>> For my taste, _all_ options that can be used in smb.conf
> >>> should also be listed in the smb.conf(5) manpager, possibly
> >>> marked winbindd or whatever appropriate. 
> >>>
> >>> But I understand smb.conf(5) a the compendium for all options.
> >> My main objection is that by this philosophy you would have
> >> to include all of the various VFS and imap plugin options as
> >> well.
> > 
> > Yes, indeed.
> 
> Do you mean that we should include all of the vfs and
> idmap plugin options in smb.conf ?  or that you agree with
> my objection ?

:-)

Well. That we shoulf include most if not all options.
I have to admit that I don't know all of the modules
or plugins. But at least for the more important ones - yes.

Well let's hear more grave voices than mine. :-)

Michael

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

      

l-Alvua
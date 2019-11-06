From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  1 11:11:14 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51FBDhB011352
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 1 Jun 2007 11:11:13 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 644BC163A4A
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  1 Jun 2007 15:11:08 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=3.8 tests=AWL,BAYES_00,
	UNPARSEABLE_RELAY autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 67A9D162AE7;
	Fri,  1 Jun 2007 15:10:48 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1Hu8m7-0002Qv-Ai; Fri, 01 Jun 2007 17:10:47 +0200
Received: by intern.SerNet.DE
	id 1Hu8m4-0008JA-Rp; Fri, 01 Jun 2007 17:10:44 +0200
Received: by intern.SerNet.DE
	id 1Hu8m4-0008Ij-KB; Fri, 01 Jun 2007 17:10:44 +0200
Date: Fri, 1 Jun 2007 17:10:44 +0200
From: Michael Adam <ma@sernet.de>
To: samba-technical@lists.samba.org, Jeremy Allison <jra@samba.org>
References: <20070531235857.303BC162AD4@lists.samba.org>
	<20070601034552.GB6218@jeremy-laptop>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20070601034552.GB6218@jeremy-laptop>
User-Agent: Mutt/1.5.9i
Message-Id: <E1Hu8m4-0008JA-Rp@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Re: svn commit: samba r23284 - in
	branches/SAMBA_3_0/source/nsswitch: .
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l51FBDhB011352

On Thu, May 31, 2007 at 08:45:52PM -0700, Jeremy Allison wrote:
> On Thu, May 31, 2007 at 11:58:57PM +0000, obnox@samba.org wrote:
> > Author: obnox
> > Date: 2007-05-31 23:58:56 +0000 (Thu, 31 May 2007)
> > New Revision: 23284
> > 
> > WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23284
> > 
> > Log:
> > Oh what a nasty typo! This gave me some headache,
> > with talloc randomly failing.
> > 
> > Hey, shouldn't TALLOC_ARRAY _not_ return NULL when
> > requested to allocate an array with zero entries? :-)
> 
> Yes it should at the moment. It should be calling
> _talloc_array_zeronull() under the covers in lib/util.c
> which explicitly does this.

Jeremy, note my subtle use of double negation. :-)
I just wanted to warm up the old topic... Sorry for annoying you. ;)

> Was this not happening for you ? I'd like you to
> debug that as I can't see a codepath for this not
> to happen.

It _did_ return NULL. This triggered a NT_STATUS_NO_MEMORY
since due to the typo fixed in r23284 cited above
it ran into the talloc_array part when it should not
(count being zero).

So everything is fine, I guess?!

Cheers, Michael

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

                   

4M/xGi-s
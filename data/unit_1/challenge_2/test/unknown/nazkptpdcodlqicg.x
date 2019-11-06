From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 16:13:48 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63KDlL9000876
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 16:13:47 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AA5CA162BC4
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 20:13:43 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 9E447162AC0; Tue,  3 Jul 2007 20:13:13 +0000 (GMT)
Date: Tue, 3 Jul 2007 13:13:11 -0700
From: Jeremy Allison <jra@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
Message-ID: <20070703201311.GE7578@samba1>
References: <20070703180057.28D47162BC5@lists.samba.org>
	<468AAB9F.6010504@samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <468AAB9F.6010504@samba.org>
User-Agent: Mutt/1.5.11
Cc: samba-technical@lists.samba.org, jra@samba.org
Subject: Re: svn commit: samba r23688 - in branches: SAMBA_3_0/source/passdb
	SAMBA_3_0_25/source/passdb SAMBA_3_0_26/source/passdb
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

On Tue, Jul 03, 2007 at 03:03:43PM -0500, Gerald (Jerry) Carter wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> jra@samba.org wrote:
> > Author: jra
> > Date: 2007-07-03 18:00:54 +0000 (Tue, 03 Jul 2007)
> > New Revision: 23688
> > 
> > WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23688
> > 
> > Log:
> > Fix bug #4759 reported by Raul <ismell@ismell.org>.
> > "N" is not a valid format entry for ber_printf, should be "n"
> > Jeremy.
> 
> Are you sure about this?  I thought volker looked up 'N' the
> other day and it was valid in OpenLDAP.  Maybe my memory is
> wrong though.

The man pages don't show an "N" format string, they only 
show "n" as :

              n  Null.  No parameter is required.  A null element is output.

What is 'N' supposed to emit ?

Jeremy.

                  

dmtXnmAib2yn18
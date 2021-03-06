From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jul  5 12:11:26 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65GBQL9028342
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 12:11:26 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DC39A1638EA
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  5 Jul 2007 16:11:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AFBE1162BDB;
	Thu,  5 Jul 2007 16:10:55 +0000 (GMT)
From: simo <idra@samba.org>
To: samba-technical@lists.samba.org
In-Reply-To: <468C979D.9030403@samba.org>
References: <20070705030659.CF38C162C44@lists.samba.org>
	<468C979D.9030403@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Thu, 05 Jul 2007 12:10:55 -0400
Message-Id: <1183651855.16700.62.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: samba-cvs@samba.org
Subject: Re: svn commit: samba r23718 -
	in	branches/SAMBA_4_0/source/dsdb/samdb/ldb_modules: .
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

On Thu, 2007-07-05 at 09:02 +0200, Stefan (metze) Metzmacher wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> abartlet@samba.org schrieb:
> > Author: abartlet
> > Date: 2007-07-05 03:06:59 +0000 (Thu, 05 Jul 2007)
> > New Revision: 23718
> > 
> > WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23718
> > 
> > Log:
> > Make Samba4 work against the LDAP backend again. 
> > 
> > When we set up the schema, we don't have a partitions container yet.
> > The LDAP error differs from that given by LDB, so I think we still
> > have some conformance work to do.
> 
> yes, the problem is that ldb_tdb returns just 0 search results, but
> success when the basedn isn't present. And it realy should return
> LDB_ERR_NO_SUCH_OBJECT in this case, but we have too many code not
> checking for LDB_ERR_NO_SUCH_OBJECT, so that we would break a lot
> if we would let ldb_tdb return LDB_ERR_NO_SUCH_OBJECT.

I think it is reasonable to change tdb to throw an error if the base
does not exists.
We need to deal with LDB_ERR_NO_SUCH_OBJECT as ldap backends can happily
return that. I will look into this as soon as I can carve some time for
it.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

                

0  efrC@ps 
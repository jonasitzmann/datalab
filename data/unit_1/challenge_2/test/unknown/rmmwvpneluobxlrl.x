From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 05:31:50 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l619VmL9031427
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 05:31:49 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 2BB39162C42
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 09:31:45 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 2C435162B70; Sun,  1 Jul 2007 09:31:00 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18055.29871.287402.503885@samba.org>
Date: Sun, 1 Jul 2007 19:32:31 +1000
To: Ignacio Coupeau <icoupeau@unav.es>
In-Reply-To: <46829705.1060606@unav.es>
References: <46636BD2.2080907@ubiqx.mn.org>
	<1180928441.24923.240.camel@localhost.localdomain>
	<46814AD2.6070600@unav.es> <18049.33490.390117.662780@samba.org>
	<468220AF.9040504@unav.es> <E1I3TyW-0004zs-8O@intern.SerNet.DE>
	<46829705.1060606@unav.es>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: Volker.Lendecke@SerNet.DE, samba-tech <samba-technical@lists.samba.org>
Subject: Re: [CTDB and GFS] some troubles joining domain
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: tridge@samba.org
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

Ignacio,

 > then I think that tdb is not initialized and tdb-> points nothing:

yep, it looks like there is no secrets_init() in the "net rpc join"
code paths in this branch.

The obvious fix is this:

--- source/passdb/secrets.c     2007-05-31 05:57:51 +0000
+++ source/passdb/secrets.c     2007-07-01 09:31:32 +0000
@@ -615,6 +615,10 @@
        uint32 last_change_time;
        uint32 sec_channel_type;

+       if (!secrets_init()) {
+               return False;
+       }
+
        if (tdb_transaction_start(tdb) == -1) {
                DEBUG(5, ("tdb_transaction_start failed: %s\n",
                          tdb_errorstr(tdb)));

but I'd like to understand why this isn't needed in the SAMBA_3_0
branch - Volker, any ideas what has diverged here?

Cheers, Tridge

               

mb tjt8tdqu
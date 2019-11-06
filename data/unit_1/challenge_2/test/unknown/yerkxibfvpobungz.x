From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 12:16:35 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5CGGZL9029044
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 12:16:35 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 8C58A16382C
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 16:16:34 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mx.in-addr.de (gate.in-addr.de [212.8.193.158])
	by lists.samba.org (Postfix) with ESMTP id 4AEE9162AC0
	for <samba-technical@lists.samba.org>;
	Tue, 12 Jun 2007 16:15:46 +0000 (GMT)
Received: by mx.in-addr.de (mx.in-addr.de, from userid 10)
	id 44B5D196F6; Tue, 12 Jun 2007 18:15:38 +0200 (CEST)
Received: by hermes.in-addr.de (Postfix, from userid 500)
	id CD72F52D4F; Tue, 12 Jun 2007 18:15:16 +0200 (CEST)
Date: Tue, 12 Jun 2007 18:15:16 +0200
From: Lars Marowsky-Bree <lmb@suse.de>
To: tridge@samba.org,
   High-Availability Linux Development List
	<linux-ha-dev@lists.linux-ha.org>
Message-ID: <20070612161516.GS27088@marowsky-bree.de>
References: <18030.8115.792109.279880@samba.org>
	<20070612091820.GE27088@marowsky-bree.de>
	<18030.30871.182414.914955@samba.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <18030.30871.182414.914955@samba.org>
X-Ctuhulu: HASTUR
User-Agent: Mutt/1.5.9i
Cc: sahlberg@samba.org, samba-technical@lists.samba.org
Subject: Re: [Linux-ha-dev] CTDB and clustered Samba
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

On 2007-06-12T20:42:31, tridge@samba.org wrote:

>  > CTDB is built on top of a cluster filesystem layer.
> not quite - CTDB relies on one being there, but doesn't actually use
> it much itself. CTDB opens exactly 1 file on the cluster fs, that file
> never has any data in it, and CTDB holds exactly 1 byte of lock on
> that file on one of the nodes. That's it. That file is the key to CTDB
> ensuring that it has the same view of the topology of the cluster as
> the filesystem does.

OK. So you're using the CFS as a DLM. Expensive, but possible. ;-)

(That also means that with OCFS2, you can't do that; it doesn't have
cluster-wide flock yet, _but_ it allows you to access it's DLM via
dlmfs, so that could be used.)

> This all means that Samba on a CTDB cluster runs just as fast as
> non-clustered Samba for most operations. That's very hard to achieve
> with the normal approach to clustering.

No, not at all. DLM usually also cache locks mastered locally.

(I know your lock semantics are very complex, but I'm just sayin' ;-)

> Then I realised _why_ they all are so bad. When you write some data to
> a cluster fs, or a cluster database, and the node you wrote to dies
> immediately after it replies, then the developers of that cluster fs
> want to guarantee that the data you wrote is not lost. That's what
> they mean by a reliable clustering system. 

After an fsync, or with O_DIRECT etc, sure, but otherwise, no.

> How do they provide this guarantee? They either have to ensure the
> data is committed to stable shared storage (pieces of metal or very
> slow shared nv-ram) or they need to replicate the data to all nodes
> before they reply. That is the only way to provide that guarantee.

Well, attaching the page to the DLM reply makes that replication
basically free, at least in terms of latency.

> The thing is, Samba on CTDB does not need that guarantee. Samba needs
> to guarantee that user data is not lost. Samba is quite happy to lose
> certain well defined pieces of the meta-data associated with its
> connections. Knowing exactly what you can safely lose is the key to
> CTDB. It turns out that the data that CTDB can lose is the data that
> is most frequently updated and written, so by designing a system where
> we can lose that data, we remove the biggest bottleneck.

Sure, that makes sense. Can you elaborate on this a bit more?


> you are welcome to try. I spent years trying to get these services to
> get good enough for Samba to use. The problems that cluster
> filesystems try to solve and the problems that Samba+CTDB try to solve
> are different enough that trying to build one on the other doesn't
> work.

OK, I'm not questioning your judgement and experience, I'm just trying
to understand why, and what we might be able to accomodate (as we're
looking at switching commlayers anyway). Or, if you're right, what we
could reuse - as the Linux HA v2 code has a "CIB" (cluster information
base) which is a replicated/distributed db thingy too, maybe we could
reuse parts of the CTDB or something ;-)

> Basically the perfect transport for CTDB is TCP or a similar stream
> transport, and luckily enough that's pretty widely available, so I'm
> happy to use it :-)

TCP in a controlled LAN environment likely performs pretty well, yes.
But you will open N:N connections in your cluster as well, no? Don't you
need some broadcasts?

Or easier - is there a document I can read which outlines the CTDB
requirements?

> I guess you could write a CTDB backend that uses openAIS messaging
> (the backends are pluggable in CTDB). If someone tries that then I'd
> be interested in hearing how it goes. I'll be quite surprised if it
> does any better than what we do now, and I actually expect it will do
> worse, as it means two layers of event driven programming rather than
> one, and extra layers of marshalling, extra layers of error handling
> etc.

Right, just like TCP on TCP is a bad idea I expect this would be as
well. (Just like the misdesigned approach to try running heartbeat's
native comm layer on top of openAIS; it's the same stacking issue.)

Using openAIS instead of TCP is guaranteed to yield exceptional
performance, unfortunately of the negative kind. The interesting bit
might be to instead directly use openAIS as the comm layer.

Even if that isn't possible, I'd like to understand why, as that would
be valuable experience when assessing different comm layers. Have you
wrote up your criticism on existing clustering stacks somewhere? 

If not, that's a conference paper I'd fly a few miles for to attend the
presentation ;-)


Regards,
    Lars

-- 
Teamlead Kernel, SuSE Labs, Research and Development
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG N�rnberg)
"Experience is the name everyone gives to their mistakes." -- Oscar Wilde

          

t<et/e
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun  3 15:19:32 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53JJVhB018817
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 15:19:32 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4CF5D162BE3
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  3 Jun 2007 19:19:26 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,
	RCVD_IN_BLARS_RBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from rwcrmhc12.comcast.net (rwcrmhc12.comcast.net [204.127.192.82])
	by lists.samba.org (Postfix) with ESMTP id A73B1162AD6
	for <samba-technical@samba.org>; Sun,  3 Jun 2007 19:19:14 +0000 (GMT)
Received: from [192.168.101.21]
	(c-71-195-35-115.hsd1.mi.comcast.net[71.195.35.115])
	by comcast.net (rwcrmhc12) with ESMTP
	id <20070603191359m1200cqk69e>; Sun, 3 Jun 2007 19:14:00 +0000
Message-ID: <466312ED.3060309@ubiqx.mn.org>
Date: Sun, 03 Jun 2007 14:13:49 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: ronnie sahlberg <ronniesahlberg@gmail.com>
References: <517eb05c0705271430q471246a9jac9cd62775dafc2c@mail.gmail.com>	<18010.6363.787216.619457@samba.org>	<517eb05c0705271903k720873a1hee666908f8977e00@mail.gmail.com>	<465A51D4.70503@ubiqx.mn.org>
	<c9a3e4540706030001m1499fd91ub98b2b097de195@mail.gmail.com>
In-Reply-To: <c9a3e4540706030001m1499fd91ub98b2b097de195@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: first swipe at ctdb spec file
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

ronnie sahlberg wrote:
> Hi Chris,

Hi, Ronnie.

> CTDB is, as always, in flux but a few good places to start at would be
> 
> http://ctdb.samba.org/
> http://wiki.samba.org/index.php/CTDB_Setup
> http://wiki.samba.org/index.php/CTDB_Project
> 
> which would describe how to set up a cluster with pCIFS

Quick question:  is this the pCIFS that Peter Brahm started working on a few
years back or something different?

> You do need at least two physical nodes and a cluster filesystem that
> provides a shared storage for the two nodes.

I'm interested in the API at present.

> Please feel free to help us improve the wiki and also we would love to
> hear from experiences using other cluster filesystems for the backend
> than the one we are primarily testing on.

I'm working with the folks who wrote GFS for Linux.  Our focus is elsewhere
at the moment but I will keep this in mind.

> Have fun. This is the next big thing.

Looks like it.  :)

Chris -)-----
PS.  I've been playing with Microsoft's BITS protocol.  WireShark could
     use a dissector for this.  (Should be easy.)

-- 
"Implementing CIFS - the Common Internet FileSystem" ISBN: 013047116X
Samba Team -- http://www.samba.org/     -)-----   Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/   -)-----   ubiqx development, uninq.
ubiqx Team -- http://www.ubiqx.org/     -)-----   crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/    -)-----   crh@ubiqx.org

        

4ng isk
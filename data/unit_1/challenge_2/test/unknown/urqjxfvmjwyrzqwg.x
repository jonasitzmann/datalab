From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 26 10:16:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QEG6L9011877
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 10:16:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 638101638CC
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 26 Jun 2007 14:16:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from deployingradius.com (www.deployingradius.com [216.240.42.17])
	by lists.samba.org (Postfix) with ESMTP id D232B16387A;
	Tue, 26 Jun 2007 14:13:30 +0000 (GMT)
Received: from [10.0.1.52] (alexander.quiconnect.net [213.30.156.62])
	by deployingradius.com (Postfix) with ESMTP id 6AC67A704B;
	Tue, 26 Jun 2007 07:13:27 -0700 (PDT)
Message-ID: <46811F05.7090701@ox.org>
Date: Tue, 26 Jun 2007 16:13:25 +0200
From: Alan DeKok <aland@ox.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: "Gerald (Jerry) Carter" <jerry@samba.org>
References: <467EF15A.4080701@samba.org>	<1182729701.2895.8.camel@localhost.localdomain>	<467FCAE7.3050306@samba.org>	<1182780800.2895.22.camel@localhost.localdomain>	<467FD38A.6020802@samba.org>
	<1182782825.2895.28.camel@localhost.localdomain>
	<467FDB15.5060903@ox.org> <467FE2A8.70602@samba.org>
	<4680E017.1020307@ox.org> <4681145A.9090409@samba.org>
In-Reply-To: <4681145A.9090409@samba.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: simo <idra@samba.org>, samba-technical@samba.org
Subject: Re: Short HOWTO on using git for Samba development
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: aland@ox.org
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

Gerald (Jerry) Carter wrote:
...
>> http://wiki.darcs.net/index.html/Tailor
> 
>> Which looks like it can handle conversions between all 
>> version control systems.
> 
> I've seen but it not tried it yet.  Any comments on how well
> it works?

  I tried it a while ago for CVS to Mercurial conversion.  It didn't
handle branches of branches.  But other than that, it was pretty
seamless, and fairly fast.

  Alan DeKok.

 

KotdyL
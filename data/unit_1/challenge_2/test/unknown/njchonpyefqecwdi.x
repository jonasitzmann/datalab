From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 00:39:04 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l544d3hB023406
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 00:39:03 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id CEF811638B0
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 04:38:57 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,
	RCVD_IN_BLARS_RBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 33868 seconds by postgrey-1.24 at dp.samba.org;
	Mon, 04 Jun 2007 04:38:30 GMT
Received: from rwcrmhc13.comcast.net (rwcrmhc13.comcast.net [216.148.227.153])
	by lists.samba.org (Postfix) with ESMTP id EF4FA162ACD;
	Mon,  4 Jun 2007 04:38:29 +0000 (GMT)
Received: from [192.168.101.191]
	(c-71-195-35-115.hsd1.mn.comcast.net[71.195.35.115])
	by comcast.net (rwcrmhc13) with ESMTP
	id <20070604043828m1300f3t2ve>; Mon, 4 Jun 2007 04:38:28 +0000
Message-ID: <46639739.1040102@ubiqx.mn.org>
Date: Sun, 03 Jun 2007 23:38:17 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: ronnie sahlberg <ronniesahlberg@gmail.com>
References: <517eb05c0705271430q471246a9jac9cd62775dafc2c@mail.gmail.com>	
	<18010.6363.787216.619457@samba.org>	
	<517eb05c0705271903k720873a1hee666908f8977e00@mail.gmail.com>	
	<465A51D4.70503@ubiqx.mn.org>	
	<c9a3e4540706030001m1499fd91ub98b2b097de195@mail.gmail.com>	
	<466312ED.3060309@ubiqx.mn.org>
	<18019.13041.277110.609886@samba.org>	
	<4663608B.3040103@ubiqx.mn.org>
	<c9a3e4540706031843s300fd456vdd762967b3528aa7@mail.gmail.com>
In-Reply-To: <c9a3e4540706031843s300fd456vdd762967b3528aa7@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: tridge@samba.org, samba-technical@samba.org
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
> There is currently no pCIFS   so I "took" the name. :-)

Hmmm...

It's a good name to take, but...
- I think it'll cause some people to confuse the behavior of your pCIFS
  with that of pNFS.
- As I mentioned, Peter Bram did put out something (a proposal, at least)
  using the name pCIFS.  People in the pNFS community are using the name
  pCIFS when they talk about something that'd behave like pNFS.

As with the "Samba" name, my guess is that something better will come along.

> please try it out.
> it is pretty cool stuff.

I hope to do so.  It's all about available time and (at the moment)
customers.  :)

Chris -)-----

-- 
"Implementing CIFS - the Common Internet FileSystem"    ISBN: 013047116X
Samba Team -- http://www.samba.org/    -)-----     Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/  -)-----  ubiqx development, uninq
ubiqx Team -- http://www.ubiqx.org/    -)-----          crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/   -)-----             crh@ubiqx.org

          

o=l.go KMtf
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 05:36:06 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l569a5hB019878
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 05:36:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D51B7162C1E
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 09:35:59 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 2DCA6162ACC; Wed,  6 Jun 2007 09:35:24 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18022.32796.218979.239891@samba.org>
Date: Wed, 6 Jun 2007 19:36:28 +1000
To: Henrik Nordstrom <henrik@henriknordstrom.net>
In-Reply-To: <1181120497.22989.7.camel@henriknordstrom.net>
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>
	<1180906540.24923.198.camel@localhost.localdomain>
	<46636B0C.2030202@samba.org>
	<1180928372.24923.238.camel@localhost.localdomain>
	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>
	<18021.64361.164851.672386@samba.org>
	<5A8F8CFA-D862-4C8D-8134-A88913D85DED@samba.org>
	<Pine.LNX.4.64.0706052130040.22014@dolby.south.ad.plainjoe.org>
	<18022.10164.545376.678905@samba.org>
	<1181120497.22989.7.camel@henriknordstrom.net>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: Samba Technical <samba-technical@lists.samba.org>
Subject: Re: getting rid of mkproto.sh from Samba3
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

Henrik,

 > gcc -Wmissing-prototypes
 > 
 > a gcc option every programmer should use.

that looks very useful, thanks!

hmm, strangely enough, we have a check for it in check_cc.m4, but its
commented out. Metze or Jelmer, do you happen to know why its
disabled?

Cheers, Tridge

                   

t.dEft 
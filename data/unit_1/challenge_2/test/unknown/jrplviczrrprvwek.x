From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 06:42:59 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56AgxhB020423
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 06:42:59 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5FE7E1638C9
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 10:42:53 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 5089E162ACC; Wed,  6 Jun 2007 10:42:29 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18022.36656.795771.738350@samba.org>
Date: Wed, 6 Jun 2007 20:40:48 +1000
To: "Stefan (metze) Metzmacher" <metze@samba.org>
In-Reply-To: <46668E09.7080506@samba.org>
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>
	<1180906540.24923.198.camel@localhost.localdomain>
	<46636B0C.2030202@samba.org>
	<1180928372.24923.238.camel@localhost.localdomain>
	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>
	<18021.64361.164851.672386@samba.org>
	<5A8F8CFA-D862-4C8D-8134-A88913D85DED@samba.org>
	<46668E09.7080506@samba.org>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, simo <idra@samba.org>,
   samba-technical@lists.samba.org
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

Metze,

 > But I think we can do better if we commit the public one's to svn
 > and don't generate them by the normal 'make'.
 > 
 > To keep information only in one place we should improve mkproto.pl
 > to also copy doxxygen comments into the proto header.
 > Then we should add a the need of on exlicit 'make
 > regenerate_public_headers', which will print out warnings about
 > changed headers.

ahh, that sounds really good!

 > I had also planed to a some diagnostic checks into the samba4 build
 > system, to automaticly check that the subsystem public header (
 > not only the public proto header) is self containing with the specified
 > public dependencies.
 > And it'll also check a subsystem links fine only using it's public and
 > private dependencies.

yep, that would be very good too. I bet it would find some errors.

Cheers, Tridge

                   

lh0ShF0J
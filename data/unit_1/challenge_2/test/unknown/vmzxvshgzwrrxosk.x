From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jul  2 23:33:20 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l633XKL9022985
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 23:33:20 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9E4B3162C45
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 03:33:16 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id D10E4162ACB; Tue,  3 Jul 2007 03:32:34 +0000 (GMT)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18057.50094.899578.56529@samba.org>
Date: Tue, 3 Jul 2007 13:34:06 +1000
To: Andrew Bartlett <abartlet@samba.org>
In-Reply-To: <1183431140.3665.20.camel@localhost.localdomain>
References: <46882785.3060308@verizon.net>
	<1183425429.3665.14.camel@localhost.localdomain>
	<18057.45742.634311.748903@samba.org>
	<1183431140.3665.20.camel@localhost.localdomain>
X-Mailer: VM 7.19 under Emacs 22.0.95.1
From: tridge@samba.org
Cc: samba-technical@lists.samba.org, Matt Schwartz <mes5048@verizon.net>
Subject: Re: Samba4 MMC Write Support
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

Andrew,

 > We shouldn't expose our tdbs that way, but I think the default provision
 > should include both shares, with the setup you describe below already
 > done. 

I didn't mean the tdb's would be exposed - I meant a sysvol
subdirectory in the same directory, or another permanent
directory. For example, in $PREFIX/share/sysvol (ie. ${DATADIR}/sysvol
in the Makefile).

Cheers, Tridge

        

b=Bcd eeu
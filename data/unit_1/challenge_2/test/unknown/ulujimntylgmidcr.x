From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 12:02:40 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PG2dL9030805
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 12:02:39 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id E27A9162AE8
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 16:02:33 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_DSBL,RCVD_IN_SORBS_DUL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.plainjoe.org (68-117-186-136.dhcp.mtgm.al.charter.com
	[68.117.186.136])
	by lists.samba.org (Postfix) with ESMTP id 7A010162AD4;
	Mon, 25 Jun 2007 16:02:03 +0000 (GMT)
Received: from [192.168.1.47] (oak.plainjoe.org [192.168.1.47])
	by mail.plainjoe.org (Postfix) with ESMTP id 2DDDF2F030;
	Mon, 25 Jun 2007 11:02:03 -0500 (CDT)
Message-ID: <467FE6FA.60905@samba.org>
Date: Mon, 25 Jun 2007 11:02:02 -0500
From: "Gerald (Jerry) Carter" <jerry@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: simo <idra@samba.org>
References: <20070625144059.E8F1F162AC1@lists.samba.org>	
	<E1I2q9s-0000Fr-PH@intern.SerNet.DE> <467FE0CE.1090609@samba.org>	
	<E1I2qil-0008RK-6i@intern.SerNet.DE>
	<1182786615.2895.31.camel@localhost.localdomain>
In-Reply-To: <1182786615.2895.31.camel@localhost.localdomain>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Volker.Lendecke@SerNet.DE, samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23597 - in	branches/SAMBA_3_0/source/script:
 .
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Simo,

> On Mon, 2007-06-25 at 17:43 +0200, Volker Lendecke wrote:
>> On Mon, Jun 25, 2007 at 10:35:42AM -0500, Gerald (Jerry) Carter wrote:
>>>> Wait a second -- what is going on HERE???
>>> Just reporting.    See my mail to samba-technical.
>> I was just extremely surprised as it seems that I have been
>> the only one interested in the 80-column thing so far.
> 
> I always found annoying to be cramped in 80 columns 
> when my terminals are usually between 130 and 200 chars
> wide, but if we make it a policy to be so constrained
> then so be it.

I'm really just raising the discussion.   I think we just
need agreement.  We have too much code reformatting (based
on personal preference) in our patches.   There's been a
loose agreement on formatting in the past and I've never
been a big fan of Coding Style rules.  But as we try to
expand the developer pool, an unspoken agreement is insufficient.






cheers, jerry
=====================================================================
Samba                                    ------- http://www.samba.org
Centeris                         -----------  http://www.centeris.com
"What man is a man who does not make the world better?"      --Balian
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGf+b6IR7qMdg1EfYRAmwcAKCsKuAzjDNqj4osEcBHMqaaKnM5LACglfee
/zGEB12sRUtRahqCMv7uUX4=
=A5S7
-----END PGP SIGNATURE-----

               

  ts
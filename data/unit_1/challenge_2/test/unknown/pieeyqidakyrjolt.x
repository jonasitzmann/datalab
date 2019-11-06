From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 18:46:00 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MMk0L9010115
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 18:46:00 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 596A516383E
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 15:46:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mthelena.ber.redhat.com (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 1041716383E;
	Fri, 22 Jun 2007 15:45:59 +0000 (GMT)
Message-ID: <467BEE9C.10200@samba.org>
Date: Fri, 22 Jun 2007 17:45:32 +0200
From: Guenther Deschner <gd@samba.org>
Organization: Samba Team
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: kurt.pfeifle@infotec.com
References: <467BE8BD.2000704@infotec.com>
In-Reply-To: <467BE8BD.2000704@infotec.com>
X-Enigmail-Version: 0.95.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Cc: samba-technical@lists.samba.org
Subject: Re: Joining AD domain fails: "Failed to set servicePrincipalNames.
 [...] Type or value exists"
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

Hi Kurt,

Kurt Pfeifle wrote:
> Hi, list,
> 
> I'm having a problem to join a current Debian Sid/unstable system
> (running Samba 3.0.25a) to an AD domain (where the DC is a Windows
> 2003 Server with SP2):

yeah, I've seen this happen also. This usually is caused as samba tries
to add the same SPN twice (where the 2nd is caused by a fauled
name_to_fqdn call).


Can you run your join with debug level 10 set and see if that is the
case ? pdfserver and pdfserver.infotecsys.de probably need to resolve to
an ip-address.

Guenther
- --
G�nther Deschner                    GPG-ID: 8EE11688
Red Hat                         gdeschner@redhat.com
Samba Team                              gd@samba.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.7 (GNU/Linux)
Comment: Using GnuPG with Fedora - http://enigmail.mozdev.org

iD8DBQFGe+6cSOk3aI7hFogRAtA+AJ9MJdzUMoLk6N2ioYN3hFf9Z9j8TgCfZ3pP
Gj9dUiV6z5CmcTzZebSVQJE=
=jd/S
-----END PGP SIGNATURE-----

              

pETaV7,i:3 Bw,u
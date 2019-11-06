From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jul  1 17:40:19 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61LeJL9005633
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 17:40:19 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 43A64162C42
	for <ktwarwic@speedy.uwaterloo.ca>; Sun,  1 Jul 2007 21:40:15 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=3.8 tests=AWL,BAYES_40,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from rwcrmhc13.comcast.net (rwcrmhc13.comcast.net [204.127.192.83])
	by lists.samba.org (Postfix) with ESMTP id E7D67162AFD
	for <samba-technical@lists.samba.org>;
	Sun,  1 Jul 2007 21:39:36 +0000 (GMT)
Received: from [192.168.101.21]
	(c-71-195-35-115.hsd1.mi.comcast.net[71.195.35.115])
	by comcast.net (rwcrmhc13) with ESMTP
	id <20070701213923m13006hdtqe>; Sun, 1 Jul 2007 21:39:23 +0000
Message-ID: <46881F01.6010605@ubiqx.mn.org>
Date: Sun, 01 Jul 2007 16:39:13 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: seatec <seatec-astronomy@gmx.de>
References: <46878B2D.7070308@gmx.de> <4687FBAF.6020404@ubiqx.mn.org>
	<46881987.2060509@gmx.de>
In-Reply-To: <46881987.2060509@gmx.de>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@lists.samba.org
Subject: Re: win2k3 to win98
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

seatec wrote:
> Hi Chris,
> 
> thanks for your reply. When I first read it I thought "he wants me to
> rtfm. great reply". I have (and also read) your book and done my fare
> share of basic cifs auth coding. I know the davenport site, but I didnt
> know the ms link. That one was nice, and finally helped me find the
> solution.

Well...  From your message I didn't see that you were clear on the
distinctions between the hash types and I thought you might want/need to
read that material.  I'm glad the ms link was useful.

> Where winxp(and earlier) uses the plaintext --(DES)--> LM hash
> --(DES)--> Ntlm hash scheme, Win2k3 uses the passwords md4 hash
> --(DES)--> Ntlm hash. So the first step is different, the second is not.

I'd like to get a clearer explanation here.  The NTLM hash is never created
using DES.  It is always done using MD4.  Above, you have the NTLM has being
derived from the LM hash.  Do you mean the NTLM response?  What you have
there doesn't describe any scheme I know.

> What really confused me is that winxp and win2k3 sent exactly the same
> packet, but a different password hash, and both actually worked.

The password hash is *never* sent.  The information sent to the server is
the encryption of the challenge (called the "response").  On older systems,
the first field is typically the LM response (the challenge encrypted using
the LM hash) and the second field is typically the NTLM response (the
challenge encrypted using the NTLM hash).

In some cases (if the client has been configured to not send the LM
response) the first and second field will both contain the NTLM response.

If more advanced authorization is required, then the client will send the
LMv2 response in the first field and the (very large) NTLMv2 response in the
second field.

Beyond that we get into "Extended Security" which is probably beyond what
you are trying to work on.

> Thanks for pointing that ms link out to me. It's sunday night and I
> spent many hours on this problem this weekend. Seeing it solved before
> the time ran out(too busy during the week) made my day(well, night).

Hope it helps.

Chris -)-----

-- 
"Implementing CIFS - the Common Internet FileSystem" ISBN: 013047116X
Samba Team -- http://www.samba.org/     -)-----   Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/   -)-----   ubiqx development, uninq.
ubiqx Team -- http://www.ubiqx.org/     -)-----   crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/    -)-----   crh@ubiqx.org

      

ialfl>U
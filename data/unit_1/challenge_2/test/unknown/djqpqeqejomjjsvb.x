From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jul  1 04:28:06 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l618S5L9030774
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 04:28:05 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id B48D52DF2B; Sun,  1 Jul 2007 08:28:18 +0000 (UTC)
Old-Return-Path: <gerv@mozilla.org>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,LDOSUBSCRIBER 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from pih-relay05.plus.net (pih-relay05.plus.net [212.159.14.132])
	by murphy.debian.org (Postfix) with ESMTP id 33E5F2DDF7
	for <debian-legal@lists.debian.org>; Sun,  1 Jul 2007 08:28:14 +0000 (UTC)
Received: from [80.229.30.161] (helo=[10.0.0.100])
	 by pih-relay05.plus.net with esmtp (Exim) id 1I4umg-00041J-CQ; Sun, 01 Jul 2007 09:27:54 +0100
Message-ID: <46877398.1020602@mozilla.org>
Date: Sun, 01 Jul 2007 10:27:52 +0100
From: Gervase Markham <gerv@mozilla.org>
User-Agent: Thunderbird 2.0.0.0 (X11/20070326)
MIME-Version: 1.0
To: Steve Langasek <vorlon@debian.org>,
   Debian-legal <debian-legal@lists.debian.org>
Subject: Re: Final text of GPL v3
References: <20070630004759.47295a6f.frx@firenze.linux.it> <20070630220645.GF4404@dario.dodds.net>
In-Reply-To: <20070630220645.GF4404@dario.dodds.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <iT_c9C.A.K3G.iW2hGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36795
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  1 Jul 2007 08:28:18 +0000 (UTC)

Steve Langasek wrote:
> WTF, seriously?  Reading this makes me want to go write some new code,
> license it under the GPLv3 with some random and arbitrary prohibition, and
> watch someone at the FSF try to argue that the additional restriction has no
> legal force.
> 
> Not non-free, just incredibly goofy; I understand the motivation, I just
> don't see how anyone would actually think this would address the problem.

It certainly addresses the problem. Let's look at the two possibilities:

Before:
   GPL (either explicitly or implicitly): you can do X
   Restriction: you can't do X

Result - conflict and confusion; non-redistributable code

After:
   GPL (either explicitly or implicitly): you can do X
   GPL: If I say you can't do X, you can ignore me
   Restriction: you can't do X

Result - the license is consistent, although it has one part which 
nullifies another part. This is similar to clauses of the form "The 
previous part of this clause does not apply if you are wearing blue 
underwear".

If you (in your example) license under GPLv3 + restriction, then by 
picking GPLv3 you are giving me, the recipient of the code, permission 
to remove the restriction. If you didn't want to give me that 
permission, you shouldn't have used GPLv3 - just as if you didn't want 
to give me permission to link my code with the Affero GPL (to take one 
example of many), you shouldn't have used GPLv3.

Gerv


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org



adI=e
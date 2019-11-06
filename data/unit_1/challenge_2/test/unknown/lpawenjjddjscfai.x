From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun  7 19:17:53 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57NHqhB008296
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 19:17:52 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E9BCA2DFD4; Thu,  7 Jun 2007 23:17:20 +0000 (UTC)
Old-Return-Path: <debian@thewolery.demon.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,LDOSUBSCRIBER autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from anchor-post-35.mail.demon.net (anchor-post-35.mail.demon.net [194.217.242.85])
	by murphy.debian.org (Postfix) with ESMTP id B03762DD8F
	for <debian-legal@lists.debian.org>; Thu,  7 Jun 2007 23:17:15 +0000 (UTC)
Received: from dyn-62-56-86-155.dslaccess.co.uk ([62.56.86.155] helo=thewolery.demon.co.uk)
	by anchor-post-35.mail.demon.net with esmtpa (AUTH thewolery)
	(Exim 4.42)
	id 1HwREX-000Hoz-HQ
	for debian-legal@lists.debian.org; Thu, 07 Jun 2007 23:17:37 +0000
Message-ID: <dsvZWBO0GJaGFwiu@thewolery.demon.co.uk>
Date: Fri, 8 Jun 2007 00:16:04 +0100
To: debian-legal@lists.debian.org
From: "Anthony W. Youngman" <debian@thewolery.demon.co.uk>
Subject: Re: Bacula: GPL and OpenSSL
References: <20070607161921.GA31193@excelhustler.com>
 <20070607.105039.74754877.walter@geodynamics.org>
 <20070607181511.GA1025@excelhustler.com>
In-Reply-To: <20070607181511.GA1025@excelhustler.com>
MIME-Version: 1.0
Content-Type: text/plain;charset=us-ascii;format=flowed
User-Agent: Turnpike/6.05-U (<0DX6TNJ4PTyYO3mv42R+2+AEOU>)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <b6A7tB.A.Q4F.AIJaGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36659
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Thu,  7 Jun 2007 23:17:20 +0000 (UTC)

In message <20070607181511.GA1025@excelhustler.com>, John Goerzen 
<jgoerzen@complete.org> writes
>On Thu, Jun 07, 2007 at 10:50:39AM -0700, Walter Landry wrote:
>> John Goerzen <jgoerzen@complete.org> wrote:
>> > Kern believes that he must remove the explicit OpenSSL exemption from
>> > the license in order to be fully GPL-compliant, and it appears that FSFE
>> > agrees.
>>
>> I just read the contents of
>>
>>   /usr/share/doc/bacula-director-sqlite/copyright
>>
>> I have reproduced it below for debian-legal.  The Linking section,
>> which is needed for linking with OpenSSL, is not a problem for
>> GPL-compatibility.  The other parts may or may not be a problem, and
>> indeed seem superfluous, but all that is needed is the Linking
>> section.
>
>But the problem is that parts of Bacula's code are copyrighted by third
>parties, and licensed under plain GPL (or Kern's license before he added
>this exception), and may be unreachable for obtaining permission to
>relicense with this exception.  (Kern, have you tried contacting them?)

The "Kern's licence" thingy isn't a problem.

If I, for example, release a load of code under the GPL, and then later 
say "I'm releasing all my code - *including stuff already out there* - 
under the GPL", the fact that there may be loads of stuff of mine out 
there saying "GPL" is irrelevant.

Anybody can now either add a copy of my statement about the LGPL to the 
licencing file, or add a pointer to my statement, and then they can take 
any of my code that claims to be GPL'd and use it under the LGPL.

So if Kern has said that the addition of this extra freedom "applies to 
all his code in Bacula", then anybody can add a copy of this statement 
to COPYING.TXT and be covered.

Cheers,
Wol
-- 
Anthony W. Youngman - anthony@thewolery.demon.co.uk


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                  

7
tr1i 
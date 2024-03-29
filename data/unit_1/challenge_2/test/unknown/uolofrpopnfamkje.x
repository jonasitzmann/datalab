From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 22 18:34:28 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MMYQL9009909
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 18:34:26 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E79B12E720; Fri, 22 Jun 2007 22:34:02 +0000 (UTC)
Old-Return-Path: <mdpoole@troilus.org>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,LDOSUBSCRIBER,MURPHY_DRUGS_REL8 autolearn=ham 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from sanosuke.troilus.org (24-75-174-210-st.chvlva.adelphia.net [24.75.174.210])
	by murphy.debian.org (Postfix) with ESMTP id 591F52E35D
	for <debian-legal@lists.debian.org>; Fri, 22 Jun 2007 22:33:58 +0000 (UTC)
Received: by sanosuke.troilus.org (Postfix, from userid 1000)
	id 9DA5489C047; Fri, 22 Jun 2007 18:34:14 -0400 (EDT)
To: debian-legal@lists.debian.org
Cc: John Goerzen <jgoerzen@complete.org>, Kern Sibbald <kern@sibbald.com>
Subject: Re: Bacula: GPL and OpenSSL
References: <20070607161921.GA31193@excelhustler.com>
	<200706072353.20212.kern@sibbald.com>
	<878xav74up.fsf@graviton.dyn.troilus.org>
	<200706222221.29803.kern@sibbald.com>
	<20070622203820.GA2853@excelhustler.com>
From: Michael Poole <mdpoole@troilus.org>
Date: Fri, 22 Jun 2007 18:34:14 -0400
In-Reply-To: <20070622203820.GA2853@excelhustler.com> (John Goerzen's message of "Fri\, 22 Jun 2007 15\:38\:20 -0500")
Message-ID: <87wsxvobyx.fsf@graviton.dyn.troilus.org>
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/22.1.50 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <Ds-qvC.A.cZH.a5EfGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36708
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Fri, 22 Jun 2007 22:34:02 +0000 (UTC)

John Goerzen writes:

> On Fri, Jun 22, 2007 at 10:21:29PM +0200, Kern Sibbald wrote:
>> 
>> In the mean time, I sincerely hope that Debian finds some way to continue 
>> releasing Bacula.
>
> It sounds like Debian will simply have to disable the SSL support in
> Bacula, yes?  (this is a question to -legal)

Barring other solutions, yes.  But I hope there is a solution:

libgnutls has an OpenSSL compatibility mode.  I don't know if it
provides all the features that Bacula requires; in my software it was
easy to add a configure-time choice between the two.  Since gnutls is
licensed under LGPLv2.1+ and GPLv2+ (varying by component), there
should be no license concerns when using it with other GPLed code.

Having already put my foot in this mess, I will try that out with the
goal of producing patches this weekend, unless Kern, John or someone
else prefers to investigate for themselves.  I may miss some run-time
cases (I don't currently use Bacula), but hopefully the input is
useful to Kern and to Debian.

Further discussion of that is a bit off-topic for -legal; I can post
questions to bacula-devel and patches to SourceForge.  John, should I
post the patches somewhere for your (or other maintainers') benefit?

Michael Poole


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

            

3fls eevt p
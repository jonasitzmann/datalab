From bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jun 18 05:29:18 2007
Return-Path: <bounce-debian-desktop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I9THL9016079
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 05:29:17 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 840062DE7B; Mon, 18 Jun 2007 09:28:52 +0000 (UTC)
Old-Return-Path: <attilio.fiandrotti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,SPF_HELO_PASS,SPF_NEUTRAL autolearn=no version=3.1.4
X-Original-To: debian-desktop@lists.debian.org
Received: from polito.it (eracle.polito.it [130.192.3.44])
	by murphy.debian.org (Postfix) with ESMTP id 101662DDD1;
	Mon, 18 Jun 2007 09:11:18 +0000 (UTC)
X-ExtScanner: Niversoft's FindAttachments (free)
Received: from [130.192.31.127] ([130.192.31.127] verified)
  by eracle.polito.it (CommuniGate Pro SMTP 5.1.9)
  with ESMTP id 7383227; Mon, 18 Jun 2007 11:11:38 +0200
Message-ID: <46764D0A.8070302@gmail.com>
Date: Mon, 18 Jun 2007 11:14:50 +0200
From: Attilio Fiandrotti <attilio.fiandrotti@gmail.com>
User-Agent: Mozilla-Thunderbird 2.0.0.0 (X11/20070601)
MIME-Version: 1.0
Cc: debian-boot@lists.debian.org, debian-desktop@lists.debian.org
Subject: Re: A common Debian style for Debian Installer and the desktop
References: <200706122349.20602.elendil@planet.nl> <7a2ce3870706131225l475ddd8dje923a35ca16bf34a@mail.gmail.com> <200706170916.10551.elendil@planet.nl>
In-Reply-To: <200706170916.10551.elendil@planet.nl>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <Mc_GE.A.tDD.UBldGB@murphy>
To: debian-desktop@lists.debian.org
Resent-From: debian-desktop@lists.debian.org
X-Mailing-List: <debian-desktop@lists.debian.org> archive/latest/1760
X-Loop: debian-desktop@lists.debian.org
List-Id: <debian-desktop.lists.debian.org>
List-Post: <mailto:debian-desktop@lists.debian.org>
List-Help: <mailto:debian-desktop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-desktop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-desktop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-desktop-request@lists.debian.org
Resent-Date: Mon, 18 Jun 2007 09:28:52 +0000 (UTC)

Frans Pop wrote:
> On Wednesday 13 June 2007 21:25, Andr� Luiz Rodrigues Ferreira wrote:
>> Can we prepare an other GTK theme, using other gtk2 engine?
> 
> In theory, yes. But there are technical issues that need to be considered. 
> For example, we partly ended up with the Clearlooks engine because it 
> solved a bug with some display issues we were having.

<snip/>

... that was a bug in cairo's accelerated rectangle filling, which was 
workarounded by disabling that functionality in trunk of cairo (our 
directfb debian stable version udeb doesn't include the fix).
If we fix the bug in debian packages, then we can switch back to 
libpixmap, if we desire so.

regards

Attilio


-- 
To UNSUBSCRIBE, email to debian-desktop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

           

!o uoat.
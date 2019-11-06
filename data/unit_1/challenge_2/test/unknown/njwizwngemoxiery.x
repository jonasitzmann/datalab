From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 22 02:19:08 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M6J7L9002252
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 02:19:07 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id C17212E7FE; Fri, 22 Jun 2007 06:18:33 +0000 (UTC)
Old-Return-Path: <claytonk@tom.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=4.0 tests=DNS_FROM_RFC_ABUSE,
	DNS_FROM_RFC_BOGUSMX,DNS_FROM_RFC_POST,DNS_FROM_RFC_WHOIS,
	IMPRONONCABLE_1,LDOSUBSCRIBER,NO_REAL_NAME,SPF_HELO_PASS,SPF_PASS 
	autolearn=no version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from tom.com (smtpr5.tom.com [202.108.252.135])
	by murphy.debian.org (Postfix) with SMTP id 2A3A72E70D
	for <debian-laptop@lists.debian.org>; Fri, 22 Jun 2007 06:18:27 +0000 (UTC)
Received: from localhost (unknown [172.24.140.61])
	by bjapp11 (Coremail) with SMTP id vXIEAMBpe0ZgAIw9.1
	for <debian-laptop@lists.debian.org>; Fri, 22 Jun 2007 14:18:45 +0800 (CST)
X-Originating-IP: [172.24.140.61]
Received: from localhost([221.221.204.213])
	by bjapp21.tom.com(KBAS Gateway 2.1 2.125e) with ESMTP id local22479.1182493116 for <debian-laptop@lists.debian.org>;
	Fri Jun 22 14:18:37 2007 +0800
X-Original-AuthLogin: claytonk@tom.com
Date: Fri, 22 Jun 2007 14:18:36 +0800
From: claytonk@tom.com
To: debian-laptop@lists.debian.org
Subject: Re: Aircard 850 on a Thinkpad Z61M
Message-Id: <20070622141836.04e10d88.claytonk@tom.com>
In-Reply-To: <Pine.LNX.4.61.0706211800440.4337@zur>
References: <Pine.LNX.4.61.0706211800440.4337@zur>
X-Mailer: Sylpheed version 2.3.0beta5 (GTK+ 2.10.12; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <aDBGlB.A.12G.5m2eGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31510
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Fri, 22 Jun 2007 06:18:33 +0000 (UTC)

On Thu, 21 Jun 2007 18:02:07 -0400 (EDT)
josh@ramat.cc wrote:

> I'm running Debian unstable,
> linux-image-2.6.21-1-686_2.6.21-4_i386.deb and pcmciautils 014-3 on a
> Lenevo Thinkpad Z61M. I am trying to get my Sierra Aircard 850
> recognized. When I insert the card into the PCMCIA slot I get the
> following in syslog:
> 
> Jun 21 23:37:28 lab001 kernel: pccard: PCMCIA card inserted into slot
> 0 Jun 21 23:37:28 lab001 kernel: pcmcia: registering new device
> pcmcia0.0
> 
> i.e. no TTY is assigned to the card
> 
> when I run cardmgr though, the card is recognized and assigned to
> TTYS0. Do you have any suggestions as to why this is and how I can
> get this card assigned a TTY using a 2.6 kernel?

I don't have this card, but I believe I have seen similar behavior before if the firmware blob was missing.

According to this 
http://mycusthelp.com/sierrawireless/supportkbitem.asp?sSessionID=&Inc=4703&sFilA=FAQ%20Category&sFilB=Products&sFilC=&KEY=860 
cardmgr used to look for the firmware in /etc/pcmcia/cis/

According to this 
http://www.sierrawireless.com/faq/ShowFAQ.aspx?ID=118
for the 2.6 kernel you need to move that firmware blob over to /lib/firmware/

Clayton


-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

    

r d ]O htaa1h
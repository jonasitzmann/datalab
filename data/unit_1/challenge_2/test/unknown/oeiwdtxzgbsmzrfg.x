From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 19:22:27 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TNMRL9032394
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 19:22:27 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 538F52E411; Fri, 29 Jun 2007 23:22:22 +0000 (UTC)
Old-Return-Path: <frank-feldner@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=4.0 tests=SPF_PASS autolearn=no 
	version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from mail.gmx.net (mail.gmx.net [213.165.64.20])
	by murphy.debian.org (Postfix) with SMTP id 391E12E2B8
	for <debian-laptop@lists.debian.org>; Fri, 29 Jun 2007 23:05:42 +0000 (UTC)
Received: (qmail invoked by alias); 29 Jun 2007 23:05:31 -0000
Received: from p57B20ED5.dip0.t-ipconnect.de (EHLO [192.168.1.36]) [87.178.14.213]
  by mail.gmx.net (mp043) with SMTP; 30 Jun 2007 01:05:31 +0200
X-Authenticated: #265912
X-Provags-ID: V01U2FsdGVkX18t9iIXlnUthoznYI4iRZkOfoG/EMhNgxv4FRoI4K
	guTtnf2oubk4pV
Subject: Re: automatic wlan connection at bootprocess on Etch only on
	second try?
From: Frank Feldner <frank-feldner@gmx.de>
To: debian-laptop@lists.debian.org
In-Reply-To: <200706291906.14468.linux@lansche.de>
Content-Type: text/plain
Date: Sat, 30 Jun 2007 01:05:30 +0200
Message-Id: <1183158330.10004.22.camel@ubuntu-acer>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
X-Y-GMX-Trusted: 0
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <nsp04C.A.Z8E.uQZhGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31537
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 23:22:22 +0000 (UTC)

Try adding a wpa-driver statement:

iface eth2 inet dhcp
  wpa-driver your-driver
  wpa-conf /etc/wpa_supplicant/wpa_supplicant.mynet.conf
  auto eth2

Than debug WPA-SUPPLICANT Client:
	sudo wpa_supplicant -i eth2 -D your-driver -c/etc/wpa_supplicant/wpa_supplicant.conf -d

Try also:
	sudo dhclient eth2 

Restarting network interface:
	sudo ifdown eth2
	sudo ifup eth2

Post outputs and syslog entries related to the above activities.

Regards, Frank



-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

           

u.g_< 
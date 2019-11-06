From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Fri Jun 29 13:07:16 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5TH7FL9028467
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 29 Jun 2007 13:07:15 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 067572E909; Fri, 29 Jun 2007 17:06:43 +0000 (UTC)
Old-Return-Path: <linux@lansche.de>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,FORGED_RCVD_HELO,
	LDOSUBSCRIBER autolearn=ham version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from mo-p00-ob.rzone.de (mo-p00-ob.rzone.de [81.169.146.162])
	by murphy.debian.org (Postfix) with ESMTP id 864A02E8A7
	for <debian-laptop@lists.debian.org>; Fri, 29 Jun 2007 17:06:25 +0000 (UTC)
Received: from etch-nb.local (p54A3398E.dip0.t-ipconnect.de [84.163.57.142])
	by post.webmailer.de (klopstock mo33) (RZmta 7.6)
	with ESMTP id c01a42j5TEKCyT for <debian-laptop@lists.debian.org>;
	Fri, 29 Jun 2007 19:06:14 +0200 (MEST)
From: Michael Lansche <linux@lansche.de>
To: debian-laptop@lists.debian.org
Subject: automatic wlan connection at bootprocess on Etch only on second try?
Date: Fri, 29 Jun 2007 19:06:14 +0200
User-Agent: KMail/1.9.5
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706291906.14468.linux@lansche.de>
X-RZG-AUTH: jsA9sFBnN7H+zhpvrSHvN4H1DDsZl0hVtngFXxRWxErp5PgUtY0kkTavFA==
X-RZG-CLASS-ID: mo00
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <lUz9lC.A.aj.iwThGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31536
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Fri, 29 Jun 2007 17:06:43 +0000 (UTC)

Hi folks,

my WLAN connection starts only at the second try.

Etch-nb:~# cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
allow-hotplug eth1
iface eth1 inet dhcp

auto eth2
iface eth2 inet dhcp
wpa-conf /etc/wpa_supplicant/wpa_supplicant.mynet.conf

The first try never works:

/var/log/boot:

Fri Jun 29 18:51:01 2007: Setting up networking....
Fri Jun 29 18:51:01 2007: Starting ipw3945 regulatory daemon: ipw3945d.
Fri Jun 29 18:51:04 2007: Configuring network interfaces...Internet Systems 
Consortium DHCP Client V3.0.4
Fri Jun 29 18:51:05 2007: Copyright 2004-2006 Internet Systems Consortium.
Fri Jun 29 18:51:05 2007: All rights reserved.
Fri Jun 29 18:51:05 2007: For info, please visit http://www.isc.org/sw/dhcp/
Fri Jun 29 18:51:05 2007:
Fri Jun 29 18:51:06 2007: Listening on LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:51:06 2007: Sending on   LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:51:06 2007: Sending on   Socket/fallback
Fri Jun 29 18:51:10 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 6
Fri Jun 29 18:51:16 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 8
Fri Jun 29 18:51:24 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 21
Fri Jun 29 18:51:45 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 9
Fri Jun 29 18:51:54 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 11
Fri Jun 29 18:52:05 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 6
Fri Jun 29 18:52:11 2007: No DHCPOFFERS received.
Fri Jun 29 18:52:11 2007: No working leases in persistent database - sleeping.
Fri Jun 29 18:52:11 2007: done.

[...]

Fri Jun 29 18:52:21 2007: Starting K Display Manager: kdm.
Fri Jun 29 18:52:21 2007: Reconfiguring network interfaces...There is already 
a pid file /var/run/dhclient.eth2.pid
 with pid 2486
Fri Jun 29 18:52:21 2007: killed old client process, removed PID file
Fri Jun 29 18:52:21 2007: Internet Systems Consortium DHCP Client V3.0.4
Fri Jun 29 18:52:21 2007: Copyright 2004-2006 Internet Systems Consortium.
Fri Jun 29 18:52:21 2007: All rights reserved.
Fri Jun 29 18:52:21 2007: For info, please visit http://www.isc.org/sw/dhcp/
Fri Jun 29 18:52:21 2007:
Fri Jun 29 18:52:21 2007: Listening on LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:52:21 2007: Sending on   LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:52:21 2007: Sending on   Socket/fallback
Fri Jun 29 18:52:21 2007: DHCPRELEASE on eth2 to 192.168.0.1 port 67
Fri Jun 29 18:52:21 2007: send_packet: Network is unreachable
Fri Jun 29 18:52:21 2007: send_packet: please consult README file regarding 
broadcast address.
Fri Jun 29 18:52:22 2007: There is already a pid 
file /var/run/dhclient.eth1.pid with pid 2487
Fri Jun 29 18:52:22 2007: killed old client process, removed PID file
Fri Jun 29 18:52:22 2007: Internet Systems Consortium DHCP Client V3.0.4
Fri Jun 29 18:52:22 2007: Copyright 2004-2006 Internet Systems Consortium.
Fri Jun 29 18:52:22 2007: All rights reserved.
Fri Jun 29 18:52:22 2007: For info, please visit http://www.isc.org/sw/dhcp/
Fri Jun 29 18:52:22 2007:
Fri Jun 29 18:52:22 2007: Listening on LPF/eth1/00:19:b9:77:97:88
Fri Jun 29 18:52:22 2007: Sending on   LPF/eth1/00:19:b9:77:97:88
Fri Jun 29 18:52:22 2007: Sending on   Socket/fallback
Fri Jun 29 18:52:22 2007: DHCPRELEASE on eth1 to 192.168.0.1 port 67
Fri Jun 29 18:52:22 2007: send_packet: Network is unreachable
Fri Jun 29 18:52:22 2007: send_packet: please consult README file regarding 
broadcast address.
Fri Jun 29 18:52:22 2007: Internet Systems Consortium DHCP Client V3.0.4
Fri Jun 29 18:52:22 2007: Copyright 2004-2006 Internet Systems Consortium.
Fri Jun 29 18:52:22 2007: All rights reserved.
Fri Jun 29 18:52:22 2007: For info, please visit http://www.isc.org/sw/dhcp/
ri Jun 29 18:52:22 2007:
Fri Jun 29 18:52:23 2007: Listening on LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:52:23 2007: Sending on   LPF/eth2/00:1b:77:38:26:de
Fri Jun 29 18:52:23 2007: Sending on   Socket/fallback
Fri Jun 29 18:52:25 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 7
Fri Jun 29 18:52:32 2007: DHCPDISCOVER on eth2 to 255.255.255.255 port 67 
interval 15
Fri Jun 29 18:52:32 2007: DHCPOFFER from 192.168.0.1
Fri Jun 29 18:52:32 2007: DHCPREQUEST on eth2 to 255.255.255.255 port 67
Fri Jun 29 18:52:32 2007: DHCPACK from 192.168.0.1
Fri Jun 29 18:52:32 2007: bound to 192.168.0.3 -- renewal in 120338 seconds.
Fri Jun 29 18:52:32 2007: done.
Fri Jun 29 18:52:32 2007:

To get the second try working I added this line

/etc/init.d/networking restart

to /etc/rc.local

Has anyone an idea to get the first try working.

Thank you in advance.

Regards
Michael


-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

            

xfi<d/ts
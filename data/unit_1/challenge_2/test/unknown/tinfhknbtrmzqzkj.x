From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jun 14 13:44:34 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EHiXL9024692
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 13:44:33 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 8A8C12E397; Thu, 14 Jun 2007 17:38:17 +0000 (UTC)
Old-Return-Path: <550221959797-0001@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=BAYES_00,UNPARSEABLE_RELAY 
	autolearn=no version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from mailout01.sul.t-online.com (mailout01.sul.t-online.com [194.25.134.80])
	by murphy.debian.org (Postfix) with ESMTP id 88BF32E418
	for <debian-laptop@lists.debian.org>; Thu, 14 Jun 2007 17:20:31 +0000 (UTC)
Received: from imh00.t-online.com 
	by mailout01.sul.t-online.com with esmtp 
	id 1Hyt0G-0002Ud-00; Thu, 14 Jun 2007 19:21:00 +0200
Received: from news.t-online.com by imh00.t-online.com 
	with esmtp id 1Hyt0G-0000sN-00; Thu, 14 Jun 2007 19:21:00 +0200
Received: from news by news.t-online.com with local
	id 1Hyt0G-0002XY-00; Thu, 14 Jun 2007 19:21:00 +0200
To: debian-laptop@lists.debian.org
Path: news.t-online.com!not-for-mail
From: Bernd Dau <bed_no_spam_@zockertown.de>
Newsgroups: linux.debian.laptop
Subject: Asus G1 suspend to disk works only 8/10
Date: Thu, 14 Jun 2007 19:21:00 +0200
Organization: T-Online
Lines: 11
Message-ID: <f4rtds$9h7$03$1@news.t-online.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
X-Trace: news.t-online.com 1181841660 03 9767 T2sq6tP6d8mVSVbx 070614 17:21:00
X-Complaints-To: usenet-abuse@t-online.de
X-ID: XRXS+iZJreXI3gMdPRmmEEnbsbkw6z7m9Zjaaa4N8Lv-jl5lpfCmov
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <8Ayci.A.StG.J0XcGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31495
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Thu, 14 Jun 2007 17:38:17 +0000 (UTC)

Hi list.
I had success with my LinuxMint 3.0 (a Ubuntu feisty derivate) 
installation at my Asus G1 Notebook.
Suspend to disk works with uswsusp.
Now comes the trouble. Sometimes, the supend to disk does not works. 
Then the message is "there was a problem with the HAL support...)
Ok this is no prob. then I can shut down my computer. but in very rare 
circumstances there is no keyboard intercation possible. I have turn 
turn off the system.
So, the question is how to hunt down this failure. Where to look at?
in /var/log/messages && /var/log/daemon.log is nothing worthfull


-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

      


gl0T
From sugar-bounces@lists.laptop.org  Sun Jun  3 16:39:49 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53KdmhB019488
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 16:39:48 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id BC39858BC7BE;
	Sun,  3 Jun 2007 16:39:34 -0400 (EDT)
Received: from mout.perfora.net (mout.perfora.net [74.208.4.194])
	by mail.laptop.org (Postfix) with ESMTP id EF6AA58BC7BE
	for <sugar@lists.laptop.org>; Sun,  3 Jun 2007 16:39:33 -0400 (EDT)
Received: from [24.223.215.183] (helo=[10.0.0.134])
	by mrelay.perfora.net (node=mrus0) with ESMTP (Nemesis),
	id 0MKp8S-1HuwrU0Qmz-0002v7; Sun, 03 Jun 2007 16:39:41 -0400
Message-ID: <4663270B.1040304@ryand.net>
Date: Sun, 03 Jun 2007 15:39:39 -0500
From: Ryan Pavlik <abiryan@ryand.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070403)
MIME-Version: 1.0
To: Sugar Mailing List <sugar@lists.laptop.org>
X-Provags-ID: V01U2FsdGVkX19SlZxztyfb9GvgOOIeiwLGeV9ujrGzcpLacQq
	EHWlMrLB5Zm+1cqPe8/myyEYnzfI4yThnwuvpYtAPbdNvMXFr2
	geOe5mJFqQD+1TwtAiN/A==
Subject: [sugar] Issue: Activities do not start
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

Hello!  I've run a sugar-jhbuild, and with a work-around hack to get 
around my previous problem, I can now run the sugar desktop.  However, 
when I click to start an activity, it will show up in the ring for a 
little while (a few seconds) then disappear, never starting fully.  Here 
is a complete log of a sugar session in which I try to start the Write 
activity: presumably the interesting stuff is at the end.  (I'm on AMD64 
if that makes a difference, Ubuntu Feisty)

I am wondering if there is anything I can do to fix this issue, or if it 
is a problem in the source.  (and if so, if it's easy enough for me to 
fix).  Thanks for your help!

ryan@gamma:~/srctrees/sugar-jhbuild$ ./sugar-jhbuild run
INFO:sugar-emulator:Attempting to find free port for X11 (Xephyr)
INFO:sugar-emulator:  Found free port: #3 (6003)
INFO:sugar-emulator:Starting the Xephyr nested X display on display 3
/home/ryan/srctrees/sugar-jhbuild/build/bin/sugar-emulator:79: 
GtkWarning: Unable to locate theme engine in module_path: "candido",
  dpi = gtk.settings_get_default().get_property('gtk-xft-dpi')
DEBUG:sugar-emulator:Xephyr command: Xephyr :3 -ac -screen 1200x900 -dpi 96
_XSERVTransSocketOpenCOTSServer: Unable to open socket for inet6
_XSERVTransOpen: transport open failed for inet6/gamma:3
_XSERVTransMakeAllCOTSServerListeners: failed to open listener for inet6
Extended Input Devices not yet supported. Impelement it at line 625 in 
../../../../hw/kdrive/src/kinput.c
INFO:sugar-emulator:Attempting to launch sugar to replace this process: 
dbus-launch dbus-launch --exit-with-session sugar-shell
Could not init font path element /usr/share/fonts/X11/cyrillic, removing 
from list!
Matchbox: error parsing 
/home/ryan/srctrees/sugar-jhbuild/build/share/themes/sugar/matchbox/theme.xml
Incorrect Params in <font id='titlefont' def='Bitstream Vera Sans bold 7'/>
Matchbox: error parsing 
/home/ryan/srctrees/sugar-jhbuild/build/share/themes/Default/matchbox/theme.xml
Incorrect Params in <font id='titlefont' def='Sans bold 16px'/>
Introspect error: Process 
/home/ryan/srctrees/sugar-jhbuild/build/share/sugar/bin/sugar-activity-factory 
exited with status 1
Introspect error: Process 
/home/ryan/srctrees/sugar-jhbuild/build/share/sugar/bin/sugar-activity-factory 
received signal 6

-- 
Ryan Pavlik
AbiWord Win32 Platform Maintainer, Art Lead: www.abisource.com
AbiWord Community Outreach Project: www.cleardefinition.com/oss/abi/blog/

"Optimism is the father that leads to achievement."
 -- Helen Keller

"The folder structure in a modern Linux distribution such as Ubuntu
was largely inspired by the original UNIX foundations that were
created by men with large beards and sensible jumpers."
 -- Jono Bacon, The Ubuntu Guide

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

           

3l P l
psbeJ5lV9
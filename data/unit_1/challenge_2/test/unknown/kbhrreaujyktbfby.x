From sugar-bounces@lists.laptop.org  Fri Jun  8 19:34:23 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58NYML9002889
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 19:34:23 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 57A2758BC7C7;
	Fri,  8 Jun 2007 19:34:04 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 105B558BC81C; Fri,  8 Jun 2007 19:34:03 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 0310958BC7C7
	for <sugar@laptop.org>; Fri,  8 Jun 2007 19:34:03 -0400 (EDT)
X-ASG-Debug-ID: 1181345659-567f00030000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: void.printf.net[217.147.94.159]
X-Barracuda-Start-Time: 1181345659
X-Barracuda-Encrypted: AES256-SHA
X-ASG-Whitelist: Sender
Received: from void.printf.net (void.printf.net [217.147.94.159])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by spam.laptop.org (Spam Firewall) with ESMTP id 8A31514D3C
	for <sugar@laptop.org>; Fri,  8 Jun 2007 19:34:20 -0400 (EDT)
Received: from pullcord.laptop.org ([18.85.46.20])
	by void.printf.net with esmtp (Exim 4.50)
	id 1Hwny6-0003Hg-6y; Sat, 09 Jun 2007 00:34:10 +0100
To: sugar@laptop.org
X-ASG-Orig-Subj: Tinderbox results, 20070608-1831-gutsy
From: Sugar Tinderbox <cjb@laptop.org>
Date: Fri, 08 Jun 2007 19:34:33 -0400
Message-ID: <86abva6mwm.fsf@pullcord.laptop.org>
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/23.0.51 (gnu/linux)
MIME-Version: 1.0
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
Subject: [sugar] Tinderbox results, 20070608-1831-gutsy
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

Modules:  
   http://dev.laptop.org/tinderbox/sugar-tinder/20070608-1831-gutsy/
   * all built successfully

Activities:  
   http://dev.laptop.org/tinderbox/sugar-tinder/20070608-1831-gutsy/activities.html
   * BlockParty.activity failed
   * Memosono.activity failed


Details:

BlockParty.activity: Failed:

STDERR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/BlockPartyActivity.py", line 1, in ?
    from BlockParty import BlockParty
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/BlockParty.py", line 21, in ?
    from nextui import NextUI
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/nextui.py", line 2, in ?
    import util
ImportError: No module named util
STDERR - 
ERROR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/BlockPartyActivity.py", line 1, in ?
    from BlockParty import BlockParty
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/BlockParty.py", line 21, in ?
    from nextui import NextUI
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/BlockParty.activity/nextui.py", line 2, in ?
    import util
ImportError: No module named util


Memosono.activity: Failed:

STDERR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Memosono.activity/memosono.py", line 35, in ?
    from csound.csoundserver import CsoundServer
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Memosono.activity/csound/csoundserver.py", line 8, in ?
    import csnd
ImportError: No module named csnd
STDERR - 
ERROR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 77, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Memosono.activity/memosono.py", line 35, in ?
    from csound.csoundserver import CsoundServer
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Memosono.activity/csound/csoundserver.py", line 8, in ?
    import csnd
ImportError: No module named csnd


-- 
sugar-tinder.sh
http://dev.laptop.org/tinderbox/
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

              

3>i* 01Qq"
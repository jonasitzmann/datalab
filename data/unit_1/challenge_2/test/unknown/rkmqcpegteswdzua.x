From sugar-bounces@lists.laptop.org  Wed Jun 13 17:33:44 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DLXiL9012749
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 17:33:44 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 0100B58BC7C9;
	Wed, 13 Jun 2007 17:33:09 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 9A75F58BC7CB; Wed, 13 Jun 2007 17:33:07 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 97C9D58BC7C9
	for <sugar@laptop.org>; Wed, 13 Jun 2007 17:33:07 -0400 (EDT)
X-ASG-Debug-ID: 1181770414-174e000a0000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: void.printf.net[217.147.94.159]
X-Barracuda-Start-Time: 1181770414
X-Barracuda-Encrypted: AES256-SHA
X-ASG-Whitelist: Sender
Received: from void.printf.net (void.printf.net [217.147.94.159])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by spam.laptop.org (Spam Firewall) with ESMTP id E36F116A47
	for <sugar@laptop.org>; Wed, 13 Jun 2007 17:33:34 -0400 (EDT)
Received: from pullcord.laptop.org ([18.85.46.20])
	by void.printf.net with esmtp (Exim 4.50)
	id 1HyaT3-0003TV-JF; Wed, 13 Jun 2007 22:33:29 +0100
To: sugar@laptop.org
X-ASG-Orig-Subj: Tinderbox results, 20070613-1448-f7
From: Sugar Tinderbox <cjb@laptop.org>
Date: Wed, 13 Jun 2007 17:34:35 -0400
Message-ID: <86vedra68k.fsf@pullcord.laptop.org>
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/23.0.51 (gnu/linux)
MIME-Version: 1.0
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
Subject: [sugar] Tinderbox results, 20070613-1448-f7
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
   http://dev.laptop.org/tinderbox/sugar-tinder/20070613-1448-f7
   * all built successfully

Activities:  
   http://dev.laptop.org/tinderbox/sugar-tinder/20070613-1448-f7/activities.html
   * Journal.activity failed

   
Details:

Journal.activity: Failed:

STDERR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 76, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/journalactivity.py", line 27, in ?
    from listview import ListView
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/listview.py", line 29, in ?
    from collapsedobject import CollapsedObject
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/collapsedobject.py", line 18, in ?
    from sugar.objects import objecttype
ImportError: cannot import name objecttype
STDERR - 
ERROR - Traceback (most recent call last):
  File "/home/cjb/git/sugar-jhbuild/build/bin/sugar-activity", line 76, in ?
    activityfactoryservice.run(activity_info.path)
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 162, in run
    bundle.get_class())
  File "/home/cjb/git/sugar-jhbuild/build/lib/python2.4/site-packages/sugar/activity/activityfactoryservice.py", line 83, in __init__
    module = __import__(module_name)
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/journalactivity.py", line 27, in ?
    from listview import ListView
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/listview.py", line 29, in ?
    from collapsedobject import CollapsedObject
  File "/home/cjb/git/sugar-jhbuild/build/share/activities/Journal.activity/collapsedobject.py", line 18, in ?
    from sugar.objects import objecttype
ImportError: cannot import name objecttype


-- 
sugar-tinder.sh
http://dev.laptop.org/tinderbox/
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

        

h3nP:ml=:ijz9r
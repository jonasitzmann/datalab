From sugar-bounces@lists.laptop.org  Mon Jun 25 08:11:16 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCB7L9027761
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 08:11:07 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id DDC6E58BC80B;
	Sun, 24 Jun 2007 09:12:27 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 5CAAF58BC80F; Sun, 24 Jun 2007 09:12:27 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 591C058BC80B
	for <sugar@laptop.org>; Sun, 24 Jun 2007 09:12:27 -0400 (EDT)
X-ASG-Debug-ID: 1182690794-368100000000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: mx1.redhat.com[66.187.233.31]
X-Barracuda-Start-Time: 1182690794
Received: from mx1.redhat.com (mx1.redhat.com [66.187.233.31])
	by spam.laptop.org (Spam Firewall) with ESMTP id B7E5A19772
	for <sugar@laptop.org>; Sun, 24 Jun 2007 09:13:14 -0400 (EDT)
Received: from int-mx1.corp.redhat.com (int-mx1.corp.redhat.com
	[172.16.52.254])
	by mx1.redhat.com (8.13.1/8.13.1) with ESMTP id l5ODDDpa016671;
	Sun, 24 Jun 2007 09:13:13 -0400
Received: from mail.boston.redhat.com (mail.boston.redhat.com [172.16.76.12])
	by int-mx1.corp.redhat.com (8.13.1/8.13.1) with ESMTP id
	l5ODDDfF014325; Sun, 24 Jun 2007 09:13:13 -0400
Received: from localhost.localdomain (vpn-4-33.str.redhat.com [10.32.4.33])
	by mail.boston.redhat.com (8.13.1/8.13.1) with ESMTP id l5ODDB4h030952; 
	Sun, 24 Jun 2007 09:13:12 -0400
Message-ID: <467E6C45.2050101@redhat.com>
Date: Sun, 24 Jun 2007 15:06:13 +0200
From: Marco Pesenti Gritti <mpg@redhat.com>
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: Sugar Mail List <sugar@laptop.org>
X-ASG-Orig-Subj: Re: [sugar] Missing or broken license headers
References: <467E4B39.5040400@redhat.com>
In-Reply-To: <467E4B39.5040400@redhat.com>
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.20844
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: [sugar] Missing or broken license headers
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

Tomeu and I fixed our stuff. The remaining looks like Eduardo/Dan stuff 
(cced).

GPL:

/home/marco/sugar-jhbuild/source/sugar/services/console/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/xo/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/logviewer/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/terminal/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugin.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/dirty_size/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/dirty_size/info.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/memphis_init/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/memphis_init/info.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/cpu/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/cpu/info.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/clean_size/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/interface/memphis/plugins/clean_size/info.py
/home/marco/sugar-jhbuild/source/sugar/services/console/lib/graphics/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/lib/procmem/analysis.py
/home/marco/sugar-jhbuild/source/sugar/services/console/lib/procmem/__init__.py
/home/marco/sugar-jhbuild/source/sugar/services/console/lib/procmem/proc.py
/home/marco/sugar-jhbuild/source/sugar/services/console/lib/procmem/proc_smaps.py
/home/marco/sugar-jhbuild/source/sugar/shell/intro/__init__.py
/home/marco/sugar-jhbuild/source/sugar/shell/intro/glive.py
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

       

l�Aiepo
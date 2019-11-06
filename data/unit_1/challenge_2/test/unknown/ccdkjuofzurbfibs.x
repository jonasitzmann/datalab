From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  2 14:43:18 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52IhIhB026838
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 14:43:18 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6A008162BE0
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 18:43:12 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0F468162AD0;
	Sat,  2 Jun 2007 18:42:52 +0000 (GMT)
From: simo <idra@samba.org>
To: Kai Blin <kai@samba.org>
In-Reply-To: <200706021611.32918.kai@samba.org>
References: <200706021611.32918.kai@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Sat, 02 Jun 2007 14:42:51 -0400
Message-Id: <1180809771.24923.154.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: "Stefan \(metze\) Metzmacher" <metze@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: Make test failure on merlin and xen2-netbsd-samba
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

On Sat, 2007-06-02 at 16:11 +0200, Kai Blin wrote:
> Hi metze,
> 
> looks like I broke make test on merlin [1] and xen2-netbsd-samba [2].
> 
> I don't understand how my changes affect the wins replication test at all, 
> though.
> 
> Looking through the wins sources, nothing there seems to use winbind. I'm kind 
> of stumped there. Any ideas?

Kai,
keep in mind not all machines in the build farm behaves perfectly.
Sometimes they just fail for reasons not related to your change.

Just examine the logs (and build history in that host) and if you are
reasonably sure it is not related to a change you made, just wait some
time (a day or so) and check later to see if anything changed.

Also some hosts are so slow that they may take several svn revisions
between tests, so make sure the fault is not due to others code.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

               

c 6>
Ffsot Cr0
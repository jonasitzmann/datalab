From bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun 10 12:25:33 2007
Return-Path: <bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AGPWL9004292
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 12:25:32 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id A3DB42EE53; Sun, 10 Jun 2007 16:25:05 +0000 (UTC)
Old-Return-Path: <simon.paillard@resel.enst-bretagne.fr>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=4.0 tests=AWL,BAYES_00,LDOSUBSCRIBER,
	SPF_NEUTRAL autolearn=no version=3.1.4
X-Original-To: debian-mirrors@lists.debian.org
Received: from dedibox.ebzao.info (dedibox.ebzao.info [88.191.19.23])
	by murphy.debian.org (Postfix) with ESMTP id 61FC82EE58
	for <debian-mirrors@lists.debian.org>; Sun, 10 Jun 2007 16:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by dedibox.ebzao.info (Postfix) with ESMTP id AB16F5040;
	Sun, 10 Jun 2007 18:25:17 +0200 (CEST)
Received: from dedibox.ebzao.info ([127.0.0.1])
	by localhost (dedibox.ebzao.info [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KoNFhSKRo4xu; Sun, 10 Jun 2007 18:25:17 +0200 (CEST)
Received: by dedibox.ebzao.info (Postfix, from userid 1006)
	id 54F084F24; Sun, 10 Jun 2007 18:25:17 +0200 (CEST)
Date: Sun, 10 Jun 2007 18:25:17 +0200
From: Simon Paillard <simon.paillard@resel.enst-bretagne.fr>
To: Lior Kaplan <kaplan@debian.org>
Cc: debian-mirrors@lists.debian.org, mirror@mirror.inter.net.il
Subject: Re: Changes in the Israeli mirrors for Debian
Message-ID: <20070610162517.GA7624@dedibox>
References: <4667353D.8020505@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4667353D.8020505@debian.org>
X-Operating-System: Debian GNU/Linux
User-Agent: mutt-ng/devel-r804 (Debian)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <HEx3hB.A.QgE.hXCbGB@murphy>
Resent-From: debian-mirrors@lists.debian.org
X-Mailing-List: <debian-mirrors@lists.debian.org> 
X-Loop: debian-mirrors@lists.debian.org
List-Id: <debian-mirrors.lists.debian.org>
List-Post: <mailto:debian-mirrors@lists.debian.org>
List-Help: <mailto:debian-mirrors-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-mirrors-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-mirrors-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-mirrors-request@lists.debian.org
Resent-Date: Sun, 10 Jun 2007 16:25:05 +0000 (UTC)

Hi Lior,

On Thu, Jun 07, 2007 at 01:29:17AM +0300, Lior Kaplan wrote:
> Quoting from http://www.debian.org/mirror/list:
> IL Israel
> ---------
> mirror.hamakor.org.il  /pub/mirrors/debian/               amd64 i386
> debian.co.il  /debian/                           amd64 i386
> 
> mirror.hamakor.org.il will go down in the next few days, due to hosting problems.

You mean definitely ?
According the list, debian.co.il mirrors from mirror.hamakor.org.

> Additionally, we have two more mirrors unlisted:
> 1. http://mirror.inter.net.il/pub/debian which has amd64,i386 and ppc packages.
s/ppc/sparc/

mirror.inter.net.il was commented because of a downtime due to RAID
issues. Since we have not be notified when the sever went back, it has
not been uncommented.

I have just uncommented it.
But :
- the DNS resolves in IPv6 while neither the HTTPD nore the FTPD are
  available by IPv6.
- there are undesirable non-us directories in debian/ and debian/pool/


> 2. http://mirror.isoc.org.il/pub/debian/ which has amd64 and i386 packages.

For this one, the admin should add it: http://debian.org/mirrors/submit

> Is there any other place I should update to have these changes appear in the debian installers (lenny/sid).

No need, since choose-mirror updates its list at build time.

> Any chance to have it updated in Etch's next stable release?

We can ask the debian-installer team to rebuild choose-mirror in the
case no rebuild was planned.

Regards,

-- 
Simon Paillard


-- 
To UNSUBSCRIBE, email to debian-mirrors-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org



rI1�4>7/ohiMs0
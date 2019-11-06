From bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun 10 14:26:04 2007
Return-Path: <bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5AIQ3L9005241
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 14:26:03 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 262222E472; Sun, 10 Jun 2007 18:25:37 +0000 (UTC)
Old-Return-Path: <simon.paillard@resel.enst-bretagne.fr>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,IMPRONONCABLE_1,
	LDOSUBSCRIBER,SPF_NEUTRAL autolearn=no version=3.1.4
X-Original-To: debian-mirrors@lists.debian.org
Received: from dedibox.ebzao.info (dedibox.ebzao.info [88.191.19.23])
	by murphy.debian.org (Postfix) with ESMTP id EB8332E673
	for <debian-mirrors@lists.debian.org>; Sun, 10 Jun 2007 18:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by dedibox.ebzao.info (Postfix) with ESMTP id 680355046
	for <debian-mirrors@lists.debian.org>; Sun, 10 Jun 2007 20:25:49 +0200 (CEST)
Received: from dedibox.ebzao.info ([127.0.0.1])
	by localhost (dedibox.ebzao.info [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yQ00vdIs3SyI for <debian-mirrors@lists.debian.org>;
	Sun, 10 Jun 2007 20:25:49 +0200 (CEST)
Received: by dedibox.ebzao.info (Postfix, from userid 1006)
	id 31D855042; Sun, 10 Jun 2007 20:25:49 +0200 (CEST)
Date: Sun, 10 Jun 2007 20:25:49 +0200
From: Simon Paillard <simon.paillard@resel.enst-bretagne.fr>
To: debian-mirrors@lists.debian.org
Subject: Re: Changes in the Israeli mirrors for Debian
Message-ID: <20070610182549.GB7624@dedibox>
References: <4667353D.8020505@debian.org> <20070610162517.GA7624@dedibox> <466C2D49.6020904@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <466C2D49.6020904@debian.org>
X-Operating-System: Debian GNU/Linux
User-Agent: mutt-ng/devel-r804 (Debian)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <SBkXgC.A.dRD.hIEbGB@murphy>
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
Resent-Date: Sun, 10 Jun 2007 18:25:37 +0000 (UTC)

On Sun, Jun 10, 2007 at 07:56:41PM +0300, Lior Kaplan wrote:
> Simon Paillard wrote:
> >On Thu, Jun 07, 2007 at 01:29:17AM +0300, Lior Kaplan wrote:
> > > mirror.hamakor.org.il will go down in the next few days, due to hosting problems.
> > You mean definitely ?
>
> Yes  - definitely. It's already down.

mirror.hamakor.org.il removed from the list.

> > According the list, debian.co.il mirrors from mirror.hamakor.org.
> Well, they'll have to change that ...

Ok, I've just noticed them.

> >>2. http://mirror.isoc.org.il/pub/debian/ which has amd64 and i386 packages.
> >For this one, the admin should add it: http://debian.org/mirrors/submit
> 
> OK. I get :
> 
> The following entries were submitted: Submission-Type: new
> 
> Site: mirror.isoc.org.il
> Type: leaf
> Archive-http: /pub/debian/
> CDImage-http: /pub/debian-cd/

The upstream mirror, the contact info are also needed.

> A proper project/trace directory was not found on the HTTP server.
> 
> The error message returned was: 404 Not Found
> 
> If you don't understand this error message, please contact us.
> 
> Entry not submitted!
> 
> Although http://mirror.isoc.org.il/pub/debian/project/trace/ is there.
> And I tried to access it from gluck.d.o and it went fine. Could you
> check?

There is no local trace file at http://mirror.isoc.org.il/pub/debian/project/trace/
I think that is the reason for the error.
Maybe Joy can make the error message a bit more clear ?

http://www.debian.org/mirrors/ftpmirror must be read, and anonftpsync
should be used.

Regards,

-- 
Simon Paillard


-- 
To UNSUBSCRIBE, email to debian-mirrors-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

   

>3om
8c1naon
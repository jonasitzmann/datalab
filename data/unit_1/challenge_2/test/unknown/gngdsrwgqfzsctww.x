From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun  3 20:48:26 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l540mQhB021376
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 20:48:26 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 4132F2E6A4; Mon,  4 Jun 2007 00:48:02 +0000 (UTC)
Old-Return-Path: <don@rzlab.ucr.edu>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,
	FORGED_RCVD_HELO,IMPRONONCABLE_1,UNPARSEABLE_RELAY autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from epsilon.donarmstrong.com (rzlab.ucr.edu [138.23.92.77])
	by murphy.debian.org (Postfix) with ESMTP id D57182E634
	for <debian-legal@lists.debian.org>; Mon,  4 Jun 2007 00:47:52 +0000 (UTC)
Received: from epsilon.donarmstrong.com (localhost [127.0.0.1])
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Debian-3) with ESMTP id l540m8dL020711
	for <debian-legal@lists.debian.org>; Sun, 3 Jun 2007 17:48:08 -0700
Received: (from remotemail@localhost)
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Submit) id l540m8Ru020710
	for debian-legal@lists.debian.org; Sun, 3 Jun 2007 17:48:08 -0700
Received: (nullmailer pid 18551 invoked by uid 1000);
	Mon, 04 Jun 2007 00:48:06 -0000
Date: Sun, 3 Jun 2007 17:48:06 -0700
From: Don Armstrong <don@debian.org>
To: debian-legal@lists.debian.org
Subject: Re: Request for suggestions of DFSG-free documentation licences
Message-ID: <20070604004806.GG9271@volo.donarmstrong.com>
Mail-Followup-To: debian-legal@lists.debian.org
References: <4656DD92.1060704@gmail.com> <874pm0qxyf.fsf@benfinney.id.au> <9543b3a40705261425y77653733g28275ac18a1c8e28@mail.gmail.com> <87zm3rp1f9.fsf@benfinney.id.au> <9543b3a40706021716j7f6f85b3lca3756d9d18a0296@mail.gmail.com> <20070603115313.GA18207@angband.pl> <9543b3a40706031624n780bd3e4v581d9e42d29e4eaa@mail.gmail.com> <9543b3a40706031633t31e42115i2764a07e3da7a0be@mail.gmail.com> <20070603234415.GC9271@volo.donarmstrong.com> <9543b3a40706031716g7ca403jfcac3c9b17e91261@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9543b3a40706031716g7ca403jfcac3c9b17e91261@mail.gmail.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <e0SA4D.A.ufE.BF2YGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36569
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Mon,  4 Jun 2007 00:48:02 +0000 (UTC)

On Sun, 03 Jun 2007, Jordi Gutierrez Hermoso wrote:
> On 03/06/07, Don Armstrong <don@debian.org> wrote:
> >On Sun, 03 Jun 2007, Jordi Gutierrez Hermoso wrote:
> >> I have yet to see a practical example of a situation that actually
> >> happened that justifies Debian's concerns against the GFDL.
> >
> >The practical example is the fact that we cannot make extracts of
> >GFDLed documentation even for manpages without including the text
> >of the GFDL and any invariant sections from the manual.
> 
> So you're saying that the current gcc*doc* package in non-free that
> places the invariant sections in a separate manpage is violating the
> GFDL?

Yes. It is my understanding that it is violating the letter of the
GFDL.

> This isn't a real problem. The FSF isn't going to be enacting legal
> action against OpenBSD or all the other distros who created a gcc
> manpage from the info docs.

I believe most of us agree on this point, which is why the status quo
of a work present in non-free hasn't been seriously challenged. You'll
note though, that we do not (and cannot) distribute gcc-4.1.1(7)
seprately from gpl(7); there is a versioned dependency between those
packages.

> Debian decided to make it a problem for itself and for its users.

The Developers as a whole decided that the problems with invariant
sections and the GFDL were sufficient enough to exclude them from
main. However, the maintainer (and the developers) recognized that
users may need or want such documentation, even though it does not
meet the DFSG, so the documentation was made available in non-free.

If you disagree with the determination of the Developers, you can
easily install the work from non-free, or cease supporting Debian in
its entirety. The choice is yours, really.


Don Armstrong

-- 
You could say she lived on the edge... Well, maybe not exactly on the edge,
just close enough to watch other people fall off.
  -- hugh macleod http://www.gapingvoid.com/batch8.htm

http://www.donarmstrong.com              http://rzlab.ucr.edu


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                

5d>M
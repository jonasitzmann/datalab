From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun  3 00:29:59 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l534TxhB031173
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 00:29:59 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 3A3862DF16; Sun,  3 Jun 2007 04:29:10 +0000 (UTC)
Old-Return-Path: <don@rzlab.ucr.edu>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=4.0 tests=AWL,BAYES_20,
	FORGED_RCVD_HELO,IMPRONONCABLE_1,UNPARSEABLE_RELAY autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from epsilon.donarmstrong.com (rzlab.ucr.edu [138.23.92.77])
	by murphy.debian.org (Postfix) with ESMTP id 918562DF01;
	Sun,  3 Jun 2007 04:29:00 +0000 (UTC)
Received: from epsilon.donarmstrong.com (localhost [127.0.0.1])
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Debian-3) with ESMTP id l534TG59007925;
	Sat, 2 Jun 2007 21:29:16 -0700
Received: (from remotemail@localhost)
	by epsilon.donarmstrong.com (8.13.8/8.13.8/Submit) id l534TG4L007924;
	Sat, 2 Jun 2007 21:29:16 -0700
Received: (nullmailer pid 9722 invoked by uid 1000);
	Sun, 03 Jun 2007 04:29:08 -0000
Date: Sat, 2 Jun 2007 21:29:08 -0700
From: Don Armstrong <don@debian.org>
To: debian-devel@lists.debian.org, debian-legal@lists.debian.org
Subject: Re: discussion with the FSF: GPLv3, GFDL, Nexenta
Message-ID: <20070603042908.GS9271@volo.donarmstrong.com>
Mail-Followup-To: debian-devel@lists.debian.org,
	debian-legal@lists.debian.org
References: <20070602154036.153d14e4.frx@firenze.linux.it> <20070602143345.GA15073@azure.humbug.org.au> <20070602171356.GK9271@volo.donarmstrong.com> <20070522113023.GE22548@zoy.org> <20070524175436.GF30294@archimedes.ucr.edu> <20070602115015.GA14001@azure.humbug.org.au> <20070602154036.153d14e4.frx@firenze.linux.it> <20070602143345.GA15073@azure.humbug.org.au> <87tztq9yuc.fsf@graviton.dyn.troilus.org> <20070603033903.GA20338@azure.humbug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20070603033903.GA20338@azure.humbug.org.au>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <_upa0.A.NiD.WOkYGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36540
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  3 Jun 2007 04:29:10 +0000 (UTC)
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l534TxhB031173

On Sun, 03 Jun 2007, Anthony Towns wrote:
> How you feel about a license isn't any more important than the other
> people's feelings that happen to be opposite to you. The above isn't
> analysis, it's grandstanding.

My mistake; I assumed the references I provided earlier to the
analysis done in 2005 and 2006 were sufficent. Allow me to summarize
and repeat the problems with choice of venue clauses for the benifit
of those who have not read the threads which I referenced earlier:

Choice of venue clauses can short circuit the normal determination of
jurisdiction in civil cases in some jurisdictions in some cases. In
order to return to a sane jurisdiction, you generally must first get
the choice of venue clause vacated, and only then do you start the
normal change of venue process. Since there is no compulsion to agree
to a license and the work is not being sold, it's less likely that
such a clause will be vacated in comparison to the equivalent clause
in shrinkwrap licenses.[1]

Since this is giving up a right normally enjoyed in exchange for the
ability to use or modify a work, it appears be a fee, and as such
fails DFSG 1.

Finally, by placing works under licenses with such clauses into
non-free, we advise people that they should be examining the license
more closely before deciding whether or not they should (or can) use
the software.

> And if you really want to have licenses determined by how people
> "feel" rather than analysing the effects of the license in real
> world situations as compared to what's actually written in the DFSG,
> I expect you'll find we just end up with more GRs like the the GFDL
> GR that doesn't match commonly held opinions on debian-legal at all.

I'm personally using "feel" as shorthand for "my understanding of the
legal situtation regarding this clause and its relation to the DFSG"
not the way the clause effects me emotionally or what my DFSG
dartboard said when I threw my official -legal flaming darts at it.

I'm well aware that I'm personally more concerned about licensing
matters than the average developer, but then again, that's also why I
(perhaps na�vely) expect people who disagree with my analysis to
actually engage the analysis with counter arguments, come to a
complete understanding of the problem, and then make a determination.

> And also realise that the only place your opinion is actually going
> to have some effect is in packages you maintain, or if we hold a
> poll or a vote, and posting to -legal isn't participating in either
> of those.

My goal is to convince ftpmasters and developers that my analysis is
reasonable, and that these works with licenses containing these kinds
of clauses have no place in main. Failing that, I can only educate
users and not install those packages myself, hoping that unsuspecting
users do not get caught out by upstreams which have decided to become
litigious.[2]


Don Armstrong

1: I have no idea of the odds of such things happening, though. It
definetly varies from district to district in the US, not to mention
other countries.
2: Which, unfortunatly enough, is a legitimate concern considering the
upstream of this particular package.
-- 
If you find it impossible to believe that the universe didn't have a
creator, why don't you find it impossible that your creator didn't
have one either?
 -- Anonymous Coward http://slashdot.org/comments.pl?sid=167556&cid=13970629

http://www.donarmstrong.com              http://rzlab.ucr.edu


                 

ytG,ivaSaqdir-tt
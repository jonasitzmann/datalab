From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sun Jun  3 06:41:54 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53AfrhB014682
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 3 Jun 2007 06:41:53 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 172462E02C; Sun,  3 Jun 2007 10:41:29 +0000 (UTC)
Old-Return-Path: <wouter@grep.be>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_05,
	FORGED_RCVD_HELO,IMPRONONCABLE_1,MDO_CABLE_TV3 autolearn=no 
	version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from hoboe1bl1.telenet-ops.be (hoboe1bl1.telenet-ops.be [195.130.137.72])
	by murphy.debian.org (Postfix) with ESMTP id 75D672E1D7;
	Sun,  3 Jun 2007 10:25:06 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by hoboe1bl1.telenet-ops.be (Postfix) with SMTP id C6AAFD4041;
	Sun,  3 Jun 2007 12:25:21 +0200 (CEST)
Received: from rock.grep.be (d51A54111.access.telenet.be [81.165.65.17])
	by hoboe1bl1.telenet-ops.be (Postfix) with ESMTP id 9A216D401A;
	Sun,  3 Jun 2007 12:25:21 +0200 (CEST)
Received: from wouter by rock.grep.be with local (Exim 4.63)
	id 1HunGt-000412-BD
	message size 4365; Sun, 03 Jun 2007 12:25:15 +0200
Date: Sun, 3 Jun 2007 12:25:14 +0200
From: Wouter Verhelst <wouter@debian.org>
To: debian-devel@lists.debian.org, debian-legal@lists.debian.org
Subject: Re: discussion with the FSF: GPLv3, GFDL, Nexenta
Message-ID: <20070603102514.GC5222@grep.be>
References: <20070522113023.GE22548@zoy.org> <20070524175436.GF30294@archimedes.ucr.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070524175436.GF30294@archimedes.ucr.edu>
X-Speed: Gates' Law: Every 18 months, the speed of software halves.
Organization: The Debian Project, http://www.debian.org/
User-Agent: Mutt/1.5.13 (2006-08-11)
Sender: "Wouter Verhelst,,+32 15 27 69 50,+32 3 542 35 14," <wouter@grep.be>
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <QDGbAD.A.aJD.ZrpYGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36546
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sun,  3 Jun 2007 10:41:29 +0000 (UTC)

On Thu, May 24, 2007 at 10:54:36AM -0700, Don Armstrong wrote:
> On Tue, 22 May 2007, Sam Hocevar wrote:
> >     3. Nexenta: Despite their incompatibility, Debian accepts both the
> >  CDDL and GPLv2 as valid free software licences and would welcome any
> >  solution to the distribution of a Debian system based on OpenSolaris.
> 
> This is not the case, unfortunatly, and it really would be wise in the
> future to consult with people who are familiar with the arguments
> surrounding such licenses before expressing Debian's opinion to the
> FSF.
> 
> The CDDL's clause 9 is very much not appropriate for works in main,
> and to the best of my knowledge, works licensed solely under the CDDL
> have never been accepted in main.[1]
> 
> To underline, the following clauses in the CDDL are problematic:
> 
>    9. MISCELLANEOUS 
> 
>    [...]
>    This License shall be governed by the law of the jurisdiction
>    specified in a notice contained within the Original Software
>    (except to the extent applicable law, if any, provides otherwise),
>    excluding such jurisdiction's conflict-of-law provisions. Any
>    litigation relating to this License shall be subject to the
>    jurisdiction of the courts located in the jurisdiction and venue
>    specified in a notice contained within the Original Software, with
>    the losing party responsible for costs, including, without
>    limitation, court costs and reasonable attorneys' fees and
>    expenses.
>    [...]
>    You agree that You alone are responsible for compliance with the
>    United States export administration regulations (and the export
>    control laws and regulation of any other countries) when You use,
>    distribute or otherwise make available any Covered Software.
> 
> It's not appropriate for a Free Software license to require users of
> software to give up rights that they would normaly have in their own
> jurisdiction.

I understand that argument, but I do think it requires a leap of logic
(or at least some creative interpretation) to get from the DFSG to this
position. While I can see why some people do not want CDDL-licensed
software in main for the above reason, I do not think it is fair to call
it the Debian position that this is the case; at least not yet.

Counter-arguments:
* The bit "(except to the extent applicable law, if any, provides
  otherwise)" means you don't necessarily have to give up all your
  rights. There are parts of copyright law in most jurisdictions that
  give unalienable rights to users; those fall under the above
  provision, by definition. The net result of your first clause
  therefore may be, depending on circumstances, that users actually get
  _more_ rights than what they started out with if that provision wasn't
  there, because their own copyright law doesn't give them nearly as
  much rights as the copyright law in the country where the software was
  written would.
* Your second quote is a non-issue. The same is true for GPL-licensed
  software; if not, then why did we have to consult two lawyers back
  when we moved crypto to main? And why do we still have such insane
  procedures today when some crypto-using software gets through NEW?
  (you don't see them because ftp-masters handle them, but they're still
  there).

Additionally, personally I don't think it's unreasonable for people to
say "if you use my software in a way that I didn't want you to, I'll sue
you in a court that works by a set of rules that I'm actually
comfortable with". You know, it makes fighting those who do not follow
your license the way you intended them to quite a bit easier.

-- 
Shaw's Principle:
	Build a system that even a fool can use, and only a fool will
	want to use it.


-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

          

tkm2rn>  l
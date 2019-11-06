From bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Sat Jun  2 15:25:29 2007
Return-Path: <bounce-debian-legal=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52JPShB027213
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 15:25:28 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id A68022DDA0; Sat,  2 Jun 2007 19:25:05 +0000 (UTC)
Old-Return-Path: <debian-legal@m.gmane.org>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,
	FORGED_HOTMAIL_RCVD2,LDOSUBSCRIBER,SPF_HELO_PASS,SPF_PASS 
	autolearn=ham version=3.1.4
X-Original-To: debian-legal@lists.debian.org
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by murphy.debian.org (Postfix) with ESMTP id C82572DFAC
	for <debian-legal@lists.debian.org>; Sat,  2 Jun 2007 19:24:58 +0000 (UTC)
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HuZDE-000771-8j
	for debian-legal@lists.debian.org; Sat, 02 Jun 2007 21:24:32 +0200
Received: from oh-67-77-30-227.dyn.embarqhsd.net ([67.77.30.227])
        by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
        id 1AlnuQ-0007hv-00
        for <debian-legal@lists.debian.org>; Sat, 02 Jun 2007 21:24:32 +0200
Received: from unknown_kev_cat by oh-67-77-30-227.dyn.embarqhsd.net with local (Gmexim 0.1 (Debian))
        id 1AlnuQ-0007hv-00
        for <debian-legal@lists.debian.org>; Sat, 02 Jun 2007 21:24:32 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: debian-legal@lists.debian.org
From: "Joe Smith" <unknown_kev_cat@hotmail.com>
Subject:  Re: [long] Last call draft of GPL v3
Date:  Sat, 2 Jun 2007 15:21:57 -0400
Lines: 87
Message-ID: <f3sg0e$jtk$1@sea.gmane.org>
References:  <20070602175021.465f387a.frx@firenze.linux.it>
Mime-Version:  1.0
Content-Type:  text/plain;
	format=flowed;
	charset="iso-8859-1";
	reply-type=original
Content-Transfer-Encoding:  7bit
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: oh-67-77-30-227.dyn.embarqhsd.net
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
Sender: news <news@sea.gmane.org>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <U11fUD.A.Q6D.RQcYGB@murphy>
Resent-From: debian-legal@lists.debian.org
X-Mailing-List: <debian-legal@lists.debian.org> archive/latest/36526
X-Loop: debian-legal@lists.debian.org
List-Id: <debian-legal.lists.debian.org>
List-Post: <mailto:debian-legal@lists.debian.org>
List-Help: <mailto:debian-legal-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-legal-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-legal-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-legal-request@lists.debian.org
Resent-Date: Sat,  2 Jun 2007 19:25:05 +0000 (UTC)


"Francesco Poli" <frx@firenze.linux.it> wrote in message 
news:20070602175021.465f387a.frx@firenze.linux.it...

>Hi all,
>a new "Last Call Draft" of the GNU GPL v3 has been published on 31 May
>2007 by the FSF.
>The full text of this fourth draft can be read at
>http://gplv3.fsf.org/comments/gplv3-draft-4.html
>
>My comments on the draft follow.
>I will send them to the FSF public consultation system RSN (since they
>are accepting comments for only 30 days, starting on 31 May).
>
>The usual disclaimers: IANAL, IANADD.
>
>
> [snip]
>

>:::: Bad: too restrictive
>
>Clause 5d is now simpler and clearer than in the previous drafts: as a
>consequences, its issues are more apparent!  ;-)
>
>This clause is worse than the corresponding clause 2c in GPLv2... :-(
>
>[snip]
>
>I would like to see clause 5d dropped entirely.
>
>Or, at least, it could be modified so that it only applies to cases
>where the original Program is also interactive.
>Something like:
>
>| d) If the Program has interactive user interfaces which display
>| Appropriate Legal Notices, this feature must be preserved in each
>| interactive interface that is also present in the work.



It is one thing to require preservation of the Appropriate legal notices 
feature in existing interactive user interfaces.
It is entirely different to compel users to include such a feature in any 
newly created interactive interfaces. This is far worse than the equivalent 
clause in GPL v2. People WILL ignore this requirement, and assume it merely 
mandates preservation of the feature in existing interfaces. This is a 
*critical* problem with the license IMHO.

Further there is no exception for interactive user interfaces where it is 
*impossible* to
meet the definition of "displays 'Appropriate Legal Notices'". Cases like an 
audio-only
interactive interface could not possibly include "a convenient and 
prominently *visible* feature",
and might not be able to tell "the user [..] how to view a copy of this 
License". It might not be
possible to tell the user how to view the licence. Especially if the device 
has no means of visual output,
in which case there is no way to "view" the licence. The program could 
perhaps give instructions
on how to request to have the licence read to them, but that is not what is 
required.

>:::: Kills copyleft: are these the cousins of GFDL's Invariant Sections?
>
>What exactly is a "reasonable legal notice"?  What exactly is an "author
>attribution"?  It seems that these terms are not defined anywhere in the
>license.  I'm concerned that they could be interpreted in a broad sense
>and allow people to take a GPLv3'd work and add some sort of invariant
>long text that nobody will ever be able to remove or modify...  This
>option could make a work include unmodifiable & unremovable parts and
>thus fail to fully grant the freedom to modify.  I would rather avoid
>introducing such options in the GPLv3!
>
>===> this option could make the work fail DFSG#3, when exercised

Hmm... reasonable legal notice will at least include a copyright statement.
Some further guidence could be useful. Can a mandate to include an entire
licence (talking abiout one of the short licences, like BSD, Expat, etc. 
[obviously a modified version of the licence,
with a mandate to include the licence text in the Appropriate Legal
 Notice]) be considered a resonable notice? It almost seems reasonable,
but on the other hand it is somewhat long, which may be unreasonable, 
especially in certain
types of interactive interfaces. 



-- 
To UNSUBSCRIBE, email to debian-legal-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

           

 DluXUvc@B$
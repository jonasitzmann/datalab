From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  2 15:31:15 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l52JVFhB027289
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 15:31:15 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id CAA9B163869
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 19:31:09 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C5061162AC3;
	Sat,  2 Jun 2007 19:30:39 +0000 (GMT)
From: simo <idra@samba.org>
To: Jeremy Allison <jra@samba.org>
In-Reply-To: <20070602190244.GB5627@jeremy2.wintest.samba.local>
References: <20070601121817.4EB8A163BB9@lists.samba.org>
	<20070601222130.GB3481@jeremy2.wintest.samba.local>
	<E1HuG7o-00006O-1l@intern.SerNet.DE>
	<20070601230746.GF3481@jeremy2.wintest.samba.local>
	<4660DDC6.6030505@samba.org>
	<20070602045813.GA16044@jeremy2.wintest.samba.local>
	<1180792400.24923.146.camel@localhost.localdomain>
	<20070602183209.GA5627@jeremy2.wintest.samba.local>
	<1180810306.24923.161.camel@localhost.localdomain>
	<20070602190244.GB5627@jeremy2.wintest.samba.local>
Content-Type: text/plain
Organization: Samba Team
Date: Sat, 02 Jun 2007 15:30:39 -0400
Message-Id: <1180812639.24923.194.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23290 - in
	branches:	SAMBA_3_0/source/nsswitch SAMBA_3_0_26/source/nsswitch
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

On Sat, 2007-06-02 at 12:02 -0700, Jeremy Allison wrote:
> On Sat, Jun 02, 2007 at 02:51:46PM -0400, simo wrote:
> > 
> > You definitively must be careful.
> > Since I started working with the new talloc I decided to change my
> > mindset. Now I give for granted that if I have a structure and I have to
> > allocate stuff in it, then the memory hierarchy follows the structure I
> > am using.
> 
> I think you're correct here - this is the only
> way to go. How do you deal with this when you have complex
> dependencies between the structures though, such
> as the winbindd ones ?

First answer: Magic ;-)

More seriously, it really depends.
Sometimes I decide based on the way this stuff need to be set free.
That's another good way to group stuff.
Put all the stuff you know have to be talloc_free()ed at the same time
hanging on the same context. And in some rare cases you have to change
the way the code is done.

I had this problem in ldb, we didn't have the right handle to hang
memory on. But one thing was clear, in 99.9% of the cases once a request
was finished, I needed to free all the memory used.

What I did was to change the request structure and functions beneath so
that all memory, ultimately, would be attached to the requests, and when
a request is finished all I have to worry about is to do a
talloc_free(request); no matter how deep that structure have been passed
down (many modules, the core tdb/ldap/sqlite backend and then back).
At that point, I am reasonably sure all the memory that have to be
released is indeed released, no matter what, the hierarchy insures this.

And if there are cases where I know something must not be released, well
then it is easy to do a talloc_steal/talloc_move of only the
sub-structure I need and hang it on a longer lived context like the
ldb_context or a module private_data structure or something else.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

       

tstIbo:DlGeejDl
From perl6-all-return-82226-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 04:09:42 2007
Return-Path: <perl6-all-return-82226-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M89eL9003654
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 04:09:40 -0400
Received: (qmail 26136 invoked by uid 514); 22 Jun 2007 08:09:36 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 26129 invoked from network); 22 Jun 2007 08:09:35 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Fri, 22 Jun 2007 10:08:57 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Damian Conway <damian@conway.org>
Cc: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: Referring to source code within Perldoc: the new A<> code
Message-ID: <20070622080857.GI16156@earth.overmeer.net>
Mail-Followup-To: Damian Conway <damian@conway.org>,
	"perl6-language@perl.org" <perl6-language@perl.org>
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621074400.GA32129@earth.overmeer.net> <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

* Damian Conway (damian@conway.org) [070621 08:07]:
> Mark Overmeer wrote:
> [...yet another honest and heartfelt plea for Pod 6 to be something
> entirely different from what it is currently designed to be.]

> The solution is simple, you know, Mark. Why not just write up your own
> alternate S26, redesigning Pod 6 the way you think it should work, and
> then publish your proposal for consideration here?

You may remember that I repeatedly asked @Larry not to forget the
documentation aspect in the redesign of Perl, in person during various
YAPCs and Workshops.  Then, when you finally took the challenge, I have
send you a extensive email showing various alternative syntaxes for
condensed, integrated documentation strategies. (2 nov 2005)

Those design examples are far from a detailed design, because that
takes weeks, not hours.  Besides, there are a few good alternatives
when the code/doc separation doctrine is left.  For instance, Juerd's
"is documented" traits.

I have already proven that adding some simple logical markup to the POD(5)
syntax can simplify the documentation process enormously, with my OODoc
(::Parser::Markov).  As I already reported in one of the initial messages
of this (long) thread, the tool saved me to type 700.000 characters of
(needed dupplicated) text for my MailBox suite alone.  That was a simple
gain within the classical POD dogma; with real integration, we can
reduce our documentation efforts much further.
[Shall I give a lightning talk on OODoc in action, at upcoming YAPC::EU?]

> After all, Larry's track record is clear: he's never once allowed
> someone's reputation or status (even his own!) to deter him from
> replacing an existing design with someone else's superior one.

True.  However, when the common @Larry believe is that POD6 should build
on POD(5) ideas of orthodox orthogonalism, then it is a waste of my
sparse time.  I am not afraid to take such challange, opposit of that:
otherwise this discussion probably had died out days ago.  But I do have
a number of large Perl(5) projects on my hands already.
-- 
               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

      

96o 7liHygoea 
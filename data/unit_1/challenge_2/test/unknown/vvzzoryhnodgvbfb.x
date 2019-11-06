From perl6-all-return-82192-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 16:16:15 2007
Return-Path: <perl6-all-return-82192-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LKGEL9028730
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 16:16:14 -0400
Received: (qmail 26430 invoked by uid 514); 21 Jun 2007 20:16:10 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 26363 invoked from network); 21 Jun 2007 20:16:10 -0000
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
Date: Thu, 21 Jun 2007 18:24:36 +0100
From: Smylers <Smylers@stripey.com>
To: perl6-language@perl.org
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
Message-ID: <20070621172436.GI6900@stripey.com>
References: <467073C4.6020708@conway.org> <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com> <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com> <150620070756055824%brian.d.foy@gmail.com> <4673C546.5060806@conway.org> <160620070823046479%brian.d.foy@gmail.com> <ef30550b0706161306g1f7fe8d6g57185b764cfdcbca@mail.gmail.com> <ef30550b0706161347y32338d5fw4729a25594de84fd@mail.gmail.com> <e9350eaf0706161432m2525d0dal7d88e01b3916ea35@mail.gmail.com> <e9350eaf0706190959t269ca62cm81333dc35a2196b5@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <e9350eaf0706190959t269ca62cm81333dc35a2196b5@mail.gmail.com>
X-IMAPbase: 1136658618 36
X-UID: 36
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5LKGEL9028730

Chadda� Fouch� writes:

> I'm quite surprised by this debate... To me it seems a clear rule that
> state that "if a line begin with "=" then it starts a POD section" is
> way easier to understand than "a line beginning by = will start a POD
> section except if it is in a Perl statement, or in a :to section, or
> in a string literal, etc...".

It is.  But that isn't the argument being made against it.

The point is that even knowing that simple rule is more complicated than
not having to know any rule at all.  Even knowing that there _is_ a rule
requires knowing that Pod exists, which shouldn't be a prerequisite for
starting your first Perl program; you can't learn everything at once, in
parallel.

> The "Learning Perl 6" argument seems equally contrived to me since
> anyway you don't need POD to understand programming in Perl

Or rather, you didn't need that with Perl 5.

> and I never actually learned POD until I wanted to do a real module
> and document my little console utilities in Perl.

Sure.  But the 'Learning Perl' argument is this one, which you mentioned
later in your message

> The other "problem" is that if somehow a braindead guy (where would he
> get the idea from, I never saw such a style) put his "=" in first
> column expecting a assignment he won't get it... Seriously ?

Yes.  Personally I think that, on balance, the simplicity of the "what
is Pod?" rule is more of a gain than this awkwardness is a loss.  But it
is a completely valid argument.

Remember that also until Larry's recent proposal, this affected string
constants too -- and somebody might have anything in a multi-line
string.

> Are you really allowing for such weirdness in introductory material to
> a Language course ?

The problem is that when teaching programming (I also used to be a Perl
5 trainer) you have to one part of the course first.  And whatever that
is, it really should be usable without relying on material that hasn't
yet been covered.

This means that when teaching the very basics of Perl a trainer has to
do one of:

* State the exception that C<=> is special in the first column of the
  source file -- thereby increasing the complexity of what users need to
  grasp in one 'chunk' when first covering variables, and distracting
  them from the core issue and sparking their curiosity with mention of
  this documentation language.

* Not mention it, and hope that nobody formats a line in a way which
  will be interpreted as Pod -- thereby causing much frustration in the
  rare cases where this does happen, making the learner in question
  irritated (with either the trainer for not mentioning it, or the
  language for having this exception).

Neither of those are ideal.

> You don't need to understand POD to read a program where POD is used :
> it's usually quite clear from the content where it is POD and where it
> is doc and each section that don't look like Perl is usually POD.

Yes.  But not if you've created unintentional Pod.

Smylers

[Apologies for the lag in this.  I wrote 95% of the above 2 days ago --
before brian's similar message -- then got distracted and have only just
completed it.  But I thought it worth mailing anyway, to point that even
though I've argued on the opposite side from brian on this, I completely
acknowledge he has a valid point.]



7eea1a:
iOe 
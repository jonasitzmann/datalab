From perl6-all-return-81999-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 06:35:33 2007
Return-Path: <perl6-all-return-81999-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GAZWL9012855
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 06:35:33 -0400
Received: (qmail 22576 invoked by uid 514); 16 Jun 2007 10:35:29 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 22571 invoked from network); 16 Jun 2007 10:35:29 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Sat, 16 Jun 2007 12:33:58 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Smylers <Smylers@stripey.com>
Cc: perl6-language@perl.org
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
Message-ID: <20070616103358.GB10601@earth.overmeer.net>
Mail-Followup-To: Smylers <Smylers@stripey.com>, perl6-language@perl.org
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <20070614082341.GU31918@earth.overmeer.net> <832f158a0706141717j7accfb36w92bf3a2ed7a8e115@mail.gmail.com> <20070615075949.GR31918@earth.overmeer.net> <20070616090944.GG6900@stripey.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070616090944.GG6900@stripey.com>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

* Smylers (Smylers@stripey.com) [070616 09:09]:
> > * Damian Conway (damian@conway.org) [070615 00:17]:
> > > * Pod 6 is both a structural and a semantic scheme; you can specify
> > >   both the structure of a document, and the meaning of its various
> > >   components
> > 
> > Yes, and that is one of the things which worries me most *You can*.
> > It's full freedom,
> 
> You're concerned that an aspect of Perl 6 might have too much freedom?
> Isn't Perl all about giving users freedom to choose their own way of
> doing something?

Why treat documentation as a second-class citizen all the time?  Why
have a standard syntax for regexes, and not for docs?  Aren't you glad
that at last we get a standard for OO programming and named parameters?
The boundary between freedom and anacharchy is faint.

> Yes.  But in reality many people will follow what others do, or look to
> follow best practices.  With Perl 5 you have complete freedom as to the
> names of C<=head1> sections in the Pod for modules, yet in browsing Cpan
> it's clear that there are conventions and many people use the same
> headings.  So not mandating a convention isn't much of a problem.

Well, the you are talking about the top three headers, the most.  And
those have a good example in standard UNIX manual-pages.  So: there
is a definitions for them, which most people have seen.

Look at how people document how methods should be called.  We, as
programmers, don't worry: we can read between the lines.  But most
"normal" programmers we hardly ever meet, have a hard time.  Is
"freedom" (in some definition) so important that consistency must
suffer?

> Do you really think that people can now, before Perl 6 has gained
> anything approaching the usage we expect, make policy for how things
> should be documented, such that that policy will be the best possible
> way of documenting everything written in Perl 6, for ever?  Or even a
> good way?

There is no need to think that a documentation syntax develops differently
than a programming language.  So when Perl is developing, POD can develop
in parallel.  And, of course, documentation is for most people a well
known area: at least, every program I wrote last 30 years had some form
of documentation. To find a kind of common base of features you need does
not require any knowledge about the language involved is quite simple.

> That strikes me as incredibly shortsighted, verging on arrogance by
> whoever comes up with the rules, and doomed to failure.

Sorry?  Not only you insult me, but you also ignore all these other
languages which do have a nice and standard way of documenting.
Insignificant languages, like Java, which we tend to ignore.  Also
Python, to name a closer neighbour.

It is incredibly shortsighted to think that any experienced programmer
would suggest a standard which cannot evolve, and adapt to variance
in needs.

What I suggest is at least some kind of suggestion how to denote the
things everyone certainly needs.  As I understand now, Damian is working
on that.

> If a particular convention gains widespread approval then peer pressure
> should encourage its use (in the same way that strict and warnings are
> currently optional in Perl 5, but in the absence of a good reason it's
> expected that they be used).

Well, "man Perl/BUGS" says:
       The -w switch is not mandatory.
So at least some people agree that there may need some more guidance.
Warnings default "on" is a good idea, just as giving people a good
default documentation strategy.
-- 
Regards,

               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

  

Wuo0me
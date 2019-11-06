From perl6-all-return-81961-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 11:32:35 2007
Return-Path: <perl6-all-return-81961-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EFWYL9023493
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 11:32:34 -0400
Received: (qmail 16474 invoked by uid 514); 14 Jun 2007 15:32:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16469 invoked from network); 14 Jun 2007 15:32:32 -0000
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
Date: Thu, 14 Jun 2007 17:32:02 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Thomas Wittek <mail@gedankenkonstrukt.de>
Cc: perl6-language@perl.org
Subject: Re: POD <-> Code entanglement
Message-ID: <20070614153202.GP31918@earth.overmeer.net>
Mail-Followup-To: Thomas Wittek <mail@gedankenkonstrukt.de>,
	perl6-language@perl.org
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <20070614082341.GU31918@earth.overmeer.net> <46711DC1.5020809@casella.verplant.org> <20070614151833.12191.qmail@lists.develooper.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070614151833.12191.qmail@lists.develooper.com>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

* Thomas Wittek (mail@gedankenkonstrukt.de) [070614 15:18]:
> So maybe directives like method, sub, attribute, class etc. might be a
> better choice regarding semantics.

See OODoc::Parser::Markov

> It's a bit like HTML<->XML, where the former lacks most of the semantics
> and makes the information processing - not to speak about a consistent
> look over several documents - a lot harder.

In HTML, you have logical markup as well: EM, STRONG, KEY, CODE, etc
With id and class, you can make any annotation you like:

  <div class="method">
     my_method OPTIONS
     This is the description of a method.
  </div>

I love the power of CSS.

> I could imagine a semantic documentation in Perl6, that could be
> translated to XML/HTML+CSS or to POD(6) for formatting it.

The nicest thing would be that the semantic docs become part of the parse
tree, which then (using standard introspection) can be used to generate
manual pages, natively into POD, roff, HTML, whatever.

I see no reason why entangled docs are so hard to parse for Perl6,
as Damian arguments.  Even it being difficult is not a good reason to
make the life of all programmers harder.
-- 
               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

            

LBog7"ot t
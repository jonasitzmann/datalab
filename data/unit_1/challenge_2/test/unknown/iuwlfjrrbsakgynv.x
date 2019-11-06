From perl6-all-return-82204-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 17:30:18 2007
Return-Path: <perl6-all-return-82204-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LLUHL9029539
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 17:30:17 -0400
Received: (qmail 25583 invoked by uid 514); 21 Jun 2007 21:30:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 25569 invoked from network); 21 Jun 2007 21:30:14 -0000
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
Received-SPF: pass (x1.develooper.com: domain of Smylers@stripey.com designates 81.21.79.10 as permitted sender)
Date: Thu, 21 Jun 2007 21:33:25 +0100
From: Smylers <Smylers@stripey.com>
To: perl6-language@perl.org
Subject: Re: Referring to source code within Perldoc: the new A<> code
Message-ID: <20070621203325.GS6900@stripey.com>
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621115210.GH31139@c4.convolution.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070621115210.GH31139@c4.convolution.nl>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Juerd Waalboer writes:

> Damian Conway skribis 2007-06-21 11:45 (+1000):
> 
> > A dedicated OO documentation tool could certainly do a better job in
> > that case, I heartily agree. I'm looking forward to using one.
> 
> This dedicated OO documentation must be core, because Perl itself is
> heavily OO.

That doesn't follow.

> If we are to ever have consistent, semantic, structured OO
> documentation throughout CPAN (and numerous in house projects), we
> must start with Perl itself,

I disagree.  perldoc.perl.org was started by JJ, gained popularity, and
then got awarded the official blessing of the onion.  Over the years
there have many several sites with Perl documenation.

Let the same thing happen with Perl 6: allow innovation, and if you, or
Markov, or anybody creates a particularly fine site then people will
admire it, use it ... and then perhaps it can be made official.

There isn't really anything to be gained by pre-empting this and picking
something initially.

Documentation, unlike code, doesn't have to be backwards compatible: if
Perl 6.0.1 changes the API of a standard function that will break
existing code; but if Perl 6.0.1 has documentation with a different
structure from Perl 6.0.0, that won't break anything.

Also it's much easier for people to get the benefit of documentation
improvements than of code improvements.  If Perl 6.0.1 introduces a new
feature then I need to upgrade from Perl 6.0.0 on all my computers to be
able to use it; but if Perl 6.0.1 has improved documentation then I can
read, browse, and search that documentation on its website without
needing to upgrade any of my computers.

Smylers

        

z lf >ilFs:c
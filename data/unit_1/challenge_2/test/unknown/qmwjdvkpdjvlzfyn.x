From perl6-all-return-82254-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:18:08 2007
Return-Path: <perl6-all-return-82254-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNI7L9010818
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:18:07 -0400
Received: (qmail 17674 invoked by uid 514); 22 Jun 2007 16:42:49 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17668 invoked from network); 22 Jun 2007 16:42:49 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: fail (x1.develooper.com: domain of mark@glines.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Fri, 22 Jun 2007 09:42:03 -0700
From: Mark Glines <mark@glines.org>
To: "Patrick R. Michaud" <pmichaud@pobox.com>
Cc: chromatic <chromatic@wgz.org>, Nicholas Clark <nick@ccl4.org>,
   parrot-porters@perl.org
Subject: Re: [svn:parrot] r19231 - trunk/languages/perl6/src/pmc
Message-ID: <20070622094203.45cc61f1@chirp>
In-Reply-To: <20070622163627.GB11714@host.pmichaud.com>
References: <20070621190535.61B17CB9E1@x12.develooper.com>
	<200706212308.25363.chromatic@wgz.org>
	<20070622090732.GN20876@plum.flirble.org>
	<200811071428.40407.chromatic@wgz.org>
	<20070622093040.1fb41cda@chirp>
	<20070622163627.GB11714@host.pmichaud.com>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_FAIL

On Fri, 22 Jun 2007 11:36:28 -0500
"Patrick R. Michaud" <pmichaud@pobox.com> wrote:
> > Also, using sizeof() will fix some cases that strlen() doesn't
> > handle correctly, specifically, strings containing explicit null
> > characters. src/objects.c has a few examples of that.
> > string_to_cstring(interp, "\0", 0) will get the size wrong, but
> > string_to_cstring_literal(interp, "\0") will get it right.  So I
> > don't really see a good excuse for not using it everywhere.
> 
> I think you mean "string_from_cstring_literal", not 
> "string_to_cstring_literal".  At least I _hope_ that's 
> what you mean.  :-)

Oops, you're absolutely right.


> Also, out of curiosity, do we really need "cstring" in the name?
> How about simply...?
> 
>     string_from_literal(interp, "Foo")
> 
> (I'm not opposed to leaving 'cstring' in the name if it's important
> to somehow make it clear that the literal is a cstring literal, I'm
> just asking the question.)

I just did it to make it look visually similar to
string_from_cstring().  I am open to suggestions and happy to make
changes.

Mark

      

 oAtQmi
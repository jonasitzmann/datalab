From perl6-all-return-82236-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 05:43:58 2007
Return-Path: <perl6-all-return-82236-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M9hvL9004540
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 05:43:58 -0400
Received: (qmail 25211 invoked by uid 514); 22 Jun 2007 09:43:52 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 25202 invoked from network); 22 Jun 2007 09:43:51 -0000
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
Date: Fri, 22 Jun 2007 11:43:18 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Moritz Lenz <moritz@casella.verplant.org>
Cc: perl6-language@perl.org
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
Message-ID: <20070622094318.GM16156@earth.overmeer.net>
Mail-Followup-To: Moritz Lenz <moritz@casella.verplant.org>,
	perl6-language@perl.org
References: <467073C4.6020708@conway.org> <20070614082341.GU31918@earth.overmeer.net> <832f158a0706141717j7accfb36w92bf3a2ed7a8e115@mail.gmail.com> <20070615075949.GR31918@earth.overmeer.net> <20070616090944.GG6900@stripey.com> <20070616103358.GB10601@earth.overmeer.net> <20070621180226.GK6900@stripey.com> <20070622084840.GJ16156@earth.overmeer.net> <832f158a0706220202p1baf8880ub10797003905e2be@mail.gmail.com> <467B9363.4040902@casella.verplant.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <467B9363.4040902@casella.verplant.org>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

* Moritz Lenz (moritz@casella.verplant.org) [070622 09:16]:
> Damian Conway wrote:
> > Would the following syntax suffice?
> > 
> >     method isValidPostalCode(str $postalcode) returns bool {...}
> >     =PURPOSE  Check weather the postal code confirms to the standards
> >     =ARG $postalcode
> >         a string with blanks trimmed.
> >     =RETURN
> >         the string is not cleaned-up.
> > 
> > Because you can already do precisely that in the current design of Pod 6.
> 
> I really like that example.
> And it makes me think that some of this discussion results from
> insufficient Pod 6 knowledge, simply because we haven't read enough real
> Perl 6 that is annotated with Pod 6.

No, no... although you can create lines of text which are alike, the
whole meaning of these lines and needs for the processing tools behind
this is very different.  Our discussion has always been about that:
how much info can the tools produce automatically: is POD6 integrated
with Perl6, or only (accidentally) sharing the same file.
-- 
               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

              

lsPg Bv
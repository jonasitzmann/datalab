From perl6-all-return-82223-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 03:18:01 2007
Return-Path: <perl6-all-return-82223-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M7I0L9002832
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 03:18:00 -0400
Received: (qmail 9774 invoked by uid 514); 22 Jun 2007 07:17:57 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9769 invoked from network); 22 Jun 2007 07:17:56 -0000
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
Date: Fri, 22 Jun 2007 09:17:26 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Smylers <Smylers@stripey.com>
Cc: perl6-language@perl.org
Subject: Re: Referring to source code within Perldoc: the new A<> code
Message-ID: <20070622071726.GG16156@earth.overmeer.net>
Mail-Followup-To: Smylers <Smylers@stripey.com>, perl6-language@perl.org
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621115210.GH31139@c4.convolution.nl> <20070621203325.GS6900@stripey.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070621203325.GS6900@stripey.com>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

* Smylers (Smylers@stripey.com) [070621 20:33]:
> Documentation, unlike code, doesn't have to be backwards compatible: if
> Perl 6.0.1 changes the API of a standard function that will break
> existing code; but if Perl 6.0.1 has documentation with a different
> structure from Perl 6.0.0, that won't break anything.

When 6.0.1 changes the doc structure, then all 6.0.0 docs are unusuable,
or need conversion.  Although this doesn't cause code breaking, it does
have maintenance and usability issues.  Don't forget that Perl code is
so compact that we (at least me) have more lines of doc than of code
in our files.

If you take documentation serious enough, you certainly do want (at least
some) backwards compatibility too.  And as much as possible automatic
consistency checks/warrants.
-- 
               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

                

t31jlxltDnl29ol

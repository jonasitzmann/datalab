From perl6-all-return-82212-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 19:18:24 2007
Return-Path: <perl6-all-return-82212-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LNINL9030776
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 19:18:23 -0400
Received: (qmail 2628 invoked by uid 514); 21 Jun 2007 23:18:20 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2623 invoked from network); 21 Jun 2007 23:18:20 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
X-ORBL: [71.139.22.210]
Date: Thu, 21 Jun 2007 16:17:52 -0700
From: Larry Wall <larry@wall.org>
To: perl6-all@perl.org, perl6-language@perl.org
Subject: Re: Referring to source code within Perldoc: the new A<> code
Message-ID: <20070621231752.GA4149@wall.org>
Mail-Followup-To: perl6-all@perl.org, perl6-language@perl.org
References: <4678B887.8090303@conway.org> <20070621202113.GR6900@stripey.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070621202113.GR6900@stripey.com>
User-Agent: Mutt/1.5.14 (2007-02-12)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Thu, Jun 21, 2007 at 09:21:13PM +0100, Smylers wrote:
: Damian Conway writes:
: 
: > Here's the first draft (documented in Pod 6, of course ;-).
: > 
: > =head3 Ambient aliases
: > 
: > The C<A<>> formatting code specifies an B<alias to an ambient
: > antecedent>.
: 
: Please can you explain the reasoning for choosing antecedent, rather
: than successor?

I think having to pick either one or the other is likely a design smell.
Maybe it would be better to have predeclared extractors than to have a
search strategy baked half-heartedly into A<>.

Larry

            

 it
f4<
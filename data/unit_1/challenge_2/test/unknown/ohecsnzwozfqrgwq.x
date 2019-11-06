From perl6-all-return-82394-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 16:49:01 2007
Return-Path: <perl6-all-return-82394-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5QKn0L9017521
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 16:49:00 -0400
Received: (qmail 16324 invoked by uid 514); 26 Jun 2007 20:48:56 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16313 invoked from network); 26 Jun 2007 20:48:56 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of jerry.gay@gmail.com designates 66.249.92.171 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=jO7Rurr+x9HXRZ3QYsh8St4dyhJ9vS2ZVB543uH/7LjkaV5jJodWVX0ktPBlESCrLJnQ0qgnxFQvHng2Qgp5IYe4PMCj04gYH7zbJCGE4PKR7nmPdMTO6aLFjsqNupl7p1IjyZt3phIFbaiNk8IIKBe42LnpZdbYJMCBXTsNn1w=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=GABDgq7noK+jNkK3z9QWS+y2adq6kADcc89UY7X9TeCYzZT294ojyo37BZdIZvAGASobhXCPMkONPXzZx/v7Nfqf4Feier/IGiuoCtmhsvLS1oo/D64XY64vPXk8oEPTFnRpOlCSvZiVAs/qIvHMkFe+ixmye/icjsLLJ/0Qk+I=
Message-ID: <1d9a3f400706261348q3fe10b02n6b85d4d31788b85@mail.gmail.com>
Date: Tue, 26 Jun 2007 13:48:22 -0700
From: "jerry gay" <jerry.gay@gmail.com>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #40392] [CAGE] convert C<internal_exception> to C<real_exception>
Cc: perl6-internals@perl.org
In-Reply-To: <rt-3.6.HEAD-1276-1182890373-601.40392-15-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-40392@perl.org>
	 <1d9a3f400609211438q2842bddbr4c21f1d12505eb30@mail.gmail.com>
	 <rt-3.6.HEAD-1276-1182850618-1267.40392-15-0@perl.org>
	 <1d9a3f400706260635q4f35e062se9ceaf30aa2cabac@mail.gmail.com>
	 <rt-3.6.HEAD-1276-1182865010-1610.40392-15-0@perl.org>
	 <rt-3.6.HEAD-1276-1182890151-305.40392-15-0@perl.org>
	 <rt-3.6.HEAD-1276-1182890373-601.40392-15-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/26/07, Paul Cochrane via RT <parrotbug-followup@parrotcode.org> wrote:
> On Tue Jun 26 13:35:51 2007, ptc wrote:
> > On Tue Jun 26 06:36:50 2007, particle wrote:
> > > On 6/26/07, Paul Cochrane via RT <parrotbug-followup <!-- x --> at
> > parrotcode.org> wrote:
> > > > On Thu Sep 21 14:38:40 2006, particle wrote:
> > > > > parrot's source is littered with internal_exception() calls,
> the
> > bulk
> > > > > (all?) of which should be converted to real_exception() calls.
> > > > > internal exceptions are uncatchable, and might as well be called
> > > > > C<exit>. that's bad, ya dig?
> > > > >
> > > > > there are plenty of examples of calls to real_exception() so it
> > should
> > > > > be an easy task for the willing. look in
> > > > > F<include/parrot/exceptions.h> for a list of exception
> constants.
> > > > > convert to E_FooError types where possible.
> > > > >
> > > > > for an example commit of a modification, C<svn diff -c 14680>,
> or
> > if
> > > > > you don't have svn 1.4.0 yet (why not?) C<svn diff -r
> 14679:14680>
> > > >
> > > > As of r19331 there are 190 files affected.  The complete list I'm
> > > > attaching to this ticket.  As I get time, I'm going to attack this
> > > > ticket directory by directory.
> > > >
> > > fab. the safest place to start (least likely to run into cases where
> > > we *need* internal_exception) is probably src/pmc.
> >
> > Attached is a patch for the pmc's.  Effectively everything under src/
> > pmc but also the relevant perl modules have been changed under lib/
>
> And this patch is for the dynamic pmc's which should really have been
> added with the last patch.
>
looks great, apply away!
~jerry

              

ofmFOrvcn7
2
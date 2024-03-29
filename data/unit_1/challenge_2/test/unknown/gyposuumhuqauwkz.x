From perl6-all-return-81887-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 10 17:45:27 2007
Return-Path: <perl6-all-return-81887-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ALjPL9006740
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 10 Jun 2007 17:45:25 -0400
Received: (qmail 24715 invoked by uid 514); 10 Jun 2007 21:45:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 24710 invoked from network); 10 Jun 2007 21:45:23 -0000
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
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mddiep@gmail.com)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of mddiep@gmail.com designates 64.233.166.177 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mu5PfyspyUS9foCArWK0ZtWQVVKPyLgyj9qm9C775KBJ46ILut7+znnctGt6QmMOVQ2O+GO2VgsHTGwnctd4W9HtGSQ7b8wKH2cFqu9vxmf3M0PfTGwXJmfxs1QqVjWAdFqADfIAvdFtzCVWX6/GGNxna3jAY+Ko5oLfvZ55SDw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=g460LeEVN1tM9p+rV+pHdvFQFlpr0lMo47Qe4daS27EVEtc0fWMbPdclsVE6WQYKfCAZI19i4EZdqGj3+xZRIuuZU4K4LERY0iWfsBMb924+u72NnF7fzdgmsGmhsb5+f7q0uWhOR4iV1mRCE+VWW6nTbbLseQjZttJRuS5hN9I=
Message-ID: <198c87380706101444g799ea522h402b41d8b9b1cdc7@mail.gmail.com>
Date: Sun, 10 Jun 2007 14:44:29 -0700
From: "Matt Diephouse" <mddiep@gmail.com>
Reply-To: matt@diephouse.com
To: chromatic <chromatic@wgz.org>
Subject: Re: P6 String Assertion Failure (diagnosis and fix)
Cc: parrot-porters@perl.org
In-Reply-To: <200706070106.13907.chromatic@wgz.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <200706070106.13907.chromatic@wgz.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_NEUTRAL

On 6/7/07, chromatic <chromatic@wgz.org> wrote:
> When I run the t/01-sanity/06-use.t test in languages/perl6, I get an
> assertion failure:
>
>         parrot: src/string.c:2028: string_hash: Assertion `s->encoding && s->charset
> && !(((s)->obj.flags) & b_PObj_on_free_list_FLAG)' failed.

Assertions like this really ought to be broken up in the source. By
using multiple assertions, it's immediately obvious which assertion as
actually failing. I've been meaning to split this up for quite some
time but never got around to it.

> This happens when trying to hash a string (specifically the
> string 'Perl6::Grammar::quote_term').  I dug into this a little bit.  It's
> the last test that fails; the string IS on the free list.  Something isn't
> marking it as live appropriately.

<snip>

> The test then passed.  The assertion was okay.  The String is obviously live,
> after it gets marked as live.  I then wondered if strings get marked as live
> when they're created.  The answer was in new_string_header() in
> src/headers.c:
>
>         PObj_get_FLAGS(string) |= flags |PObj_is_string_FLAG|PObj_is_COWable_FLAG;
>
> I changed it:
>
>         PObj_get_FLAGS(string) |= flags |
>                 PObj_is_string_FLAG | PObj_is_COWable_FLAG | PObj_live_FLAG;
>
> Adding the live flag fixed the problem (r18855).

Good work! This has been the cause of a number of Perl 6 GC errors. I
spent some time trying to track it down before but never made it as
far as you did.

Here's hoping that this is the last GC bug. ;-)

-- 
Matt Diephouse
http://matt.diephouse.com

 

0dcArdr/<y37SNza
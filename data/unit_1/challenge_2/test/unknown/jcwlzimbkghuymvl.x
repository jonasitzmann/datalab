From perl6-all-return-81947-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 17:29:41 2007
Return-Path: <perl6-all-return-81947-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DLTeL9012716
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 17:29:40 -0400
Received: (qmail 28387 invoked by uid 514); 13 Jun 2007 21:29:38 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28382 invoked from network); 13 Jun 2007 21:29:38 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of dataweaver@gmail.com designates 64.233.162.232 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=DsDNhJGD3YB1QvV5jRtVpZ8kwc1lodnFavtRKyjWVGqnNIVxmK8NxNGy/RqwftdNc+tV2/J8QnTNJ3VNHCzY3xebYbUde9FVWLd1tmo36NHtvE22+fYwPPPp/fn2znGjA5iKxcAcivF/AFqj9tpDcuQz8OvjvLWVkqn0sks9uFI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=lGZ3A9QS0pSNoB+EwrdVpCkZMyWcM76M/jCaoYwTFihwjv6Qq/Bg02VVguldqbYP/HCxsL1N7kKyEobzkWWN+k9NZOTeJ6QNJ2TyIEfQ3Gtd5YbfoSExDE4XMeCnJecjcnWKuMeRL0/qIHDmUfJX+ba0VxC2ptBfczebhBCt9Ms=
Message-ID: <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
Date: Wed, 13 Jun 2007 14:29:15 -0700
From: "Jonathan Lang" <dataweaver@gmail.com>
To: "larry@cvs.perl.org" <larry@cvs.develooper.com>
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
Cc: perl6-language@perl.org
In-Reply-To: <20070613205525.7ECA0CB9B8@x12.develooper.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

larry@cvs.perl.org wrote:
> +Block comments may be nested within other block comments (with the
> +same or differing brackets).  POD comments may also be nested within
> +block comments.  (These are still visible to the POD parser; if you
> +wish to comment out a block of mixed POD and Perl 6 code, either use a
> +POD comment around it all, or prefix every line with C<#>.)  The parser
>  must report mismatched openers or closers to prevent, for example,
>  unwitting use of bare C<}> as a closer for an opening C<#{>.

...or put it all in a block comment, and prefix POD's block tags with C<#>.

What's the rationale for keeping POD comments that are nested in block
comments visible to the POD parser?  It seems to me that the least
surprising behavior would be for the POD comment to be swallowed up by
the block comment, on the basis that a block comment ought to be
equivalent to prefixing every line from its start to end with a C<# >.
 Conversely, I'd expect a block comment that's nested inside a POD
comment to be passed to the POD parser as ordinary POD text.  In
short, whichever kind of comment comes first should dominate.

-- 
Jonathan "Dataweaver" Lang

        

Nln  4
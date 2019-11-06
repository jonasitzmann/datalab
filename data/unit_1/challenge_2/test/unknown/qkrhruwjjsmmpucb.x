From perl6-all-return-82144-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 14:05:56 2007
Return-Path: <perl6-all-return-82144-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KI5sL9013308
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 14:05:55 -0400
Received: (qmail 5643 invoked by uid 514); 20 Jun 2007 18:05:51 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 5638 invoked from network); 20 Jun 2007 18:05:51 -0000
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
Received-SPF: pass (x1.develooper.com: domain of markjreed@gmail.com designates 209.85.132.242 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=CSQ6nzwHUrPMpQdStcHBioFCyj99qZfDrASCigumEst7YaC0dgBodb1Ne3jAXYg2FBMJm0gPhYTh4nuxKAxc11dkqKtohsPX6ZRX3+pqLUQaNjzEq5pH/oaOcM+LCVVndKd0mhbKvWfEJM3IuE3anYLPQ1LCng7gdRiCx95lgRc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=uPXZwJpQKsLzAf1P3ijSZWLn2e9he1mWcvXFdSmAYUvdhPmPzd30/ywWQoVpA62/DE99AKOywlpi9WQfKCwkZnAnq/cJ8e1gjY6/s9UBigdoUYWWUBlwqmfgVTivRg6eMePlYz7liawkOgEUtWQYLoTU9vM1PFxzJy+WsSCvjHo=
Message-ID: <f60fe000706201105o1197b7c2rb00435fea060c31d@mail.gmail.com>
Date: Wed, 20 Jun 2007 14:05:25 -0400
From: "Mark J. Reed" <markjreed@mail.com>
Sender: markjreed@gmail.com
To: "Andy Lester" <andy@petdance.com>
Subject: Re: memcpy
Cc: "Allison Randal" <allison@perl.org>, "Leopold Toetsch" <lt@toetsch.at>,
   perl6-internals@perl.org
In-Reply-To: <E1B1BD37-95E8-48AD-BFDD-83E981A94F7A@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
	 <200706192219.34450.lt@toetsch.at> <46795AD8.20204@perl.org>
	 <E1B1BD37-95E8-48AD-BFDD-83E981A94F7A@petdance.com>
X-Google-Sender-Auth: 7475832fceec0aef
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/20/07, Andy Lester <andy@petdance.com> wrote:
> I guess I don't see the need to document a standard C behavior with a
> macro.  We don't have
>
>    #define inc(x) (x)++
>
> do we?

Incrementing a var is much less likely to have unpredictable effects
due to modifying the wrong memory.  Sure, x might be a pointer, and
things might gang agley there, but pointers getting set to the wrong
type of pointee is a pretty common problem, and one that I'm happy to
have some runtime support in locating.

-- 
Mark J. Reed <markjreed@mail.com>

                

o 4qs <u.
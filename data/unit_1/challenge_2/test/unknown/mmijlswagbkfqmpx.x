From perl6-all-return-81785-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 23:25:04 2007
Return-Path: <perl6-all-return-81785-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l543P4hB022674
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 23:25:04 -0400
Received: (qmail 23572 invoked by uid 514); 4 Jun 2007 03:24:57 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23567 invoked from network); 4 Jun 2007 03:24:57 -0000
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
Received-SPF: pass (x1.develooper.com: domain of jrisom@gmail.com designates 64.233.166.182 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=aEFUrVSa6gDVZku0oUPmY9jBMldJpD/KJWfDFcgbaxYrHGJwvbRVe0F+tPjzEmQX7iZDHe/kKerLKZCpfDh9wn8P9E94uksKw9UGK1RqAP9hSO4mYzIbo+nTHWpAbh8veXvEqx+YYCzR/bBQTVA6wXKuaC55AWQECHqnqEMMJb4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=THvDKliM58Aib8LpblqRR2KR9c8N5zHRFeTO8+gh0D0/0/gEZbpXECTChViMsMjslRQWjy89wvyB/oUFQbWsjiAiQ0nXApHaCdYwqIym8b/1sAlRzFerKwL8ERkI/UiQMwQ+q7KQP/uf2fJ2fsUfOZu7rIOdM8kuZYhdvWk0/gY=
In-Reply-To: <200706032016.00577.chromatic@wgz.org>
References: <RT-Ticket-42624@perl.org> <46283740.3080508@email.com> <rt-3.6.HEAD-30557-1177037129-1417.42624-72-0@perl.org> <200706032016.00577.chromatic@wgz.org>
Mime-Version: 1.0 (Apple Message framework v624)
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <ba87bc48ac20a40cacf061d38d58dad3@gmail.com>
Content-Transfer-Encoding: 7bit
Cc: perl6-internals@perl.org,
   Ryan Hinton (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
From: Joshua Isom <jrisom@gmail.com>
Subject: Re: [perl #42624] Parrot compiles now but still fails tests.
Date: Sun, 3 Jun 2007 22:25:10 -0500
To: chromatic <chromatic@wgz.org>
X-Mailer: Apple Mail (2.624)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

You have to add LD_LIBRARY_PATH=.:blib/lib to your environment as in 
src/dynoplibs/README(not the best place, but it's where I first found 
it) to get it to work at the moment.  I don't recall there always 
having been an issue but it exists at the moment.

It should be noted probably that darwin actually has the same issue, 
but is resolved in the Makefile for 'make test'.  I've looked at the 
documentation for FreeBSD's make and I haven't found a way to set an 
environmental variable.  Darwin uses gmake which has that option.

On Jun 3, 2007, at 10:16 PM, chromatic wrote:

> On Thursday 19 April 2007 19:45:29 Ryan Hinton wrote:
>
>> Here is my machine info:
>> FreeBSD 5.3-STABLE i386
>>
>> Here is the complete report.
>
> Thanks for the report.  How does a current checkout fare?
>
> Joshua Gatcomb, I believe, is also seeing dynamic loading failures on 
> FreeBSD.
> Perhaps there are similarities between your two machines.
>
> -- c
>

          


u0C�
 >NK" 8
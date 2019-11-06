From perl6-all-return-81828-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 14:03:22 2007
Return-Path: <perl6-all-return-81828-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l55I3LhB012065
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 14:03:21 -0400
Received: (qmail 14702 invoked by uid 514); 5 Jun 2007 18:03:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14697 invoked from network); 5 Jun 2007 18:03:14 -0000
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
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.234 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=rsFYIXLNo0pe/ltsdsSyFjE8/6Ljhv0GL273M5kCkM7gztuMJJLn/b5ZKIRfgHzlvn/r0Fpv8tBFFjZFoRdD0msSi8QSXh4lgWY7348nMeLTVYTTWiKIleN+gb73sF/9USg5YF3aJehTFvI4VScTJFeoM2eCear/QIp+wH4s21c=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mrNXbHsBiCucnCs0i7zHorblK3qpyHNP9jEiUgX4JS2u+YBJg6ynN4BRjUbREf40x+GuoWtsrY3phPzVm7PXaS67lQ2rwlsRJ3DuPqI34lk6CIndY7vloKIrPitYLuScP/TSq8SXFc60KQs53e1mqyiwWu9sDjg2uNlSCo7ND1g=
Message-ID: <8e8ee0d40706051100s6e9557d3p7761b61f738904e8@mail.gmail.com>
Date: Tue, 5 Jun 2007 20:00:32 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "jerry gay" <jerry.gay@gmail.com>
Subject: Re: Parrot Bug Summary
Cc: perl6-internals@perl.org
In-Reply-To: <1d9a3f400704090716g321ca53chfe00fd544c758051@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070409130041.19397.qmail@x1.develooper.com>
	 <1d9a3f400704090716g321ca53chfe00fd544c758051@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=1.3 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,KARMA_CONNECT_NEGATIVE,SPF_PASS

> the parrot rt queue is growing by the week. it means we have more eyes
> on the source code, and more folks running parrot. it also means it
> becomes more difficult to manage.
>
> as you can see in the snippets above from the weekly rt summary
> message, we have 500+ tickets. many of these are unclassified with
> regard to platform, severity, language, etc. classification of these
> tickets, and creation of shared queries we can use to manage the queue
> will make it easier for committers and contributors to perform
> analysis on current tickets. this will enable folks to more easily
> determine if a ticket has been entered already, for example.

Should be a bit better now wrt platforms affected by a given ticket.
Going in decending ticket number, I got to #37993.  I might be able to
finish sometime later, but if someone beats me to it I won't be
displeased ;-)

Just as a note to the list (and in some sense myself) we need categories for:

 - Tru64, OpenSolaris, a tag to specify 32 or 64 bit, IntelMac (in platforms)
 - imcc, pir (in languages)
 - RFE, CAGE, PGE, TGE, PDD (in tags)

Paul

                   

nWhnPoOMog3
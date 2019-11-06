From perl6-all-return-81847-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun  6 04:33:11 2007
Return-Path: <perl6-all-return-81847-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l568X9hB019376
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 04:33:10 -0400
Received: (qmail 27609 invoked by uid 514); 6 Jun 2007 08:33:02 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 27604 invoked from network); 6 Jun 2007 08:33:02 -0000
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
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.238 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=JszczwFQD1adlOnHCUOJc5AewTXSqKMOm+FFZNIQFTQw/EXMJDh76e1qE5b6pdyC+6T6AxqhOKhyAHYrshXD+jjxlgWkhhfPBolBiSeDQh3mF/PMzgk6FIwkzgxfhX6WRraM5/sa9aSJlyU9QBh5v7z4TWgoe+8lzGmNZXJiDQQ=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=CC2tB4nPQ+RMp4pjWgUEIC1x8GitcL58kERGof6vkn/WBl0+AfB/NT4b92kRnUTzAhFEqRgdPxp1pTPa2i7JJjIUROmG+w99w57uYm/f4S9P6FLq90RZoevJLXCrmPUlNxPMc8L2u6qvYSJh0cT3zoIy5+9jongVfAnca44G4Ec=
Message-ID: <8e8ee0d40706060111qe67b07bue93b41f5612b55d7@mail.gmail.com>
Date: Wed, 6 Jun 2007 10:11:19 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "jerry gay" <jerry.gay@gmail.com>
Subject: RT Ticket Management [was: Re: Parrot Bug Summary]
Cc: perl6-internals@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_SIGNED,SPF_PASS

> > as you can see in the snippets above from the weekly rt summary
> > message, we have 500+ tickets. many of these are unclassified with
> > regard to platform, severity, language, etc. classification of these
> > tickets, and creation of shared queries we can use to manage the queue
> > will make it easier for committers and contributors to perform
> > analysis on current tickets. this will enable folks to more easily
> > determine if a ticket has been entered already, for example.
>
> Just as a note to the list (and in some sense myself) we need categories for:
>
>  - Tru64, OpenSolaris, a tag to specify 32 or 64 bit, IntelMac (in platforms)
>  - imcc, pir (in languages)
>  - RFE, CAGE, PGE, TGE, PDD (in tags)

In addition to the above categories, would it be helpful to also have
'm86k' as another platform?  What are people's views on the above
proposed additions?

Also, Jerry mentioned sharing of queries on RT.  How does one go about
this?  I have my own searches for [TODO], [CAGE], [BUG], and [PATCH]
and I don't know if they are of any help to others, but they might be.
 How do I use other people's other queries?

Paul

    

 rAa -4 We-ar
From perl6-all-return-82134-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 09:36:29 2007
Return-Path: <perl6-all-return-82134-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KDaTL9010453
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 09:36:29 -0400
Received: (qmail 16915 invoked by uid 514); 20 Jun 2007 13:36:25 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16909 invoked from network); 20 Jun 2007 13:36:25 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chaddai.fouche@gmail.com designates 209.85.132.242 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=imIC6Viv1LHB3M2i4HgHYhUoqGBqz39hPCyFAQVurtJzz9Xwy/UEcBE2u1giWvb7cZVIcK6NYWS6esxBJzPB4s+iGVkqhNek3eT25RJanxRXZax/mcYKA9wzvcfaNQqzFEG54JiO2kdXNfAsZMjyJl4nxnT2QHBTaUCG2T+gK2Q=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=nBu/DOSTrgnGAXsCz52XK3ys+h6EuJGKIWdCYHxXaaesbhom1dzjdVJznLjxziOlJN6imkKK+NCtxEQqRcCVuB0rj0VKjtD7ntwdWRgYsIGNjPHFOsCI5aij1JZP/cs1awlPG+Rrc9enMry/4K4rQZ1qX2o/ZIjow5kObWkaQNQ=
Message-ID: <e9350eaf0706200635q45c9135et487c81959fbcdc79@mail.gmail.com>
Date: Wed, 20 Jun 2007 15:35:48 +0200
From: "=?ISO-8859-1?Q?Chadda=EF_Fouch=E9?=" <chaddai.fouche@gmail.com>
To: cdumont@comquest.co.jp
Subject: Re: Perl6 new features
Cc: perl6-language@perl.org
In-Reply-To: <46791805.9080400@comquest.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Disposition: inline
References: <4676D013.6020708@perl.org> <46771F91.6060303@casella.verplant.org>
	 <7C4DDCB0-71CC-4700-96C4-35384AE25AA6@fsck.com>
	 <4678B29B.20201@comquest.co.jp>
	 <4678FDED.6090200@casella.verplant.org>
	 <46791805.9080400@comquest.co.jp>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KDaTL9010453

2007/6/20, cdumont <cdumont@comquest.co.jp>:
> I know that it is somehow not the subject,
> but I think the actual 5.8 doc should be changed to some extents.
snip
> AND so that it could be a lot richer, allow people to "comment"...

Well you can't comment it (CPAN Annotate allow you to comment the doc
of any CPAN module though), but the perl documentation is quite
extensive, and I for one don't understand what you mean by :

> It could be nice if we could browse each core functions,
> having the function parameters, flags (not that much used right?), and
> the return value of the function, followed by exampleS

it seems to me that you already have this : in line of command you can
use "perldoc -f split" to get the split() doc, where there are
examples and return value and parameters are discussed at length, if
you prefer a "modern" format,
http://perldoc.perl.org/functions/split.html should content you, and
you can use Pod::POM::Web to get a small HTTP server where all Perl
doc (core and modules) can be browsed and searched, so what exactly
are you speaking about ?

-- 
Jeda�

             

_nxn
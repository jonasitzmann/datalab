From perl6-all-return-82181-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 13:34:59 2007
Return-Path: <perl6-all-return-82181-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LHYwL9026993
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 13:34:59 -0400
Received: (qmail 27728 invoked by uid 514); 21 Jun 2007 17:34:56 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 27723 invoked from network); 21 Jun 2007 17:34:55 -0000
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
From: Paul Seamons <mail@seamons.com>
To: perl6-language@perl.org
Subject: Re: Referring to source code within Perldoc: the new A<> code
Date: Thu, 21 Jun 2007 11:33:43 -0600
User-Agent: KMail/1.9.5
References: <4678B887.8090303@conway.org>
    <210620071114079448%brian.d.foy@gmail.com>
    <200706211121.18192.mail@seamons.com>
In-Reply-To: <200706211121.18192.mail@seamons.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706211133.43664.mail@seamons.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

> The outcome is that poddoc can be Pod6 "pure" and perldoc can be (as its
> name suggests) documentation for Perl.

Sorry to reply to myself twice.

Making poddoc independent of Perl 6 opens the doors a little further for 
having pythondoc and phpdoc and yourlanguageheredoc which extract the POD 
tags ala poddoc and then add the inlined/introspectable documentation for 
that particular language.

Now the "only" hard part is getting the other language designers to allow 
ignoring pod markup in their languages.  All of the Parrot based variants 
could easily incorporate this feature.

Paul

           

nddWZ i4tre6p�n
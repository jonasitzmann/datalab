From perl6-all-return-82408-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 01:39:04 2007
Return-Path: <perl6-all-return-82408-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5S5d3L9005627
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 01:39:03 -0400
Received: (qmail 12306 invoked by uid 514); 28 Jun 2007 05:38:59 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 12301 invoked from network); 28 Jun 2007 05:38:59 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
In-Reply-To: <200706272226.17949.chromatic@wgz.org>
References: <82F50EE9-728B-4613-B20E-52947B0DDC4E@petdance.com> <200706272150.49775.chromatic@wgz.org> <F4622063-73A9-4FBC-92FE-02578B9D6393@petdance.com> <200706272226.17949.chromatic@wgz.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <F0A497ED-5AD6-4DD8-91D7-BC1F3BF512DB@petdance.com>
Cc: perl6-internals@perl.org
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: t/codingstd/perlcritic.t needs to be optional
Date: Thu, 28 Jun 2007 00:38:17 -0500
To: chromatic <chromatic@wgz.org>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME

>> Modified since when?
>
> Modified since the most recent checkout, of course.  Check svn or  
> svk status.
> Run these time-consuming analysis tests on only the modified files.

It'd have to be against the last update from svn of the file itself.   
I'm not sure I like the idea of relying on a given VCS.  I know  
Parrot's hosted in Subversion, but what about the Git folks?

It smells funny to me.

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




       

n_	lsA=-n=KKePi
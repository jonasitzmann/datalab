From perl6-all-return-82412-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 02:11:06 2007
Return-Path: <perl6-all-return-82412-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5S6B5L9005998
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 02:11:05 -0400
Received: (qmail 23879 invoked by uid 514); 28 Jun 2007 06:11:01 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23874 invoked from network); 28 Jun 2007 06:11:01 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: Andy Lester <andy@petdance.com>
Subject: Re: t/codingstd/perlcritic.t needs to be optional
Date: Wed, 27 Jun 2007 23:10:29 -0700
User-Agent: KMail/1.9.6
Cc: perl6-internals@perl.org
References: <82F50EE9-728B-4613-B20E-52947B0DDC4E@petdance.com> <200706272252.49592.chromatic@wgz.org> <1A480987-A240-4A41-99F6-7731BCCB683A@petdance.com>
In-Reply-To: <1A480987-A240-4A41-99F6-7731BCCB683A@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706272310.29502.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Wednesday 27 June 2007 23:00:49 Andy Lester wrote:

> What if we have the Perl::Critic checks as Subversion commit hooks?
> Could email p6i with the results, too.  That's what we do at work,
> and it's annoying, but it's there and it's pretty in-your-face.

If it doesn't hose svk push, where the first of several commits fails due to 
standards violations, I wouldn't mind trying it as an experiment.

(I only mention svk push because I've wedged my repository with something like 
that similar in ways that I don't understand and can't reproduce sufficiently 
to send CLKAO the proper complaint to get it fixed.)

-- c

                   

].tB 
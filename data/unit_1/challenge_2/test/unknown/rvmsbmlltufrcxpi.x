From perl6-all-return-82458-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 15:02:59 2007
Return-Path: <perl6-all-return-82458-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TJ2vL9029752
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 15:02:59 -0400
Received: (qmail 2607 invoked by uid 514); 29 Jun 2007 19:02:52 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2600 invoked from network); 29 Jun 2007 19:02:52 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
Date: Fri, 29 Jun 2007 13:42:18 -0500
From: "Patrick R. Michaud" <pmichaud@pobox.com>
To: perl6-internals@perl.org
Subject: Re: t/codingstd/perlcritic.t needs to be optional
Message-ID: <20070629184218.GE27722@host.pmichaud.com>
References: <82F50EE9-728B-4613-B20E-52947B0DDC4E@petdance.com> <200706272150.49775.chromatic@wgz.org> <F4622063-73A9-4FBC-92FE-02578B9D6393@petdance.com> <200706272226.17949.chromatic@wgz.org> <F0A497ED-5AD6-4DD8-91D7-BC1F3BF512DB@petdance.com> <20070628163156.10894.qmail@lists.develooper.com> <20070629165938.GP20876@plum.flirble.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070629165938.GP20876@plum.flirble.org>
User-Agent: Mutt/1.4.2.1i
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.pmichaud.com
X-AntiAbuse: Original Domain - perl.org
X-AntiAbuse: Originator/Caller UID/GID - [32003 505] / [47 12]
X-AntiAbuse: Sender Address Domain - host.pmichaud.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Fri, Jun 29, 2007 at 05:59:38PM +0100, Nicholas Clark wrote:
> > >>>Modified since when?
> 
> Since the last time the user ran Configure.
> (For the default test run)
> 
> I think that this will produce minimal false positives and false negatives,
> for identifying which files have been locally edited.

This might work for others -- it probably wouldn't help me.

I tend to run "make realclean; perl Configure.pl;" before doing a
"make test" prior to checkin... just to make sure I'm working from
something clean.  So, checking files modified since configure would
tend to miss the files I just changed.

Pm

  

f6nd
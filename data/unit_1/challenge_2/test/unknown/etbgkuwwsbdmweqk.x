From perl6-all-return-82538-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 14:17:35 2007
Return-Path: <perl6-all-return-82538-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64IHXL9013975
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 14:17:34 -0400
Received: (qmail 30944 invoked by uid 514); 4 Jul 2007 18:17:27 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 30939 invoked from network); 4 Jul 2007 18:17:27 -0000
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
To: perl6-internals@perl.org, parrotbug-followup@parrotcode.org
Subject: Re: [perl #43315] [TODO] config/inter/lex.pm:  Write unit tests
Date: Wed, 4 Jul 2007 11:16:47 -0700
User-Agent: KMail/1.9.6
References: <RT-Ticket-43315@perl.org> <E1I1tkq-0000eS-OI@li11-226.members.linode.com> <rt-3.6.HEAD-25329-1183555341-117.43315-15-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-25329-1183555341-117.43315-15-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Disposition: inline
Message-Id: <200707041116.47052.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l64IHXL9013975

On Wednesday 04 July 2007 06:22:21 James Keenan via RT wrote:

> I anticipate writing a series of posts to this RT ticket about different
> aspects of config/inter/ lex.pm.  To start, let me ask about the
> '--maintainer' option to Configure.pl.  This configuration option was added
> four years ago "to work around imcc dependencies."  When set, its most
> important effect appears to come in config/auto/gcc.pm later in the
> configuration process when it causes Parrot to be compiled with "
> -Wlarger-than-4096".

> Since you have to explicitly set certain options to Configure.pl to get
> past this point in inter::lex, Parrot's configuration by default does not
> attempt to determine whether you have a 'lex'-like program available.
>
> My question is this:  Is this a good thing?
>
> In other words, is it good that, by default, Parrot's configuration does
> *not* attempt to determine whether you have a 'lex'-like or 'yacc'-like
> program on disk?  Are we depriving the Makefile of any significant
> information by customarily sidestepping this probe?  Shouldn't Parrot's
> default configuration behavior be to seek out information rather than to
> skip that search?

The --maintainer option exists so that people who want to modify the lexer and 
parser of IMCC can do so.  However, the source tree contains the resulting 
generated files.  This means that it's not a requirement to have a lex or 
yacc to build Parrot.

I suppose the theory is that most people don't need to modify the IMCC parser 
and lexer.  Certainly I lived several happy years without doing so.

-- c

                   

o<�SVtgaMednz>t
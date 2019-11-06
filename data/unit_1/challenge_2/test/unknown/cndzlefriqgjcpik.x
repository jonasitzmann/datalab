From perl6-all-return-82140-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 12:24:41 2007
Return-Path: <perl6-all-return-82140-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KGOdL9012202
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 12:24:40 -0400
Received: (qmail 24744 invoked by uid 514); 20 Jun 2007 16:24:35 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 24739 invoked from network); 20 Jun 2007 16:24:35 -0000
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
Received-SPF: softfail (x1.develooper.com: transitioning domain of chromatic@wgz.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
Subject: Re: [svn:parrot] r19168 - trunk/src
Date: Wed, 20 Jun 2007 09:23:48 -0700
User-Agent: KMail/1.9.6
Cc: andy@petdance.com, parrot-porters@perl.org
References: <20070620145715.9D6D9CB9E1@x12.develooper.com>
In-Reply-To: <20070620145715.9D6D9CB9E1@x12.develooper.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
To: "Undisclosed.Recipients": ;
Message-Id: <200706200923.48085.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

On Wednesday 20 June 2007 07:57:15 petdance@cvs.perl.org wrote:

> Modified:
>    trunk/src/inter_call.c
>
> Log:
> Changed MAX to PARROT_MAX to avoid conflicts with any existing MAX

> Modified: trunk/src/inter_call.c
> ===========================================================================
>=== --- trunk/src/inter_call.c	(original)
> +++ trunk/src/inter_call.c	Wed Jun 20 07:57:14 2007
> @@ -27,6 +27,8 @@
>
>  /* HEADER: include/parrot/inter_call.h */
>
> +/* Make sure we don't conflict with any other MAX() macros defined
> elsewhere */ +#define PARROT_MAX(a,b) (((a)) > (b) ? (a) : (b))

Alternately, we could hoist this macro into a header, rename it back to MAX, 
and define it only if no system header defines MAX.  I think it's in math.h, 
but I'm not positive.

-- c

            

ea30ieUs
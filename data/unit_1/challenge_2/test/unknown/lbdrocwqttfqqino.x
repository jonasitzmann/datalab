From perl6-all-return-82270-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:56:03 2007
Return-Path: <perl6-all-return-82270-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMu1L9010287
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:56:01 -0400
Received: (qmail 17331 invoked by uid 514); 22 Jun 2007 20:09:18 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17325 invoked from network); 22 Jun 2007 20:09:18 -0000
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
To: perl6-internals@perl.org
Subject: Re: [perl #43251] [PATCH] Rename tools/dev/mk_manifests.pl
Date: Fri, 22 Jun 2007 12:47:46 -0700
User-Agent: KMail/1.9.6
Cc: James Keenan (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-43251@perl.org> <3F64FEED-9A50-46C4-AA81-945C86CA2926@verizon.net> <rt-3.6.HEAD-1276-1182257142-693.43251-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-1276-1182257142-693.43251-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706221247.46181.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Tuesday 19 June 2007 05:45:42 James Keenan wrote:

> According to its documentation, mk_manifests.pl "...generates a set
> of F<MANIFEST.*> files that give the final
> locations in the file system for all the installable files listed in
> F<MANIFEST> and F<MANIFEST.generated>."
>
> The name of this program is close to that of tools/dev/
> mk_manifest_and_skip.pl -- confusingly close, IMHO.
>
> The patch attached changes the name to be more self-documenting:
> mk_rpm_manifests.pl.

Before you apply it, bump up its copyright date.  Then remove the old name 
from MANIFEST.  Otherwise it looks fine to me.

-- c

    


avya eiendvi
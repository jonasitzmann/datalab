From perl6-all-return-82167-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 23:35:34 2007
Return-Path: <perl6-all-return-82167-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5L3ZWL9018089
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 23:35:32 -0400
Received: (qmail 24137 invoked by uid 514); 21 Jun 2007 03:35:29 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 24132 invoked from network); 21 Jun 2007 03:35:29 -0000
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
Subject: Re: [svn:parrot-pdd] r19204 - trunk/docs/pdds
Date: Wed, 20 Jun 2007 20:34:57 -0700
User-Agent: KMail/1.9.6
Cc: Bob Rogers <rogers-perl6@rgrjr.dyndns.org>
References: <20070621020243.99834CB9E1@x12.develooper.com>
In-Reply-To: <20070621020243.99834CB9E1@x12.develooper.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706202034.57099.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Wednesday 20 June 2007 19:02:43 rgrjr@cvs.perl.org wrote:

> Modified:
>    trunk/docs/pdds/pdd15_objects.pod

> -Ruby: Ruby has meta classes.  It would be nice if classes were objects in
> Parrots OO model. +Ruby: Ruby has meta-classes.  It would be nice if
> classes were objects in +Parrot's OO model.

Classes are PMCs.  Are there benefits to pushing them one step further and 
making them Objects as well?

-- c

                

n.: oe r3b
Vzx
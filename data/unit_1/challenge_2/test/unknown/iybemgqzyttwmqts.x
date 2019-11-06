From perl6-all-return-82419-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 12:09:25 2007
Return-Path: <perl6-all-return-82419-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SG9NL9012877
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 12:09:23 -0400
Received: (qmail 4462 invoked by uid 514); 28 Jun 2007 16:09:19 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 4457 invoked from network); 28 Jun 2007 16:09:19 -0000
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
Subject: Re: [svn:parrot] r19381 - trunk/src/dynpmc
Date: Thu, 28 Jun 2007 08:33:02 -0700
User-Agent: KMail/1.9.6
Cc: Andy Lester <andy@petdance.com>
References: <20070628133902.1A0B4CB9E1@x12.develooper.com> <CB98A6A7-6AF5-44AF-824B-66CD1F2269F5@petdance.com>
In-Reply-To: <CB98A6A7-6AF5-44AF-824B-66CD1F2269F5@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706280833.02658.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Thursday 28 June 2007 07:43:59 Andy Lester wrote:

> At some point, INTERP must have meant something, no?  Why was it
> INTERP and not interp before?

As far as I remember, it's the same reason that the invocant in Perl 5 is 
sometimes $this, sometimes $self, and sometimes $o: inconsistency in the face 
of overwhelming choice.

-- c

      

 o
0e.hn
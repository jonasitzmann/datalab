From perl6-all-return-82418-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 12:04:14 2007
Return-Path: <perl6-all-return-82418-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SG4DL9012806
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 12:04:14 -0400
Received: (qmail 1002 invoked by uid 514); 28 Jun 2007 16:04:09 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 997 invoked from network); 28 Jun 2007 16:04:09 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.230 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=tkZ0ny0tnBM+N61twHjW1anx2pPQNbeqqTLiA5JQ4XYxNfG0VXe00CYEfCQLtvi2hBJO6R+jirG1XjSFIeeQnkFeku+Uz7dtJ4ffTjP5CDSHo6R92Ma07F+wkh9Ho+ULolh0ekrA8hFJcLsb5R/OzdCZ+pWl07KDUOvNmr7yZJ8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Lu9/nfsSTCfdyhvCRbxikQXxtXDtXMpWQwxlGNpjbc0IQHgLzAQz1TAGyVUkdaCMHlhMYDTG1Bnqr4WlfXOD1Er9RLNiRqqyCsXLTd5dPVjl8D3jBD2sewnCKAtUXfnpeesaeO0uGOFveO48m9XjrgU/E2eZnKapUumFio41qtM=
Message-ID: <8e8ee0d40706280903j404450fcxaaf29dba22be79d9@mail.gmail.com>
Date: Thu, 28 Jun 2007 18:03:41 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "Andy Lester" <andy@petdance.com>
Subject: Re: [svn:parrot] r19381 - trunk/src/dynpmc
Cc: "perl6-internals List" <perl6-internals@perl.org>
In-Reply-To: <CB98A6A7-6AF5-44AF-824B-66CD1F2269F5@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070628133902.1A0B4CB9E1@x12.develooper.com>
	 <CB98A6A7-6AF5-44AF-824B-66CD1F2269F5@petdance.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 28/06/07, Andy Lester <andy@petdance.com> wrote:
>
> On Jun 28, 2007, at 8:39 AM, paultcochrane@cvs.perl.org wrote:
>
> > [dynpmc] Replaced instances of INTERP (and one instance of
> > intepreter) with
> > interp (trying to be consistent across the source).
>
> At some point, INTERP must have meant something, no?  Why was it
> INTERP and not interp before?

Because things were quite inconsistently named before.  There were
instances of 'INTERP', 'interp' and 'interpreter' within the source
code and a TODO item was created (ages ago) to fix this problem and it
was decided to standardise everything to 'interp'.  I'm just doing
some extra cleanup.  I've not found any problems with build or tests,
hence why I checked this in.  Is there something I've missed?  Is this
causing problems somewhere?

Paul

        

 nLolru;=D
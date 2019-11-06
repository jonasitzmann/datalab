From perl6-all-return-81950-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 18:15:18 2007
Return-Path: <perl6-all-return-81950-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DMFGL9013153
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 18:15:16 -0400
Received: (qmail 9935 invoked by uid 514); 13 Jun 2007 22:15:14 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9930 invoked from network); 13 Jun 2007 22:15:14 -0000
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
To: Kevin Tew <tewk@tewk.com>
Subject: Re: I Hate find_vtable_meth_ns()
Date: Wed, 13 Jun 2007 14:58:30 -0700
User-Agent: KMail/1.9.6
Cc: parrot-porters@perl.org
References: <200706131140.55630.chromatic@wgz.org> <467065B9.2040607@tewk.com>
In-Reply-To: <467065B9.2040607@tewk.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706131458.30113.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

On Wednesday 13 June 2007 14:46:33 Kevin Tew wrote:

> My patch only fails these tests.
>
> Failed Test          Stat Wstat Total Fail  List of Failed
> ---------------------------------------------------------------------------
>---- t/library/range.t       1   256    78   18  70-78
> t/pmc/parrotobject.t    1   256    11    1  3
>
>
> Chromatic was right,
> vtables should be stored in the namespace in an additional hash indexed
> by vtable_index.

We could store them in a hash indexed by vtable_index and avoid the double 
lookup.  I think the only changes necessary are in 
Parrot_store_sub_in_namespace() and the Namespace PMC (provided that IMCC and 
the packfile reader both set PMC_sub(sub)->vtable_index appropriately before 
storing the sub).

-- c

             



vsfgadutQ
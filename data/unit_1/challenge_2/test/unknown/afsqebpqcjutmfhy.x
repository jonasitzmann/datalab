From perl6-all-return-82047-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 12:54:36 2007
Return-Path: <perl6-all-return-82047-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5IGsZL9019739
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 12:54:36 -0400
Received: (qmail 32527 invoked by uid 514); 18 Jun 2007 16:54:33 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 32522 invoked from network); 18 Jun 2007 16:54:33 -0000
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
Received-SPF: pass (x1.develooper.com: domain of spiehera@lafayette.edu designates 139.147.8.40 as permitted sender)
Date: Mon, 18 Jun 2007 12:54:01 -0400 (EDT)
From: Andy Spieherty <spiehera@lafayette.edu>
X-X-Sender: spiehera@fractal.phys.lafayette.edu
To: Perl6 Internals <perl6-internals@perl.org>
Subject: Re: [perl #39197] [RESOLVED] [CAGE] lib/Parrot/Test.pm ignores core
 dumps
Message-ID: <Pine.LNX.4.64.0706181236320.30224@fractal.phys.lafayette.edu>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

I'm sorry to report it, but this one isn't fixed.  For example, consider 
test t/src_hash_6.  If I compile and run it manually, I get

    $ t/src/hash_6                 
    42
    Segmentation Fault(coredump)

But if I run it via the test harness, I get

    $ perl5.8 -Ilib t/src/hash.t
    1..11
    ok 1 - parrot_new_hash
    ok 2 - parrot_hash_put
    ok 3 - parrot_hash_get
    ok 4 - parrot_hash_get with NULL key
    ok 5 - parrot_hash_get with empty string key
    ok 6 - parrot_hash_get with big key
    ok 7 - parrot_hash_size
    ok 8 - parrot_hash_delete
    ok 9 - parrot_hash_clone
    ok 10 - hash iteration
    ok 11 - hash iteration on empty hash

I think the exit code stuff has been changed (this test used to get
reported as failing) but the $builder->diag weirdness is unchanged.

-- 
    Andy Spieherty		spiehera@lafayette.edu

   

a�Bt
From perl6-all-return-81836-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 18:33:57 2007
Return-Path: <perl6-all-return-81836-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l55MXuhB014556
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 18:33:56 -0400
Received: (qmail 20680 invoked by uid 514); 5 Jun 2007 22:33:49 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20675 invoked from network); 5 Jun 2007 22:33:48 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: moderator for perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-Id: <200706051919.l55JJowu1275588@bee.hiwaay.net>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #38217] r11124: Cygwin build fails 
Reply-To: Greg Bacon <gbacon@hiwaay.net>
Organization: Eric Conspiracy Secret Labs
X-Eric-Conspiracy: There is no conspiracy.
X-Face: "7sfK9d*!trQg^>swxP}M|R|<7$tFtlm|Z(4M$i`?}l87xigz
        \37|mQUBi/ct#>=H,&(V!A6=jnjOfA#.0Q@jF1t~Eue)5=zFI
In-Reply-To: Your message of "Tue, 05 Jun 2007 10:55:20 PDT."
             <rt-3.6.HEAD-1668-1181066119-743.38217-74-0@perl.org> 
Date: Tue, 05 Jun 2007 14:19:49 -0500
From: Greg Bacon <gbacon@bee.hiwaay.net>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

In message <rt-3.6.HEAD-1668-1181066119-743.38217-74-0@perl.org>,
    "Paul Cochrane via RT" writes:

: cygwin is building as of r18821.  Is this ticket required anymore?

I'm still seeing a failure in r18824:

[...]
make[1]: Entering directory `/usr/src/parrot/src/dynoplibs'
make[1]: Leaving directory `/usr/src/parrot/src/dynoplibs'
make -C compilers/past
make[1]: Entering directory `/usr/src/parrot/compilers/past'
/usr/bin/perl.exe -MExtUtils::Command -e rm_rf PAST.pbc ../../runtime/parrot/library/PAST.pbc
../../parrot.exe -o PAST.pbc --output-pbc PAST.pir
make[1]: *** [PAST.pbc] Error 53
make[1]: Leaving directory `/usr/src/parrot/compilers/past'
make: *** [compilers.dummy] Error 2

I also have to add blib/lib to the PATH.

Greg

  

4=cBJ0/ r 5eb4b
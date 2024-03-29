From perl6-all-return-82516-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 00:17:04 2007
Return-Path: <perl6-all-return-82516-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l634H3L9023371
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 00:17:03 -0400
Received: (qmail 9370 invoked by uid 514); 3 Jul 2007 04:16:58 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9364 invoked from network); 3 Jul 2007 04:16:58 -0000
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
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Mon, 2 Jul 2007 20:27:52 -0700
From: Mark Glines <mark@glines.org>
To: perl6-internals@perl.org
Cc: parrotbug-followup@parrotcode.org, bugs-bitbucket@netlabs.develooper.com
Subject: Re: [perl #43481] t/examples/shootout.t (shootout_16.pir) fails on
 gentoo/x86
Message-ID: <20070702202752.10abda93@chirp>
In-Reply-To: <rt-3.6.HEAD-20473-1183420014-385.43481-72-0@perl.org>
References: <RT-Ticket-43481@perl.org>
	<20070702164623.5c0a64f3@chirp>
	<rt-3.6.HEAD-20473-1183420014-385.43481-72-0@perl.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary=MP_BiEt.auV1hGZquYV2YRdGO9
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

--MP_BiEt.auV1hGZquYV2YRdGO9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Mon, 02 Jul 2007 16:46:54 -0700
Mark Glines (via RT) <parrotbug-followup@parrotcode.org> wrote:
> paranoid@chirp ~/parrot $ ./parrot
> "/home/paranoid/parrot/t/examples/shootout_16.pir"
> <examples/shootout/regexdna.pir.input agggtaaa|tttaccct 0
> [cgt]gggtaaa|tttaccc[acg] 3 a[act]ggtaaa|tttacc[agt]t 9
> ag[act]gtaaa|tttac[agt]ct 8
> agg[act]taaa|ttta[agt]cct 10
> aggg[acg]aaa|ttt[cgt]ccct 3
> agggt[cgt]aa|tt[acg]accct 4
> agggta[cgt]a|t[acg]taccct 3
> agggtaa[cgt]|[acg]ttaccct 5
> Segmentation fault (core dumped)

...but that test script is pretty huge.  Here's a simplified test case
(attached).

The segfault is in the implementation of an op (substr_s_i_i_s).  It
calls string_replace() to replace a substring with another, but calls
it with a NULL "rep" pointer.  String_replace is declared
with /*NULLOK*/ for the "rep" pointer, but it then calls
string_rep_compatible() (whose arguments are /*NN*/) without checking
for nullness first.

Sooo... I'm not sure if the "rep" argument is NULL for the same *reason*
as the above script (a comment from Coke has made me paranoid that a DOD
run may be to blame), but should this emit an error message, or fix it
up by using '' instead, or punt to the 3-argument substr() instead,
rather than segfaulting?

Mark

--MP_BiEt.auV1hGZquYV2YRdGO9
Content-Type: application/octet-stream; name=test.pir
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=test.pir

LnN1YiBtYWluCgkubG9jYWwgc3RyaW5nIHN0ciwgcmVwCglzdHIgPSAnYWJjJwoJc3Vic3RyIHN0
ciwgMCwgMiwgcmVwCi5lbmQK

--MP_BiEt.auV1hGZquYV2YRdGO9--

                  

CM"f0Ls
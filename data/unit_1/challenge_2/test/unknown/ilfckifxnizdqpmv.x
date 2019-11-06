From perl6-all-return-82071-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 22:01:17 2007
Return-Path: <perl6-all-return-82071-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5J21EL9024153
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 22:01:14 -0400
Received: (qmail 7039 invoked by uid 514); 19 Jun 2007 02:01:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7032 invoked from network); 19 Jun 2007 02:01:10 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18039.14536.964559.464850@rgrjr.dyndns.org>
Date: Mon, 18 Jun 2007 22:00:40 -0400
From: Bob Rogers <rogers-perl6@rgrjr.dyndns.org>
To: perl6-internals@perl.org
CC: bugs-bitbucket@netlabs.develooper.com
Subject: [perl #43245] t/op/bitwise.t #27 Fails with JIT 
In-Reply-To: <rt-3.6.HEAD-7948-1182204795-645.43245-72-0@perl.org>
References: <RT-Ticket-43245@perl.org>
	<200706181512.41642.chromatic@wgz.org>
	<rt-3.6.HEAD-7948-1182204795-645.43245-72-0@perl.org>
X-Mailer: VM 7.19 under Emacs 22.1.50.1
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=2.0 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FH_HOST_EQ_D_D_D_D,RCVD_IN_PBL,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_PASS

   From: chromatic (via RT) <parrotbug-followup@parrotcode.org>
   Date: Mon, 18 Jun 2007 15:13:15 -0700

   # New Ticket Created by  chromatic 
   # Please include the string:  [perl #43245]
   # in the subject line of all future correspondence about this issue. 
   # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43245 >

   r19067 needs a bit more work (pardon the pun) to work with parrot -j.

Oops; guess so.  :-/

   Bob, do you have an idea on what the fix might be?  If it's not a quick one, 
   we can mark this test as TODO for JIT before the release tomorrow.

I'm sorry, but I'm clueless when it comes to JIT.  (As you may have
guessed.)  It seems that the emit_shift_* routines need to emit code
that does what bit_shift_left would do, but I don't know how yet.  If
TODO-marking is OK for now, then please do so, and I'll work on it ASAP.

					-- Bob



t0 0
us2A
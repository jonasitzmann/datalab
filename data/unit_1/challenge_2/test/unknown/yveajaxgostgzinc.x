From perl6-all-return-82541-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 17:48:51 2007
Return-Path: <perl6-all-return-82541-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64LmlL9015907
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 17:48:48 -0400
Received: (qmail 23154 invoked by uid 514); 4 Jul 2007 21:48:42 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23149 invoked from network); 4 Jul 2007 21:48:41 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
From: Ron Blaschke (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Wed, 04 Jul 2007 10:21:09 -0700
Subject: [perl #43535] [PATCH] MMD function pointer alignment assertion 
In-Reply-To: <468BD69E.2040206@rblasch.org>
References: <RT-Ticket-43535@perl.org> <468BD69E.2040206@rblasch.org>
Message-ID: <rt-3.6.HEAD-25329-1183569669-1360.43535-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43535
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: ron@rblasch.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183569669-25329-22"
Resent-Message-Id: <20070704172110.0D4622AFDA@x3.develooper.com>
Resent-Date: Wed,  4 Jul 2007 10:21:10 -0700 (PDT)
Resent-From: rt-ron=rblasch.org@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183569669-25329-22
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Ron Blaschke 
# Please include the string:  [perl #43535]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43535 >


It seems like function pointers were required to be aligned and the
extra bits were used to store flags.  That's what the assertion is for.

Since this isn't always true for all platforms there seems to be a hack
around this, which can be disabled with C<PARROT_HAS_ALIGNED_FUNCPTR>
(see F<src/mmd.c>:239).

I guess it would be good to tie the assertion and the workaround to the
same macro.


Changed Files:
    src/mmd.c

------------=_1183569669-25329-22
Content-Type: text/plain;
 charset="ascii";
 name="mmd_aligned_fptr_assertion.patch"
Content-Disposition: inline; filename="mmd_aligned_fptr_assertion.patch"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43535/267627/117121

Index: src/mmd.c
===================================================================
--- src/mmd.c	(revision 19572)
+++ src/mmd.c	(working copy)
@@ -1662,10 +1662,7 @@
      * register default mmds for this type
      */
     for (i = 0; i < n; ++i) {
-        /* The following always fails for Intel C++ for unknown reasons,
-         * but I'm assuming it's optimizer related.
-         */
-#ifndef __INTEL_COMPILER
+#ifdef PARROT_HAS_ALIGNED_FUNCPTR
         assert((PTR2UINTVAL(mmd_table[i].func_ptr) & 3) == 0);
 #endif
         mmd_register(interp,

------------=_1183569669-25329-22--

 

hlDej
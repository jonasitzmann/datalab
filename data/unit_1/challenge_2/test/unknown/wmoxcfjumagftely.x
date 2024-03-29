From perl6-all-return-81842-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 22:59:21 2007
Return-Path: <perl6-all-return-81842-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l562xKhB016684
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 22:59:20 -0400
Received: (qmail 11893 invoked by uid 514); 6 Jun 2007 02:59:13 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 11888 invoked from network); 6 Jun 2007 02:59:13 -0000
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
From: chromatic@cvs.develooper.com
To: perl6-internals@perl.org
Subject: [svn:parrot-pdd] r18832 - in trunk: docs/pdds src src/gc src/stm
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070606021211.F06F6CBA7E@x12.develooper.com>
Date: Tue,  5 Jun 2007 19:12:11 -0700 (PDT)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.9 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS

Author: chromatic
Date: Tue Jun  5 19:12:10 2007
New Revision: 18832

Modified:
   trunk/docs/pdds/pdd07_codingstd.pod

Changes in other areas also in this revision:
Modified:
   trunk/src/gc/register.c
   trunk/src/objects.c
   trunk/src/stm/waitlist.c
   trunk/src/vtables.c

Log:
[GC] Use more mem_sys_*_zeroed (Mehmet Yavuz Selim Soyturk).

Document their assumptions about '\0' == NULL (Bernhard Schmalhofer).

See RT #43105.

Modified: trunk/docs/pdds/pdd07_codingstd.pod
==============================================================================
--- trunk/docs/pdds/pdd07_codingstd.pod	(original)
+++ trunk/docs/pdds/pdd07_codingstd.pod	Tue Jun  5 19:12:10 2007
@@ -62,6 +62,9 @@
 integral type (no smaller than typedef C<INTVAL> in Parrot), then back to its
 original type, without loss.
 
+Also C code may assume that there is a single NULL pointer representation
+and that it consists of a number, usually 4 or 8, of '\0' chars in memory.
+
 C code that makes assumptions beyond these must depend on the configuration
 system, either to not compile an entire non-portable source where it will not
 work, or to provide an appropriate #ifdef macro.



i2N=n;6D
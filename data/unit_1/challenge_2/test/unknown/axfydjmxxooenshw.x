From perl6-all-return-82460-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 15:31:46 2007
Return-Path: <perl6-all-return-82460-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TJVjL9030053
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 15:31:46 -0400
Received: (qmail 16264 invoked by uid 514); 29 Jun 2007 19:31:37 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16259 invoked from network); 29 Jun 2007 19:31:36 -0000
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
From: allison@cvs.develooper.com
To: perl6-internals@perl.org
Subject: [svn:parrot-pdd] r19479 - trunk/docs/pdds
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070629173323.6579BCBA7F@x12.develooper.com>
Date: Fri, 29 Jun 2007 10:33:23 -0700 (PDT)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Author: allison
Date: Fri Jun 29 10:33:22 2007
New Revision: 19479

Modified:
   trunk/docs/pdds/pdd15_objects.pod

Log:
[pdd15] Adding 'new' opcode to OO PDD.


Modified: trunk/docs/pdds/pdd15_objects.pod
==============================================================================
--- trunk/docs/pdds/pdd15_objects.pod	(original)
+++ trunk/docs/pdds/pdd15_objects.pod	Fri Jun 29 10:33:22 2007
@@ -972,6 +972,17 @@
 in that namespace object. A key looks for the class in the namespace identified
 by the multilevel key relative to the currently selected HLL.
 
+=item new
+
+  $P1 = new $S2
+  $P1 = new $S2, $P3
+  $P1 = new $P2
+  $P1 = new $P2, $P3
+
+Create a new object from the class named by $S2 or $P2 (a string PMC, namespace
+key, or class object), and put the PMC for it in $P1. You may optionally pass a
+hash of initialization parameters for the class in $P3.
+
 =item addparent
 
   addparent $P1, $P2

           

pt42LtDtwdis>d p
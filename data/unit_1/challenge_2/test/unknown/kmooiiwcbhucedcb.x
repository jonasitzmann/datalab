From perl6-all-return-82043-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 18:22:30 2007
Return-Path: <perl6-all-return-82043-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HMMSL9011092
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 18:22:28 -0400
Received: (qmail 3861 invoked by uid 514); 17 Jun 2007 22:22:26 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3854 invoked from network); 17 Jun 2007 22:22:25 -0000
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
To: parrot-porters@perl.org
Subject: I Sort of Hate Parrot_byte_index()
Date: Sun, 17 Jun 2007 15:21:37 -0700
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_xPbdGXmy97NnyY2"
Message-Id: <200706171521.37992.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.1 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

--Boundary-00=_xPbdGXmy97NnyY2
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Here's a fun algorithm for you.  How do you find a substring within another 
string?

I really want to apply something like this patch.  I'd like to take advantage 
of libc functions to do the hard work, rather than walking through a string, 
byte by byte.  Unfortunately, libc functions think \0 marks the end of a 
string always and everywhere.  Silly libc.

This patch passes all of the tests and is slightly more efficient.  I suspect 
that there are true gains available by moving the strstr() call inside the 
loop appropriately, instead of always trying to match at the next position.

-- c


--Boundary-00=_xPbdGXmy97NnyY2
Content-Type: text/x-diff;
  charset="us-ascii";
  name="byte_index_strstr.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="byte_index_strstr.patch"

=== src/utils.c
==================================================================
--- src/utils.c	(revision 4086)
+++ src/utils.c	(local)
@@ -560,20 +560,31 @@
 Parrot_byte_index(Interp *interp, const STRING *base /*NN*/,
         const STRING *search /*NN*/, UINTVAL start_offset)
 {
-    const INTVAL searchlen = search->strlen;
     const char * const search_start = search->strstart;
-    const INTVAL max_possible_offset = (base->strlen - search->strlen);
-    INTVAL current_offset;
 
-    for (current_offset = start_offset; current_offset <= max_possible_offset;
-            current_offset++) {
-        const char * const base_start = (char *)base->strstart + current_offset;
-        if (memcmp(base_start, search_start, searchlen) == 0) {
-            return current_offset;
+    if (strlen(base->strstart) == base->strlen) {
+        const char * const pos =
+            strstr((char *)base->strstart + start_offset, search_start);
+
+        if (pos)
+            return (INTVAL)(pos - base->strstart);
+    }
+
+    {
+        const INTVAL searchlen           = search->strlen;
+        const INTVAL max_possible_offset = (base->strlen - search->strlen);
+        INTVAL       current_offset      = start_offset;
+
+        for (; current_offset <= max_possible_offset; current_offset++) {
+            const char * const base_start =
+                (char *)base->strstart + current_offset;
+
+            if (memcmp(base_start, search_start, searchlen) == 0)
+                return current_offset;
         }
+
+        return -1;
     }
-
-    return -1;
 }
 
 PARROT_API

--Boundary-00=_xPbdGXmy97NnyY2--

                 

miga9es4O dW:fo
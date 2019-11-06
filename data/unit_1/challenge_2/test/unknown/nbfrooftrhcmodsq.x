From perl6-all-return-82559-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 21:31:53 2007
Return-Path: <perl6-all-return-82559-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l661VpL9001455
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 21:31:52 -0400
Received: (qmail 29385 invoked by uid 514); 6 Jul 2007 01:31:45 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29379 invoked from network); 6 Jul 2007 01:31:45 -0000
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
Subject: Odd Memory Corruption
Date: Thu, 5 Jul 2007 18:30:44 -0700
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_EtZjGdu7VqVwI6R"
Message-Id: <200707051830.44805.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

--Boundary-00=_EtZjGdu7VqVwI6R
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

In theory, this patch should apply and run cleanly.  It doesn't.

Thus, something somewhere pokes into memory it shouldn't.

Any ideas?  Alternately, any comments on this analysis?

-- c


--Boundary-00=_EtZjGdu7VqVwI6R
Content-Type: text/x-diff;
  charset="us-ascii";
  name="memory_corruption.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="memory_corruption.patch"

=== include/parrot/pobj.h
==================================================================
--- include/parrot/pobj.h	(revision 4520)
+++ include/parrot/pobj.h	(local)
@@ -139,6 +139,7 @@
 #define PMC_DATA_IN_EXT 1
 
 struct PMC {
+    size_t sentinel;
     pobj_t obj;
     VTABLE *vtable;
     PMC *real_self;
@@ -183,7 +184,7 @@
 #ifdef NDEBUG
 #  define PMC_ext_checked(pmc)             (pmc)->pmc_ext
 #else
-#  define PMC_ext_checked(pmc)             (assert((pmc)->pmc_ext), (pmc)->pmc_ext)
+#  define PMC_ext_checked(pmc)             (assert((pmc)->pmc_ext && (pmc)->sentinel == 0xbeefbeef), (pmc)->pmc_ext)
 #endif /* NDEBUG */
 #if PMC_DATA_IN_EXT
 #  define PMC_data(pmc)                   PMC_ext_checked(pmc)->data
=== src/headers.c
==================================================================
--- src/headers.c	(revision 4520)
+++ src/headers.c	(local)
@@ -249,6 +249,7 @@
             ? interp->arena_base->constant_pmc_pool
             : interp->arena_base->pmc_pool;
     PMC * const pmc = (PMC *)pool->get_free_object(interp, pool);
+    pmc->sentinel = 0xbeefbeef;
 
     /* clear flags, set is_PMC_FLAG */
     if (flags & PObj_is_PMC_EXT_FLAG) {
=== src/pmc/hash.pmc
==================================================================
--- src/pmc/hash.pmc	(revision 4520)
+++ src/pmc/hash.pmc	(local)
@@ -526,6 +531,9 @@
 */
 
     PMC* get_pmc_keyed_str(STRING *key) {
+        if (!PMC_struct_val(SELF))
+            return PMCNULL;
+
         HashBucket * const b =
             parrot_hash_get_bucket(INTERP, (Hash*) PMC_struct_val(SELF), key);
 
=== src/pmc.c
==================================================================
--- src/pmc.c	(revision 4520)
+++ src/pmc.c	(local)
@@ -199,6 +199,7 @@
             pmc->real_self = pmc;
             VTABLE_set_pointer(interp, pmc, pmc);
         }
+        pmc->sentinel = 0xdeadbeef;
         return pmc;
     }
     if (vtable->flags & VTABLE_IS_CONST_PMC_FLAG) {
@@ -245,6 +246,7 @@
         fprintf(stderr, "\t=> new %p type %d\n", pmc, (int)base_type);
     }
 #endif
+    pmc->sentinel = 0xbeefbeef;
     return pmc;
 }
 

--Boundary-00=_EtZjGdu7VqVwI6R--

                  

.�tJ=FuacPb/uaeG
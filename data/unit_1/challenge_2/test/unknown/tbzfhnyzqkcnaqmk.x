From perl6-all-return-81928-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 23:03:27 2007
Return-Path: <perl6-all-return-81928-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D33PL9002406
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 23:03:26 -0400
Received: (qmail 16645 invoked by uid 514); 13 Jun 2007 03:03:23 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16640 invoked from network); 13 Jun 2007 03:03:23 -0000
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
Subject: [GC] Pin Key PMCs During Method Lookup
Date: Tue, 12 Jun 2007 20:02:29 -0700
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_F51bGsJ+35SG5tL"
Message-Id: <200706122002.29443.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.1 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

--Boundary-00=_F51bGsJ+35SG5tL
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

In src/objects.c, around line 82, the function find_vtable_meth_ns() creates a 
Key PMC to perform a lookup:

	PMC   * const key = VTABLE_nextkey_keyed(interp, key_new(interp), ns,
        	ITERATE_FROM_START);

If a GC run happens in the rest of this function, it could collect the newly 
created Key -- PMCs created and held outside of structures visible to GC are 
vulnerable to collection.

Unfortunately, I can't reproduce the problem on Linux on x86.  However, I do 
think that storing the key temporarily in a place where it will get marked 
appropriately may fix things.  Note that unpinning the key is important at 
all exit points.

I hope this patch improves things for Windows users -- or at least stops them 
from getting worse.

-- c


--Boundary-00=_F51bGsJ+35SG5tL
Content-Type: text/x-diff;
  charset="us-ascii";
  name="pin_keys.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="pin_keys.patch"

=== src/objects.c
==================================================================
--- src/objects.c	(revision 3990)
+++ src/objects.c	(local)
@@ -90,6 +90,8 @@
 
     int         j;
 
+    dod_register_pmc(interp, key);
+
     for (j = 0; j < k; ++j) {
         STRING * const ns_key = (STRING *)parrot_hash_get_idx(interp,
                             (Hash *)PMC_struct_val(ns), key);
@@ -99,9 +101,13 @@
         if (res->vtable->base_type == enum_class_Sub &&
                (PMC_sub(res)->vtable_index == vtable_index ||
                 string_compare(interp, meth_str, ns_key) == 0))
+        {
+            dod_unregister_pmc(interp, key);
             return res;
+        }
     }
 
+    dod_unregister_pmc(interp, key);
     return PMCNULL;
 }
 

--Boundary-00=_F51bGsJ+35SG5tL--

                

8eoos>n;trD�/i
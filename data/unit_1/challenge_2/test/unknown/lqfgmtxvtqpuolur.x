From perl6-all-return-81955-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 20:37:59 2007
Return-Path: <perl6-all-return-81955-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5E0buL9014404
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 20:37:57 -0400
Received: (qmail 17884 invoked by uid 514); 14 Jun 2007 00:37:55 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17879 invoked from network); 14 Jun 2007 00:37:55 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: Jonathan Worthington <jonathan@jnthn.net>
Subject: Re: I Hate find_vtable_meth_ns()
Date: Wed, 13 Jun 2007 17:37:26 -0700
User-Agent: KMail/1.9.6
Cc: "perl6-internals@perl.org" <perl6-internals@perl.org>
References: <200706131140.55630.chromatic@wgz.org> <467083CE.1070408@jnthn.net>
In-Reply-To: <467083CE.1070408@jnthn.net>
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_G3IcGMb7Wd2nAcx"
Message-Id: <200706131737.26330.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

--Boundary-00=_G3IcGMb7Wd2nAcx
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Wednesday 13 June 2007 16:54:54 Jonathan Worthington wrote:

> Yes, I'd like to see this. I did the groundwork for it already, by
> refactoring the NameSpace PMC so that there is a place to hang such a
> thing off now (just add it to the underlying struct), though I was doing
> it so there was a slot to hang the class that the namespace maps to
> from. So it shouldn't be too much work to do this.

It wasn't.  This patch is a lot nicer.  All tests pass.  They pass more 
quickly too.

I still dislike the named lookup in find_vtable_meth_ns(), but I couldn't find 
all of the places that could assign vtable methods to a namespace to make 
sure they all set the vtable flag appropriately.

If someone else were to fix that, find_vtable_meth_ns() could become:

	return VTABLE_get_pmc_keyed_int(interp, ns, vtable_index);

I wouldn't hate that either.

> Note that PDD15 classes don't lookup non-vtable methods in namespaces
> anymore, and I think the same will go for vtable methods. With PMCProxy
> now existing, I suspect we can do the same for non-vtable methods of
> PMCs too...

So all of this pain will just go away?  That's handy.

-- c


--Boundary-00=_G3IcGMb7Wd2nAcx
Content-Type: text/x-diff;
  charset="iso-8859-1";
  name="store_vtable_in_ns.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="store_vtable_in_ns.patch"

=== compilers/imcc/pbc.c
==================================================================
--- compilers/imcc/pbc.c	(revision 4015)
+++ compilers/imcc/pbc.c	(local)
@@ -782,8 +782,6 @@
     else
         sub->multi_signature = NULL;
 
-    Parrot_store_sub_in_namespace(interp, sub_pmc);
-
     if (unit->is_vtable_method == 1) {
         /* Work out the name of the vtable method. */
         if (unit->vtable_name != NULL)
@@ -808,6 +806,8 @@
         sub->vtable_index = vtable_index;
     }
 
+    Parrot_store_sub_in_namespace(interp, sub_pmc);
+
     pfc->type     = PFC_PMC;
     pfc->u.key    = sub_pmc;
     unit->sub_pmc = sub_pmc;
=== src/objects.c
==================================================================
--- src/objects.c	(revision 4015)
+++ src/objects.c	(local)
@@ -81,28 +81,30 @@
 static PMC*
 find_vtable_meth_ns(Interp *interp, PMC *ns, INTVAL vtable_index)
 {
-    const INTVAL k   = VTABLE_elements(interp, ns);
-    PMC   * const key = VTABLE_nextkey_keyed(interp, key_new(interp), ns,
-        ITERATE_FROM_START);
+    PMC *res = VTABLE_get_pmc_keyed_int(interp, ns, vtable_index);
 
-    const char * const meth     = Parrot_vtable_slot_names[vtable_index];
-    STRING     * const meth_str = string_from_cstring(interp, meth, strlen(meth));
+    if (! PMC_IS_NULL(res))
+        return res;
+    else {
+        const char * const  meth      = Parrot_vtable_slot_names[vtable_index];
 
-    int         j;
+        STRING  *meth_str  = string_from_cstring(interp, meth, 0);
+                 res       = VTABLE_get_pmc_keyed_str(interp, ns, meth_str);
 
-    for (j = 0; j < k; ++j) {
-        STRING * const ns_key = (STRING *)parrot_hash_get_idx(interp,
-                            (Hash *)PMC_struct_val(ns), key);
-        PMC * const res    = VTABLE_get_pmc_keyed_str(interp, ns, ns_key);
+        if ( ! PMC_IS_NULL(res)
+            && VTABLE_isa(interp, res, CONST_STRING(interp, "Sub")))
+                return res;
+        else {
+            meth_str = string_from_cstring(interp, meth + 2, 0);
+            res      = VTABLE_get_pmc_keyed_str(interp, ns, meth_str);
 
-        /* success if matching vtable index or double-underscored name */
-        if (res->vtable->base_type == enum_class_Sub &&
-               (PMC_sub(res)->vtable_index == vtable_index ||
-                string_compare(interp, meth_str, ns_key) == 0))
-            return res;
+            if ( ! PMC_IS_NULL(res)
+                && VTABLE_isa(interp, res, CONST_STRING(interp, "Sub")))
+                    return res;
+        }
+
+        return PMCNULL;
     }
-
-    return PMCNULL;
 }
 
 /*
=== src/pmc/namespace.pmc
==================================================================
--- src/pmc/namespace.pmc	(revision 4015)
+++ src/pmc/namespace.pmc	(local)
@@ -52,11 +52,12 @@
 /* We store extra information about the namespace in a struct, which we will
  * hang off the PMC_data slot. */
 typedef struct Parrot_NSInfo {
-    STRING *name;  /* Name of this namespace part. */
-    PMC *_class;   /* The class or role attached to this namespace. */
+    STRING *name;     /* Name of this namespace part. */
+    PMC    *_class;   /* The class or role attached to this namespace. */
+    PMC    *vtable;
 } Parrot_NSInfo;
 
-/* Macro for easy access to the namespcae info. */
+/* Macro for easy access to the namespace info. */
 #define PARROT_NSINFO(o) ((Parrot_NSInfo *) PMC_data(o))
 
 
@@ -74,9 +75,10 @@
 */
 
     void init() {
-        SUPER();                        /* _struct_val := Hash */
-        PMC_pmc_val(SELF) = NULL;       /* parent */
-        PMC_data(SELF)    = mem_allocate_zeroed_typed(Parrot_NSInfo);
+        SUPER();                             /* _struct_val := Hash */
+        PMC_pmc_val(SELF)           = NULL;  /* parent */
+        PMC_data(SELF)              = mem_allocate_zeroed_typed(Parrot_NSInfo);
+        PARROT_NSINFO(SELF)->vtable = PMCNULL;
     }
 
 /*
@@ -97,6 +99,8 @@
             pobject_lives(INTERP, (PObj*)nsinfo->name);
         if (nsinfo->_class)
             pobject_lives(INTERP, (PObj*)nsinfo->_class);
+        if (nsinfo->vtable)
+            pobject_lives(INTERP, (PObj*)nsinfo->vtable);
     }
 
 /*
@@ -132,7 +136,7 @@
 Return the given namespace or PMCNULL. C<key> is either an array of
 strings, or a possibly nested key.
 
-=item C<PMC* get_pmc_keyed_str(PMC *key)>
+=item C<PMC* get_pmc_keyed_str(STRING *key)>
 
 Return the given namespace item or PMCNULL. If the named item is either
 a NameSpace or a var, the NameSpace is returned.
@@ -198,6 +202,19 @@
             VTABLE_set_pmc_keyed_int(INTERP, new_tuple, NS_slot_var_sub, value);
             b->value = new_tuple;
         }
+
+        if (value->vtable->base_type == enum_class_Sub) {
+            Parrot_NSInfo *nsinfo = PARROT_NSINFO(SELF);
+            PMC           *vtable = nsinfo->vtable;
+            Parrot_sub    *sub    = PMC_sub(value);
+
+            if (PMC_IS_NULL(vtable))
+                nsinfo->vtable = vtable = pmc_new(interp, enum_class_Hash);
+
+            if (sub->vtable_index != -1)
+                VTABLE_set_pmc_keyed_int(INTERP, vtable,
+                    sub->vtable_index, value);
+        }
     }
 
     void set_pmc_keyed(PMC *key, PMC *value) {
@@ -263,6 +280,16 @@
         return PMCNULL;
     }
 
+    PMC* get_pmc_keyed_int(INTVAL key) {
+        Parrot_NSInfo *nsinfo = PARROT_NSINFO(SELF);
+        PMC           *vtable = nsinfo->vtable;
+
+        if (PMC_IS_NULL(vtable))
+            return PMCNULL;
+
+        return VTABLE_get_pmc_keyed_int(interp, vtable, key);
+    }
+
 /*
 
 =item C<void* get_pointer_keyed_str(STRING *key)>

--Boundary-00=_G3IcGMb7Wd2nAcx--

  

ptmPiP/dmi
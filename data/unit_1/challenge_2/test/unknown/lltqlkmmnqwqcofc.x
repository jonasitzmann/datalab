From perl6-all-return-82263-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:53:32 2007
Return-Path: <perl6-all-return-82263-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNrUL9011267
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:53:31 -0400
Received: (qmail 13927 invoked by uid 514); 22 Jun 2007 18:26:47 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 13922 invoked from network); 22 Jun 2007 18:26:46 -0000
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
Received-SPF: fail (x1.develooper.com: domain of mark@glines.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Fri, 22 Jun 2007 11:25:11 -0700
From: Mark Glines <mark@glines.org>
To: chromatic <chromatic@wgz.org>
Cc: Nicholas Clark <nick@ccl4.org>, parrot-porters@perl.org
Subject: Re: [svn:parrot] r19231 - trunk/languages/perl6/src/pmc
Message-ID: <20070622112511.6aee3cae@chirp>
In-Reply-To: <200706221100.12383.chromatic@wgz.org>
References: <20070621190535.61B17CB9E1@x12.develooper.com>
	<200706221035.01060.chromatic@wgz.org>
	<20070622104235.289b66ae@chirp>
	<200706221100.12383.chromatic@wgz.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary=MP__uRmoACqbI6ksnglYJx.okx
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_FAIL

--MP__uRmoACqbI6ksnglYJx.okx
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Fri, 22 Jun 2007 11:00:12 -0700
chromatic <chromatic@wgz.org> wrote:

> On Friday 22 June 2007 10:42:35 Mark Glines wrote:
> 
> > Great!  Here's a reissued patch with the name changed to
> > string_from_literal().
> 
> I have a meeting in 30 seconds, but I'll review the patch and apply
> it afterward.
> 
> Oops, -10 seconds.

No problem.

Since I have a little more time, this patch is the same thing, but I
used a slightly less stupid regex for my search/replace this time, so
it caught more cases. (Previous regex was too dependent on commas and
missed things like string_from_cstring(interp, ",", 0), oops.)

Oh, and I didn't forget about the *.ops files this time around, so
they're fixed up too.

Mark

--MP__uRmoACqbI6ksnglYJx.okx
Content-Type: text/x-patch;
 name=string_from_literal__used_a_better_regex_this_time.diff
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename=string_from_literal__used_a_better_regex_this_time.diff

=== compilers/imcc/pbc.c
==================================================================
--- compilers/imcc/pbc.c	(revision 21001)
+++ compilers/imcc/pbc.c	(local)
@@ -534,7 +534,7 @@
     /* :multi() n = 1, reg = NULL */
     if (!pcc_sub->multi[0]) {
         STRING *sig;
-        sig     = string_from_cstring(interp, "__VOID", 0);
+        sig     = string_from_literal(interp, "__VOID");
         sig_pmc = pmc_new(interp, enum_class_String);
 
         VTABLE_set_string_native(interp, sig_pmc, sig);
=== compilers/pge/PGE/pmc/codestring.pmc
==================================================================
--- compilers/pge/PGE/pmc/codestring.pmc	(revision 21001)
+++ compilers/pge/PGE/pmc/codestring.pmc	(local)
@@ -73,7 +73,7 @@
 
             PIO_printf(interp, "%d %Ss, %d\n", cur_ns, (STRING*)PMC_data(cur_ns), global_serno);
             VTABLE_set_integer_native(INTERP, global_serno, 10);
-            Parrot_set_global(INTERP, cur_ns, string_from_cstring(INTERP, "$!serno", 0), global_serno);
+            Parrot_set_global(INTERP, cur_ns, string_from_literal(INTERP, "$!serno"), global_serno);
         }
     }
             */
@@ -108,9 +108,9 @@
         STRING *format;
         STRING *key;
         STRING *repl;
-        STRING *PERCENT = string_from_cstring(INTERP, "%", 0);
-        STRING *COMMA   = string_from_cstring(INTERP, ",", 0);
-        STRING *NEWLINE = string_from_cstring(INTERP, "\n", 0);
+        STRING *PERCENT = string_from_literal(INTERP, "%");
+        STRING *COMMA   = string_from_literal(INTERP, ",");
+        STRING *NEWLINE = string_from_literal(INTERP, "\n");
 
         format = string_copy(interp, orig_format);
 
@@ -197,14 +197,14 @@
 
 */
     METHOD STRING* escape(STRING *str) {
-        STRING *SLASH_U = string_from_cstring(INTERP, "\\u", 0);
-        STRING *SLASH_X = string_from_cstring(INTERP, "\\x", 0);
+        STRING *SLASH_U = string_from_literal(INTERP, "\\u");
+        STRING *SLASH_X = string_from_literal(INTERP, "\\x");
 
         str = string_escape_string(interp, str);
         str = Parrot_sprintf_c(interp, "\"%Ss\"", str);
         if (string_str_index(interp, str, SLASH_U, 0) >= 0
                 || string_str_index(interp, str, SLASH_X, 0) >= 0) {
-            str = string_concat(interp, string_from_cstring(interp, "unicode:", 0), str, 0);
+            str = string_concat(interp, string_from_literal(interp, "unicode:"), str, 0);
         }
         return str;
     }
=== examples/compilers/japhc.c
==================================================================
--- examples/compilers/japhc.c	(revision 21001)
+++ examples/compilers/japhc.c	(local)
@@ -179,7 +179,7 @@
     sub_data->seg = cur_cs;
     sub_data->address = cur_cs->base.data;
     sub_data->end = cur_cs->base.data + cur_cs->base.size;
-    sub_data->name = string_from_cstring(interpreter, "JaPHC", 0);
+    sub_data->name = string_from_literal(interpreter, "JaPHC");
     return sub;
 }
 
=== include/parrot/string_funcs.h
==================================================================
--- include/parrot/string_funcs.h	(revision 21001)
+++ include/parrot/string_funcs.h	(local)
@@ -175,6 +175,9 @@
         __attribute__nonnull__(1)
         __attribute__warn_unused_result__;
 
+#define CSTRING_WITH_LEN(s) (s ""), (sizeof(s)-1)
+#define string_from_literal(i,s) string_from_cstring((i),CSTRING_WITH_LEN(s))
+
 PARROT_API STRING * string_from_int( Interp *interp /*NN*/, INTVAL i )
         __attribute__nonnull__(1);
 
=== languages/APL/src/pmc/aplvector.pmc
==================================================================
--- languages/APL/src/pmc/aplvector.pmc	(revision 21001)
+++ languages/APL/src/pmc/aplvector.pmc	(local)
@@ -114,7 +114,7 @@
         INTVAL array_t;
         STRING* property_name;
 
-        property_name = string_from_cstring(INTERP,"shape",0);
+        property_name = string_from_literal(INTERP,"shape");
         shape = VTABLE_getprop(INTERP, SELF, property_name);
         if (PMC_IS_NULL(shape)) {
            /*
@@ -126,7 +126,7 @@
             */
             /*
             array_t = pmc_type(INTERP,
-                string_from_cstring(INTERP, "APLVector", 0)
+                string_from_literal(INTERP, "APLVector")
             );
             */
             shape = pmc_new(INTERP,VTABLE_type(INTERP,SELF));
@@ -165,7 +165,7 @@
         INTVAL  old_size,new_size,pos;
 
         /* save the old shape momentarily, set the new shape */
-        property_name = string_from_cstring(INTERP,"shape",0);
+        property_name = string_from_literal(INTERP,"shape");
         old_shape = VTABLE_getprop(INTERP, SELF, property_name);
         VTABLE_setprop(INTERP, SELF, property_name, new_shape);
 
=== languages/cardinal/src/pmc/rubyobject.pmc
==================================================================
--- languages/cardinal/src/pmc/rubyobject.pmc	(revision 21001)
+++ languages/cardinal/src/pmc/rubyobject.pmc	(local)
@@ -32,11 +32,11 @@
     void class_init() {
         if (pass) {
             dynpmc_RubyString = pmc_type(INTERP,
-                string_from_cstring(INTERP, "RubyString", 0));
+                string_from_literal(INTERP, "RubyString"));
             dynpmc_RubyInteger    = pmc_type(INTERP,
-                string_from_cstring(INTERP, "RubyInteger", 0));
+                string_from_literal(INTERP, "RubyInteger"));
             dynpmc_RubyFloat  = pmc_type(INTERP,
-                string_from_cstring(INTERP, "RubyFloat", 0));
+                string_from_literal(INTERP, "RubyFloat"));
         }
     }
 
=== languages/cardinal/src/pmc/rubystring.pmc
==================================================================
--- languages/cardinal/src/pmc/rubystring.pmc	(revision 21001)
+++ languages/cardinal/src/pmc/rubystring.pmc	(local)
@@ -32,7 +32,7 @@
             yes   = string_from_cstring(INTERP, "yes",3);
             no    = string_from_cstring(INTERP, "no",2);
 
-            fixedstringarray_typenum = pmc_type(INTERP, string_from_cstring(INTERP, "FixedStringArray", 0));
+            fixedstringarray_typenum = pmc_type(INTERP, string_from_literal(INTERP, "FixedStringArray"));
             string_anchor = pmc_new(INTERP,fixedstringarray_typenum);
 
             VTABLE_set_integer_native(INTERP,string_anchor,4);
=== languages/dotnet/ops/dotnet.ops
==================================================================
--- languages/dotnet/ops/dotnet.ops	(revision 21001)
+++ languages/dotnet/ops/dotnet.ops	(local)
@@ -74,7 +74,7 @@
 {
     PMC *ex_pmc = pmc_new(interp, enum_class_Exception);
     VTABLE_set_string_native(interp, ex_pmc,
-        string_from_cstring(interp, "System.OverflowException", 0));
+        string_from_literal(interp, "System.OverflowException"));
     return (opcode_t *)throw_exception(interp, ex_pmc, ret);
 }
 
@@ -87,13 +87,13 @@
 
 inline op net_div_un(out PMC, invar PMC, invar PMC) :base_core {
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "UInt64", 0)));
+            string_from_literal(interp, "UInt64")));
         PMC_struct_val($1) = i;
         i->x = i1->x / i2->x;
     }
@@ -102,7 +102,7 @@
         int i1 = $2->vtable->get_integer(interp, $2);
         int i2 = $3->vtable->get_integer(interp, $3);
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "Integer", 0)));
+            string_from_literal(interp, "Integer")));
         $1->vtable->set_integer_native(interp, $1, i1 / i2);
     }
     goto NEXT();
@@ -115,13 +115,13 @@
 
 inline op net_rem_un(out PMC, invar PMC, invar PMC) :base_core {
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "UInt64", 0)));
+            string_from_literal(interp, "UInt64")));
         PMC_struct_val($1) = i;
         i->x = i1->x % i2->x;
     }
@@ -130,7 +130,7 @@
         int i1 = $2->vtable->get_integer(interp, $2);
         int i2 = $3->vtable->get_integer(interp, $3);
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "Integer", 0)));
+            string_from_literal(interp, "Integer")));
         $1->vtable->set_integer_native(interp, $1, i1 % i2);
     }
     goto NEXT();
@@ -155,7 +155,7 @@
 inline op net_add_ovf(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i1 = PMC_struct_val($2);
         struct dotnet_int64 *i2 = PMC_struct_val($3);
@@ -168,7 +168,7 @@
         {
             struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Int64", 0)));
+                string_from_literal(interp, "Int64")));
             PMC_struct_val($1) = i;
             i->x = i1->x + i2->x;
             goto NEXT();
@@ -186,7 +186,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 + i2);
             goto NEXT();
         }
@@ -210,7 +210,7 @@
 inline op net_add_ovf_un(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -223,7 +223,7 @@
         {
             struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "UInt64", 0)));
+                string_from_literal(interp, "UInt64")));
             PMC_struct_val($1) = i;
             i->x = i1->x + i2->x;
             goto NEXT();
@@ -241,7 +241,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 + i2);
             goto NEXT();
         }
@@ -265,7 +265,7 @@
 inline op net_sub_ovf(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i1 = PMC_struct_val($2);
         struct dotnet_int64 *i2 = PMC_struct_val($3);
@@ -278,7 +278,7 @@
         {
             struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Int64", 0)));
+                string_from_literal(interp, "Int64")));
             PMC_struct_val($1) = i;
             i->x = i1->x - i2->x;
             goto NEXT();
@@ -296,7 +296,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 - i2);
             goto NEXT();
         }
@@ -320,7 +320,7 @@
 inline op net_sub_ovf_un(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -333,7 +333,7 @@
         {
             struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "UInt64", 0)));
+                string_from_literal(interp, "UInt64")));
             PMC_struct_val($1) = i;
             i->x = i1->x - i2->x;
             goto NEXT();
@@ -351,7 +351,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 - i2);
             goto NEXT();
         }
@@ -375,7 +375,7 @@
 inline op net_mul_ovf(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -388,7 +388,7 @@
         {
             struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Int64", 0)));
+                string_from_literal(interp, "Int64")));
             PMC_struct_val($1) = i;
             i->x = i1->x * i2->x;
             goto NEXT();
@@ -406,7 +406,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 * i2);
             goto NEXT();
         }
@@ -430,7 +430,7 @@
 inline op net_mul_ovf_un(out PMC, invar PMC, invar PMC) :base_core {
     opcode_t *ret = expr NEXT();
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -443,7 +443,7 @@
         {
             struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "UInt64", 0)));
+                string_from_literal(interp, "UInt64")));
             PMC_struct_val($1) = i;
             i->x = i1->x * i2->x;
             goto NEXT();
@@ -461,7 +461,7 @@
         else
         {
             $1 = pmc_new(interp, pmc_type(interp,
-                string_from_cstring(interp, "Integer", 0)));
+                string_from_literal(interp, "Integer")));
             $1->vtable->set_integer_native(interp, $1, i1 * i2);
             goto NEXT();
         }
@@ -482,7 +482,7 @@
 
 inline op net_cgt_un(out INT, invar PMC, invar PMC) :base_core {
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -509,7 +509,7 @@
 
 inline op net_clt_un(out INT, invar PMC, invar PMC) :base_core {
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($2);
         struct dotnet_uint64 *i2 = PMC_struct_val($3);
@@ -551,7 +551,7 @@
 inline op net_bge_un(invar PMC, invar PMC, labelconst INT) :base_core {
     int result;
     if ($1->vtable->isa(interp, $1,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($1);
         struct dotnet_uint64 *i2 = PMC_struct_val($2);
@@ -598,7 +598,7 @@
 inline op net_bgt_un(invar PMC, invar PMC, labelconst INT) :base_core {
     int result;
     if ($1->vtable->isa(interp, $1,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($1);
         struct dotnet_uint64 *i2 = PMC_struct_val($2);
@@ -645,7 +645,7 @@
 inline op net_ble_un(invar PMC, invar PMC, labelconst INT) :base_core {
     int result;
     if ($1->vtable->isa(interp, $1,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($1);
         struct dotnet_uint64 *i2 = PMC_struct_val($2);
@@ -692,7 +692,7 @@
 inline op net_blt_un(invar PMC, invar PMC, labelconst INT) :base_core {
     int result;
     if ($1->vtable->isa(interp, $1,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($1);
         struct dotnet_uint64 *i2 = PMC_struct_val($2);
@@ -739,7 +739,7 @@
 inline op net_bne_un(invar PMC, invar PMC, labelconst INT) :base_core {
     int result;
     if ($1->vtable->isa(interp, $1,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_uint64 *i1 = PMC_struct_val($1);
         struct dotnet_uint64 *i2 = PMC_struct_val($2);
@@ -853,7 +853,7 @@
 
 inline op net_conv_i8(out PMC, in INT) :base_core {
     PMC* i8 = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "Int64", 0)));
+              string_from_literal(interp, "Int64")));
     struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
     PMC_struct_val(i8) = i;
         i->x = $2;
@@ -863,7 +863,7 @@
 
 inline op net_conv_i8(out PMC, in NUM) :base_core {
     PMC* i8 = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "Int64", 0)));
+              string_from_literal(interp, "Int64")));
     struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
     PMC_struct_val(i8) = i;
         i->x = (HUGEINTVAL) $2;
@@ -873,7 +873,7 @@
 
 inline op net_conv_u8(out PMC, in INT) :base_core {
     PMC* u8 = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "UInt64", 0)));
+              string_from_literal(interp, "UInt64")));
     struct dotnet_uint64* ui = mem_sys_allocate(sizeof (struct dotnet_uint64));
     PMC_struct_val(u8) = ui;
         ui->x = $2;
@@ -883,7 +883,7 @@
 
 inline op net_conv_u8(out PMC, in NUM) :base_core {
     PMC* u8 = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "UInt64", 0)));
+              string_from_literal(interp, "UInt64")));
     struct dotnet_uint64* ui = mem_sys_allocate(sizeof (struct dotnet_uint64));
     PMC_struct_val(u8) = ui;
         ui->x = (UHUGEINTVAL) $2;
@@ -958,7 +958,7 @@
 
 inline op net_conv_r_un(out NUM, invar PMC) :base_core {
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         $1 = (Parrot_Float) i->x;
@@ -1110,7 +1110,7 @@
 inline op net_conv_ovf_i4_un(out INT, invar PMC) :base_core {
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0x7FFFFFFF)
@@ -1152,7 +1152,7 @@
 inline op net_conv_ovf_u4_un(out INT, invar PMC) :base_core {
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0xFFFFFFFF)
@@ -1346,14 +1346,14 @@
 inline op net_conv_ovf_i4(out INT, invar PMC) :base_core {
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0x7FFFFFFF)
             ok = 0;
     }
     else if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0x7FFFFFFF)
@@ -1395,14 +1395,14 @@
 inline op net_conv_ovf_u4(out INT, invar PMC) :base_core {
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x < 0 || i->x > 0xFFFFFFFF)
             ok = 0;
     }
     else if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x < 0 || i->x > 0xFFFFFFFF)
@@ -1447,14 +1447,14 @@
     /* RT#42349 Fix for 64-bit architecture. */
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0x7FFFFFFF)
             ok = 0;
     }
     else if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x > 0x7FFFFFFF)
@@ -1498,14 +1498,14 @@
     /* RT#42349 Fix for 64-bit architecture. */
     int ok = 1;
     if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "Int64", 0)))
+        string_from_literal(interp, "Int64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x < 0 || i->x > 0xFFFFFFFF)
             ok = 0;
     }
     else if ($2->vtable->isa(interp, $2,
-        string_from_cstring(interp, "UInt64", 0)))
+        string_from_literal(interp, "UInt64")))
     {
         struct dotnet_int64 *i = PMC_struct_val($2);
         if (i->x < 0 || i->x > 0xFFFFFFFF)
@@ -1625,7 +1625,7 @@
     {
         struct dotnet_int64* i = mem_sys_allocate(sizeof (struct dotnet_int64));
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "Int64", 0)));
+            string_from_literal(interp, "Int64")));
         PMC_struct_val($1) = i;
         i->x = (HUGEINTVAL) $2;
         goto NEXT();
@@ -1643,7 +1643,7 @@
     {
         struct dotnet_uint64* i = mem_sys_allocate(sizeof (struct dotnet_uint64));
         $1 = pmc_new(interp, pmc_type(interp,
-            string_from_cstring(interp, "UInt64", 0)));
+            string_from_literal(interp, "UInt64")));
         PMC_struct_val($1) = i;
         i->x = (UHUGEINTVAL) $2;
         goto NEXT();
@@ -1686,7 +1686,7 @@
 inline op net_ldelema(out PMC, invar PMC, in INT) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1704,7 +1704,7 @@
 inline op net_ldelema(out PMC, invar PMC, invar PMC) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1722,7 +1722,7 @@
 inline op net_ldflda(out PMC, invar PMC, in STR) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1740,7 +1740,7 @@
 inline op net_reg_ptr(out PMC, in INT) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1759,7 +1759,7 @@
 inline op net_reg_ptr(out PMC, in NUM) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1778,7 +1778,7 @@
 inline op net_reg_ptr(out PMC, invar PMC) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
@@ -1797,7 +1797,7 @@
 inline op net_pmc_ptr(out PMC, invar PMC) :base_core {
     /* Create PMC, underlying struct and tie them together. */
     PMC* mp = pmc_new(interp, pmc_type(interp,
-              string_from_cstring(interp, "ManagedPointer", 0)));
+              string_from_literal(interp, "ManagedPointer")));
     struct dotnet_managed_ptr* managed_ptr = mem_sys_allocate(
         sizeof (struct dotnet_managed_ptr));
     PMC_struct_val(mp) = managed_ptr;
=== languages/lua/pmc/lua.pmc
==================================================================
--- languages/lua/pmc/lua.pmc	(revision 21001)
+++ languages/lua/pmc/lua.pmc	(local)
@@ -216,7 +216,7 @@
         STRING *str;
         parrot_context_t *ctx;
 
-        bt = string_from_cstring(INTERP, "stack traceback:\n", 0);
+        bt = string_from_literal(INTERP, "stack traceback:\n");
         /* information about the current sub */
         ctx = CONTEXT(INTERP->ctx);
 
=== languages/perl5/src/pmc/perlarray.pmc
==================================================================
--- languages/perl5/src/pmc/perlarray.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlarray.pmc	(local)
@@ -34,7 +34,7 @@
     INTVAL dynpmc_PerlUndef;
 
     dynpmc_PerlUndef = pmc_type(interp,
-        string_from_cstring(interp, "PerlUndef", 0));
+        string_from_literal(interp, "PerlUndef"));
 
     return pmc_new(interp, dynpmc_PerlUndef);
 }
@@ -97,7 +97,7 @@
         PMC    *src;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         src = pmc_new_noinit(INTERP, dynpmc_PerlInt);
         PMC_int_val(src) = value;
         list_assign(INTERP, (List *) PMC_data(SELF), key, src, enum_type_PMC);
=== languages/perl5/src/pmc/perlenv.pmc
==================================================================
--- languages/perl5/src/pmc/perlenv.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlenv.pmc	(local)
@@ -71,7 +71,7 @@
         STRING  *string;
 
         dynpmc_PerlString = pmc_type(interp,
-            string_from_cstring(interp, "PerlString", 0));
+            string_from_literal(interp, "PerlString"));
         ret = pmc_new(INTERP, dynpmc_PerlString);
         string = DYNSELF.get_string_keyed(key);
         VTABLE_set_string_native(INTERP, ret, string);
=== languages/perl5/src/pmc/perlhash.pmc
==================================================================
--- languages/perl5/src/pmc/perlhash.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlhash.pmc	(local)
@@ -37,7 +37,7 @@
 
     void class_init() {
         _PerlUndef = pmc_type(INTERP,
-                string_from_cstring(INTERP, "PerlUndef", 0));
+                string_from_literal(INTERP, "PerlUndef"));
     }
 
     PMC* get_pmc_keyed(PMC *key) {
=== languages/perl5/src/pmc/perlint.pmc
==================================================================
--- languages/perl5/src/pmc/perlint.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlint.pmc	(local)
@@ -46,7 +46,7 @@
         INTVAL dynpmc_PerlNum;
 
         dynpmc_PerlNum = pmc_type(interp,
-            string_from_cstring(interp, "PerlNum", 0));
+            string_from_literal(interp, "PerlNum"));
         DYNSELF.morph(dynpmc_PerlNum);
         DYNSELF.set_number_native(value);
     }
@@ -65,7 +65,7 @@
         INTVAL dynpmc_PerlString;
 
         dynpmc_PerlString = pmc_type(interp,
-            string_from_cstring(interp, "PerlString", 0));
+            string_from_literal(interp, "PerlString"));
         DYNSELF.morph(dynpmc_PerlString);
         DYNSELF.set_string_native(value);
     }
=== languages/perl5/src/pmc/perlnum.pmc
==================================================================
--- languages/perl5/src/pmc/perlnum.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlnum.pmc	(local)
@@ -71,7 +71,7 @@
         INTVAL dynpmc_PerlInt;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         DYNSELF.morph(dynpmc_PerlInt);
         DYNSELF.set_integer_native(value);
     }
@@ -113,7 +113,7 @@
         INTVAL dynpmc_PerlString;
 
         dynpmc_PerlString = pmc_type(interp,
-            string_from_cstring(interp, "PerlString", 0));
+            string_from_literal(interp, "PerlString"));
         DYNSELF.morph(dynpmc_PerlString);
         DYNSELF.set_string_native(value);
     }
=== languages/perl5/src/pmc/perlscalar.pmc
==================================================================
--- languages/perl5/src/pmc/perlscalar.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlscalar.pmc	(local)
@@ -48,19 +48,19 @@
         switch (type) {
             case enum_class_Integer:
                 type = pmc_type(interp,
-                    string_from_cstring(interp, "PerlInt", 0));
+                    string_from_literal(interp, "PerlInt"));
                 break;
             case enum_class_Float:
                 type = pmc_type(interp,
-                    string_from_cstring(interp, "PerlNum", 0));
+                    string_from_literal(interp, "PerlNum"));
                 break;
             case enum_class_String:
                 type = pmc_type(interp,
-                    string_from_cstring(interp, "PerlString", 0));
+                    string_from_literal(interp, "PerlString"));
                 break;
             case enum_class_Undef:
                 type = pmc_type(interp,
-                    string_from_cstring(interp, "PerlUndef", 0));
+                    string_from_literal(interp, "PerlUndef"));
                 break;
         }
         pmc_reuse(INTERP, SELF, type, 0);
=== languages/perl5/src/pmc/perlstring.pmc
==================================================================
--- languages/perl5/src/pmc/perlstring.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlstring.pmc	(local)
@@ -86,7 +86,7 @@
         INTVAL dynpmc_PerlInt;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         DYNSELF.morph(dynpmc_PerlInt);
         DYNSELF.set_integer_native(value);
     }
@@ -105,7 +105,7 @@
         INTVAL dynpmc_PerlNum;
 
         dynpmc_PerlNum = pmc_type(interp,
-            string_from_cstring(interp, "PerlNum", 0));
+            string_from_literal(interp, "PerlNum"));
         DYNSELF.morph(dynpmc_PerlNum);
         DYNSELF.set_number_native(value);
     }
@@ -165,7 +165,7 @@
 
         s = PMC_str_val(SELF);
         dynpmc_PerlString = pmc_type(interp,
-            string_from_cstring(interp, "PerlString", 0));
+            string_from_literal(interp, "PerlString"));
         ret = pmc_new_noinit(INTERP, dynpmc_PerlString);
         PMC_str_val(ret) = string_substr(INTERP, s,
                 key_integer(INTERP,key), 1, NULL, 0);
=== languages/perl5/src/pmc/perlundef.pmc
==================================================================
--- languages/perl5/src/pmc/perlundef.pmc	(revision 21001)
+++ languages/perl5/src/pmc/perlundef.pmc	(local)
@@ -139,7 +139,7 @@
         INTVAL dynpmc_PerlInt;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         DYNSELF.morph(dynpmc_PerlInt);
         DYNSELF.set_integer_native(value);
     }
@@ -172,7 +172,7 @@
         INTVAL dynpmc_PerlString;
 
         dynpmc_PerlString = pmc_type(interp,
-            string_from_cstring(interp, "PerlString", 0));
+            string_from_literal(interp, "PerlString"));
         DYNSELF.morph(dynpmc_PerlString);
         DYNSELF.set_string_native(value);
     }
@@ -490,7 +490,7 @@
             INTVAL dynpmc_PerlInt;
 
             dynpmc_PerlInt = pmc_type(interp,
-                string_from_cstring(interp, "PerlInt", 0));
+                string_from_literal(interp, "PerlInt"));
             dest = pmc_new(INTERP, dynpmc_PerlInt);
         }
         VTABLE_set_integer_native(INTERP, dest, 1);
@@ -528,7 +528,7 @@
         INTVAL dynpmc_PerlInt;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         DYNSELF.morph(dynpmc_PerlInt);
         PMC_int_val(SELF) = 1;
     }
@@ -547,7 +547,7 @@
         INTVAL dynpmc_PerlInt;
 
         dynpmc_PerlInt = pmc_type(interp,
-            string_from_cstring(interp, "PerlInt", 0));
+            string_from_literal(interp, "PerlInt"));
         DYNSELF.morph(dynpmc_PerlInt);
         PMC_int_val(SELF) = -1;
     }
=== languages/pugs/pmc/pugscapture.pmc
==================================================================
--- languages/pugs/pmc/pugscapture.pmc	(revision 21001)
+++ languages/pugs/pmc/pugscapture.pmc	(local)
@@ -232,7 +232,7 @@
 
 
     STRING* get_repr() {
-        return string_from_cstring(INTERP, "toto", 0);
+        return string_from_literal(INTERP, "toto");
     }
 
     STRING* get_string() {
=== languages/tcl/src/binary.c
==================================================================
--- languages/tcl/src/binary.c	(revision 21001)
+++ languages/tcl/src/binary.c	(local)
@@ -238,10 +238,10 @@
     /* make sure we've found the type numbers for the PMCs we want to create */
     if (!class_TclFloat)
     {
-        class_TclFloat  = pmc_type(interp, string_from_cstring(interp, "TclFloat", 0));
-        class_TclInt    = pmc_type(interp, string_from_cstring(interp, "TclInt", 0));
-        class_TclList   = pmc_type(interp, string_from_cstring(interp, "TclList", 0));
-        class_TclString = pmc_type(interp, string_from_cstring(interp, "TclString", 0));
+        class_TclFloat  = pmc_type(interp, string_from_literal(interp, "TclFloat"));
+        class_TclInt    = pmc_type(interp, string_from_literal(interp, "TclInt"));
+        class_TclList   = pmc_type(interp, string_from_literal(interp, "TclList"));
+        class_TclString = pmc_type(interp, string_from_literal(interp, "TclString"));
     }
 
     values = pmc_new(interp, class_TclList);
=== languages/tcl/src/ops/tcl.ops
==================================================================
--- languages/tcl/src/ops/tcl.ops	(revision 21001)
+++ languages/tcl/src/ops/tcl.ops	(local)
@@ -113,10 +113,10 @@
   PMC* exception = pmc_new(interp, enum_class_Exception);
   PMC* tcl_key = pmc_new(interp, enum_class_Key);
 
-  VTABLE_set_string_native(interp, tcl_key, string_from_cstring(interp,"tcl",0));
+  VTABLE_set_string_native(interp, tcl_key, string_from_literal(interp,"tcl"));
   ns = Parrot_get_namespace_keyed(interp, root_ns, tcl_key);
 
-  errorCode = Parrot_find_global_n(interp, ns, string_from_cstring(interp,"$errorCode",0));
+  errorCode = Parrot_find_global_n(interp, ns, string_from_literal(interp,"$errorCode"));
   VTABLE_assign_pmc(interp, errorCode, $2);
 
   VTABLE_set_string_keyed_int(interp, exception, 0, $1);
=== languages/tcl/src/pmc/tclarray.pmc
==================================================================
--- languages/tcl/src/pmc/tclarray.pmc	(revision 21001)
+++ languages/tcl/src/pmc/tclarray.pmc	(local)
@@ -52,7 +52,7 @@
     void class_init() {
         if (pass) {
             dynpmc_TclString = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclString", 0));
+                string_from_literal(INTERP, "TclString"));
         }
     }
 
=== languages/tcl/src/pmc/tcldict.pmc
==================================================================
--- languages/tcl/src/pmc/tcldict.pmc	(revision 21001)
+++ languages/tcl/src/pmc/tcldict.pmc	(local)
@@ -52,7 +52,7 @@
     void class_init() {
         if (pass) {
             dynpmc_TclString = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclString", 0));
+                string_from_literal(INTERP, "TclString"));
         }
     }
 
=== languages/tcl/src/pmc/tcllist.pmc
==================================================================
--- languages/tcl/src/pmc/tcllist.pmc	(revision 21001)
+++ languages/tcl/src/pmc/tcllist.pmc	(local)
@@ -47,7 +47,7 @@
     void class_init() {
         if (pass) {
             dynpmc_TclInt = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclInt", 0));
+                string_from_literal(INTERP, "TclInt"));
         }
     }
 
=== languages/tcl/src/pmc/tclobject.pmc
==================================================================
--- languages/tcl/src/pmc/tclobject.pmc	(revision 21001)
+++ languages/tcl/src/pmc/tclobject.pmc	(local)
@@ -29,11 +29,11 @@
     void class_init() {
         if (pass) {
             dynpmc_TclString = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclString", 0));
+                string_from_literal(INTERP, "TclString"));
             dynpmc_TclInt    = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclInt", 0));
+                string_from_literal(INTERP, "TclInt"));
             dynpmc_TclFloat  = pmc_type(INTERP,
-                string_from_cstring(INTERP, "TclFloat", 0));
+                string_from_literal(INTERP, "TclFloat"));
         }
     }
 
=== src/dynext.c
==================================================================
--- src/dynext.c	(revision 21001)
+++ src/dynext.c	(local)
@@ -111,7 +111,7 @@
     if (lib == NULL) {
         *handle = Parrot_dlopen((char *)NULL);
         if (*handle) {
-            return string_from_cstring(interp, "", 0);
+            return string_from_literal(interp, "");
         }
         err = Parrot_dlerror();
         Parrot_warn(interp, PARROT_WARNINGS_DYNEXT_FLAG,
@@ -391,7 +391,7 @@
      * LOCK()
      */
     if (lib == NULL) {
-        wo_ext   = string_from_cstring(interp, "", 0);
+        wo_ext   = string_from_literal(interp, "");
         lib_name = NULL;
     }
     else {
=== src/dynoplibs/myops.ops
==================================================================
--- src/dynoplibs/myops.ops	(revision 21001)
+++ src/dynoplibs/myops.ops	(local)
@@ -39,7 +39,7 @@
 }
 
 inline op what_do_you_get_if_you_multiply_six_by_nine(out STR) {
-    $1 = string_from_cstring(interp, "fortytwo", 0);
+    $1 = string_from_literal(interp, "fortytwo");
     goto NEXT();
 }
 
=== src/dynpmc/gdbmhash.pmc
==================================================================
--- src/dynpmc/gdbmhash.pmc	(revision 21001)
+++ src/dynpmc/gdbmhash.pmc	(local)
@@ -90,7 +90,7 @@
 #ifdef WIN32
             /* XXX: What if libgdbm.so cannot be loaded */
             /* Parrot_load_lib(INTERP, slib, NULL); */
-            STRING *slib = string_from_cstring(INTERP, "gdbm3", 0);
+            STRING *slib = string_from_literal(INTERP, "gdbm3");
 #endif
         }
     }
=== src/global.c
==================================================================
--- src/global.c	(revision 21001)
+++ src/global.c	(local)
@@ -187,7 +187,7 @@
 Parrot_make_namespace_autobase(Interp *interp /*NN*/, PMC *key)
 {
     PMC *base_ns;
-    if (VTABLE_isa(interp, key, string_from_cstring(interp, "String", 0)))
+    if (VTABLE_isa(interp, key, string_from_literal(interp, "String")))
         base_ns = CONTEXT(interp->ctx)->current_namespace;
     else
         base_ns = VTABLE_get_pmc_keyed_int(interp, interp->HLL_namespace,
@@ -200,7 +200,7 @@
 Parrot_get_namespace_autobase(Interp *interp /*NN*/, PMC *key)
 {
     PMC *base_ns;
-    if (VTABLE_isa(interp, key, string_from_cstring(interp, "String", 0)))
+    if (VTABLE_isa(interp, key, string_from_literal(interp, "String")))
         base_ns = CONTEXT(interp->ctx)->current_namespace;
     else
         base_ns = VTABLE_get_pmc_keyed_int(interp, interp->HLL_namespace,
=== src/global_setup.c
==================================================================
--- src/global_setup.c	(revision 21001)
+++ src/global_setup.c	(local)
@@ -117,7 +117,7 @@
     for (i = 0; i <= interp->n_vtable_max; i++)
         if (interp->vtables[i])
             Parrot_PCCINVOKE(interp, interp->vtables[i]->_namespace,
-                string_from_cstring(interp, "set_class", 0), "P->",
+                string_from_literal(interp, "set_class"), "P->",
                 VTABLE_get_pmc_keyed_int(interp, interp->pmc_proxies, i));
 
     iglobals = interp->iglobals;
=== src/inter_create.c
==================================================================
--- src/inter_create.c	(revision 21001)
+++ src/inter_create.c	(local)
@@ -71,7 +71,7 @@
 static void
 setup_default_compreg(Parrot_Interp interp)
 {
-    STRING * const pasm1 = string_from_cstring(interp, "PASM1", 0);
+    STRING * const pasm1 = string_from_literal(interp, "PASM1");
 
     /* register the nci compiler object */
     Parrot_compreg(interp, pasm1, (Parrot_compiler_func_t)PDB_compile);
=== src/key.c
==================================================================
--- src/key.c	(revision 21001)
+++ src/key.c	(local)
@@ -441,7 +441,7 @@
                 }
                 break;
             default:
-                string_append(interp, value, string_from_cstring(interp, "Key type unknown", 0));
+                string_append(interp, value, string_from_literal(interp, "Key type unknown"));
                 break;
         }
 
=== src/objects.c
==================================================================
--- src/objects.c	(revision 21001)
+++ src/objects.c	(local)
@@ -1821,7 +1821,7 @@
 
     /* Now get immediate parents list. */
     Parrot_PCCINVOKE(interp, _class,
-         string_from_cstring(interp, "parents", 0),
+         string_from_literal(interp, "parents"),
         "->P", &immediate_parents);
 
     if (immediate_parents == NULL) {
@@ -1909,7 +1909,7 @@
 
     /* Get the methods from the role. */
     Parrot_PCCINVOKE(interp, role,
-        string_from_cstring(interp, "methods", 0), "->P", &methods);
+        string_from_literal(interp, "methods"), "->P", &methods);
 
     if (PMC_IS_NULL(methods))
         return;
@@ -2031,7 +2031,7 @@
      * as roles "flatten" the methods they get from other roles into their
      * own method list. */
     Parrot_PCCINVOKE(interp, role,
-        string_from_cstring(interp, "roles", 0), "->P", &roles_of_role);
+        string_from_literal(interp, "roles"), "->P", &roles_of_role);
     roles_of_role_count = VTABLE_elements(interp, roles_of_role);
 
     for (i = 0; i < roles_of_role_count; i++) {
=== src/ops/object.ops
==================================================================
--- src/ops/object.ops	(revision 21001)
+++ src/ops/object.ops	(local)
@@ -422,7 +422,7 @@
       CONTEXT(interp->ctx)->current_namespace, $2);
   if (!PMC_IS_NULL(ns))
       Parrot_PCCINVOKE(interp, ns,
-          string_from_cstring(interp, "get_class", 0), "->P", &_class);
+          string_from_literal(interp, "get_class"), "->P", &_class);
 
   /* If class is not found, throw an exception; otherwise, put it in $1. */
   if (PMC_IS_NULL(_class))
@@ -440,7 +440,7 @@
   /* If we were not passed a namespace PMC, look it up, otherwise just use
    * the supplied namespace PMC. */
   PMC *ns;
-  if (!VTABLE_isa(interp, $2, string_from_cstring(interp, "NameSpace", 0)))
+  if (!VTABLE_isa(interp, $2, string_from_literal(interp, "NameSpace")))
       ns = Parrot_get_namespace_autobase(interp, $2);
   else
       ns = $2;
@@ -448,7 +448,7 @@
   /* If we have got a namespace, get the class associated with it, if any. */
   if (!PMC_IS_NULL(ns))
       Parrot_PCCINVOKE(interp, ns,
-          string_from_cstring(interp, "get_class", 0), "->P", &_class);
+          string_from_literal(interp, "get_class"), "->P", &_class);
 
   /* If class is not found, throw an exception; otherwise, put it in $1. */
   if (PMC_IS_NULL(_class)) {
@@ -532,8 +532,8 @@
 =cut
 
 inline op addattribute(invar PMC, in STR) :object_classes {
-    STRING *class_name  = string_from_cstring(interp, "Class", 0);
-    STRING *pclass_name = string_from_cstring(interp, "ParrotClass", 0);
+    STRING *class_name  = string_from_literal(interp, "Class");
+    STRING *pclass_name = string_from_literal(interp, "ParrotClass");
 
     if (VTABLE_isa(interp, $1, class_name))
         VTABLE_add_attribute(interp, $1, $2, PMCNULL);
=== src/packfile.c
==================================================================
--- src/packfile.c	(revision 21001)
+++ src/packfile.c	(local)
@@ -2140,20 +2140,20 @@
         {
             switch (debug->mappings[i]->mapping_type) {
                 case PF_DEBUGMAPPINGTYPE_NONE:
-                    return string_from_cstring(interp,
-                        "(unknown file)", 0);
+                    return string_from_literal(interp,
+                        "(unknown file)");
                 case PF_DEBUGMAPPINGTYPE_FILENAME:
                     return PF_CONST(debug->code,
                         debug->mappings[i]->u.filename)->u.string;
                 case PF_DEBUGMAPPINGTYPE_SOURCESEG:
-                    return string_from_cstring(interp,
-                        "(unknown file)", 0);
+                    return string_from_literal(interp,
+                        "(unknown file)");
             }
         }
     }
 
     /* Otherwise, no mappings = no filename. */
-    return string_from_cstring(interp, "(unknown file)", 0);
+    return string_from_literal(interp, "(unknown file)");
 }
 
 /*
=== src/pmc/class.pmc
==================================================================
--- src/pmc/class.pmc	(revision 21001)
+++ src/pmc/class.pmc	(local)
@@ -242,7 +242,7 @@
         /* If we were passed a namespace PMC, set the namespace attribute
          * directly. Otherwise, lookup or create the appropriate namespace. */
         if (VTABLE_isa(interp, name_arg,
-                    string_from_cstring(interp, "NameSpace", 0)))
+                    string_from_literal(interp, "NameSpace")))
             new_namespace = name_arg;
         else
             new_namespace = Parrot_make_namespace_autobase(interp, name_arg);
@@ -276,19 +276,19 @@
      * need to unset ourselves in the old namespace. */
     if (!PMC_IS_NULL(old_ns) && _class->_namespace != old_ns)
         Parrot_PCCINVOKE(interp, old_ns,
-            string_from_cstring(interp, "set_class", 0), "P->", PMCNULL);
+            string_from_literal(interp, "set_class"), "P->", PMCNULL);
 
     /* Link namespace to this class, if there is one. */
     if (!PMC_IS_NULL(_class->_namespace))
         Parrot_PCCINVOKE(interp, _class->_namespace,
-            string_from_cstring(interp, "set_class", 0), "P->", self);
+            string_from_literal(interp, "set_class"), "P->", self);
 
     /* Initialize resolve_method. */
     if (VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "resolve_method", 0))) {
+        string_from_literal(interp, "resolve_method"))) {
         /* Set it. */
         _class->resolve_method = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "resolve_method", 0));
+            string_from_literal(interp, "resolve_method"));
     }
 
     /* Initialize parents, if we have any. */
=== src/pmc/env.pmc
==================================================================
--- src/pmc/env.pmc	(revision 21001)
+++ src/pmc/env.pmc	(local)
@@ -136,7 +136,7 @@
         switch (PObj_get_FLAGS(key) & KEY_type_FLAGS) {
             case KEY_integer_FLAG:
                 if (PMC_int_val(key) < 0) {
-                    retval = string_from_cstring(interp, "", 0);
+                    retval = string_from_literal(interp, "");
                 }
                 else {
                     const char * const envp = environ[PMC_int_val(key)];
=== src/pmc/exception.pmc
==================================================================
--- src/pmc/exception.pmc	(revision 21001)
+++ src/pmc/exception.pmc	(local)
@@ -128,7 +128,7 @@
     STRING* get_string_keyed(PMC* key) {
         STRING* s = key_string(INTERP, key);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_message", 0)))
+            string_from_literal(INTERP, "_message")))
             return DYNSELF.get_string_keyed_int(0);
         return 0;
     }
@@ -150,10 +150,10 @@
     INTVAL get_integer_keyed(PMC* key) {
         STRING* s = key_string(INTERP, key);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_type", 0)))
+            string_from_literal(INTERP, "_type")))
             return DYNSELF.get_integer_keyed_int(1);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_severity", 0)))
+            string_from_literal(INTERP, "_severity")))
             return DYNSELF.get_integer_keyed_int(2);
         return 0;
     }
@@ -203,7 +203,7 @@
     void set_string_keyed(PMC* key, STRING* value) {
         STRING* s = key_string(INTERP, key);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_message", 0)))
+            string_from_literal(INTERP, "_message")))
             DYNSELF.set_string_keyed_int(0, value);
     }
 
@@ -220,10 +220,10 @@
     void set_integer_keyed(PMC* key, INTVAL value) {
         STRING* s = key_string(INTERP, key);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_type", 0)))
+            string_from_literal(INTERP, "_type")))
             DYNSELF.set_integer_keyed_int(1, value);
         if (!string_compare(INTERP, s,
-            string_from_cstring(INTERP, "_severity", 0)))
+            string_from_literal(INTERP, "_severity")))
             DYNSELF.set_integer_keyed_int(2, value);
     }
 
=== src/pmc/fixedintegerarray.pmc
==================================================================
--- src/pmc/fixedintegerarray.pmc	(revision 21001)
+++ src/pmc/fixedintegerarray.pmc	(local)
@@ -328,7 +328,7 @@
         INTVAL j, n;
         PMC *val;
 
-        res = string_from_cstring(INTERP, "[ ", 0);
+        res = string_from_literal(INTERP, "[ ");
         n = VTABLE_elements(INTERP, SELF);
         for (j = 0; j < n; ++j) {
             val = SELF.get_pmc_keyed_int(j);
=== src/pmc/fixedpmcarray.pmc
==================================================================
--- src/pmc/fixedpmcarray.pmc	(revision 21001)
+++ src/pmc/fixedpmcarray.pmc	(local)
@@ -247,7 +247,7 @@
         INTVAL j, n;
         PMC *val;
 
-        res = string_from_cstring(INTERP, "(", 0);
+        res = string_from_literal(INTERP, "(");
         n = VTABLE_elements(INTERP, SELF);
         for (j = 0; j < n; ++j) {
             val = SELF.get_pmc_keyed_int(j);
=== src/pmc/hash.pmc
==================================================================
--- src/pmc/hash.pmc	(revision 21001)
+++ src/pmc/hash.pmc	(local)
@@ -370,7 +370,7 @@
     STRING* get_repr() {
         /* TODO use freeze */
         PMC * const iter = VTABLE_get_iter(INTERP, SELF);
-        STRING *res = string_from_cstring(INTERP, "{", 0);
+        STRING *res = string_from_literal(INTERP, "{");
         const INTVAL n = VTABLE_elements(INTERP, SELF);
         INTVAL j;
 
=== src/pmc/pccmethod_test.pmc
==================================================================
--- src/pmc/pccmethod_test.pmc	(revision 21001)
+++ src/pmc/pccmethod_test.pmc	(local)
@@ -62,7 +62,7 @@
     }
     PCCMETHOD void test_method2(int a1 :optional, int a1o :opt_flag, PMC *slurpy_pos :slurpy)
     {
-        STRING* kevin = string_from_cstring(interp, "KEVIN", 0);
+        STRING* kevin = string_from_literal(interp, "KEVIN");
         PIO_printf(interp, "test_method2\n");
         PIO_printf(interp, "%d, %d, %Ss %Ss\n", a1, a1o, VTABLE_name(interp, slurpy_pos),
                 VTABLE_get_repr(interp,slurpy_pos));
=== src/pmc/resizablepmcarray.pmc
==================================================================
--- src/pmc/resizablepmcarray.pmc	(revision 21001)
+++ src/pmc/resizablepmcarray.pmc	(local)
@@ -650,7 +650,7 @@
         INTVAL j, n;
         PMC *val;
 
-        res = string_from_cstring(INTERP, "[ ", 0);
+        res = string_from_literal(INTERP, "[ ");
         n = VTABLE_elements(INTERP, SELF);
         for (j = 0; j < n; ++j) {
             val = SELF.get_pmc_keyed_int(j);
=== src/pmc/role.pmc
==================================================================
--- src/pmc/role.pmc	(revision 21001)
+++ src/pmc/role.pmc	(local)
@@ -75,9 +75,9 @@
 
     /* Check if we have a name and/or a namespace. */
     have_name = VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "name", 0));
+        string_from_literal(interp, "name"));
     have_ns = VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "namespace", 0));
+        string_from_literal(interp, "namespace"));
 
     /* Take a copy of the current namespace the role is attached to. */
     old_ns = role->_namespace;
@@ -88,8 +88,8 @@
         /* If we weren't passed a NameSpace PMC, assume it's something we have
          * to look one up with and do so. */
         PMC *_namespace = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "namespace", 0));
-        if (!VTABLE_isa(interp, _namespace, string_from_cstring(interp, "NameSpace", 0)))
+            string_from_literal(interp, "namespace"));
+        if (!VTABLE_isa(interp, _namespace, string_from_literal(interp, "NameSpace")))
             _namespace = Parrot_make_namespace_autobase(interp, _namespace);
 
         /* If we get something null back it's an error; otherwise, store it. */
@@ -100,14 +100,14 @@
 
         /* Set a (string) name. */
         role->name = VTABLE_get_string_keyed_str(interp, info,
-            string_from_cstring(interp, "name", 0));
+            string_from_literal(interp, "name"));
     }
 
     /* Otherwise, we may just have a name. */
     else if (have_name) {
         /* Set the name. */
         role->name = VTABLE_get_string_keyed_str(interp, info,
-            string_from_cstring(interp, "name", 0));
+            string_from_literal(interp, "name"));
 
         /* Namespace is nested in the current namespace and with the name of
          * the role. */
@@ -120,8 +120,8 @@
         /* If we weren't passed a NameSpace PMC, assume it's something we have
          * to look one up with and do so. */
         PMC *_namespace = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "namespace", 0));
-        if (!VTABLE_isa(interp, _namespace, string_from_cstring(interp, "NameSpace", 0)))
+            string_from_literal(interp, "namespace"));
+        if (!VTABLE_isa(interp, _namespace, string_from_literal(interp, "NameSpace")))
             _namespace = Parrot_make_namespace_autobase(interp, _namespace);
 
         /* If we get something null back it's an error; otherwise, store it. */
@@ -138,21 +138,21 @@
      * need to unset ourselves in the old namespace. */
     if (!PMC_IS_NULL(old_ns) && role->_namespace != old_ns)
         Parrot_PCCINVOKE(interp, old_ns,
-            string_from_cstring(interp, "set_class", 0),
+            string_from_literal(interp, "set_class"),
             "P->", PMCNULL);
 
     /* Link namespace to this role, if there is one. */
     if (!PMC_IS_NULL(role->_namespace))
         Parrot_PCCINVOKE(interp, role->_namespace,
-            string_from_cstring(interp, "set_class", 0),
+            string_from_literal(interp, "set_class"),
             "P->", self);
 
     /* Initialize roles, if we have any. */
     if (VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "roles", 0))) {
+        string_from_literal(interp, "roles"))) {
         /* Loop over roles array and compose them. */
         PMC *role_list = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "roles", 0));
+            string_from_literal(interp, "roles"));
         int role_count = VTABLE_elements(interp, role_list);
         for (i = 0; i < role_count; i++) {
             PMC *cur_role = VTABLE_get_pmc_keyed_int(interp, role_list, i);
@@ -162,10 +162,10 @@
 
     /* Initialize attributes, if we have any. */
     if (VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "attributes", 0))) {
+        string_from_literal(interp, "attributes"))) {
         /* Loop over attributes array and add them. */
         PMC *attrib_name_list = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "attributes", 0));
+            string_from_literal(interp, "attributes"));
         int attrib_count = VTABLE_elements(interp, attrib_name_list);
         for (i = 0; i < attrib_count; i++) {
             STRING *attrib_name = VTABLE_get_string_keyed_int(interp,
@@ -176,10 +176,10 @@
 
     /* Initialize methods, if we have any. */
     if (VTABLE_exists_keyed_str(interp, info,
-        string_from_cstring(interp, "methods", 0))) {
+        string_from_literal(interp, "methods"))) {
         /* Get the methods hash. */
         PMC *methods = VTABLE_get_pmc_keyed_str(interp, info,
-            string_from_cstring(interp, "methods", 0));
+            string_from_literal(interp, "methods"));
 
         /* Iterate over the list of methods. */
         PMC *iter = VTABLE_get_iter(interp, methods);
=== src/pmc/unmanagedstruct.pmc
==================================================================
--- src/pmc/unmanagedstruct.pmc	(revision 21001)
+++ src/pmc/unmanagedstruct.pmc	(local)
@@ -154,7 +154,7 @@
          */
         PMC * const ptr = VTABLE_get_pmc_keyed_int(interp, init, ix);
         init = VTABLE_getprop(interp, ptr,
-            string_from_cstring(interp, "_struct", 0));
+            string_from_literal(interp, "_struct"));
         assert(init && (init->vtable->base_type == enum_class_UnManagedStruct
             ||  init->vtable->base_type == enum_class_ManagedStruct));
 
@@ -350,7 +350,7 @@
             ptr = VTABLE_get_pmc_keyed_int(interp, init, idx*3);
             if (ptr->pmc_ext && PMC_metadata(ptr)) {
                 PMC *sig = VTABLE_getprop(interp, ptr,
-                        string_from_cstring(interp, "_signature", 0));
+                        string_from_literal(interp, "_signature"));
                 if (VTABLE_defined(interp, sig)) {
                     STRING *sig_str = VTABLE_get_string(interp, sig);
                     ret = pmc_new(interp, enum_class_NCI);
@@ -516,7 +516,7 @@
          * so go through that struct and check
          */
         nested = VTABLE_getprop(interp, type_pmc,
-            string_from_cstring(interp, "_struct", 0));
+            string_from_literal(interp, "_struct"));
         nested_init = PMC_pmc_val(nested);
     }
     if (type == enum_type_struct) {
@@ -598,7 +598,7 @@
             toff = offs;
             if (type == enum_type_struct) {
                 PMC *nested = VTABLE_getprop(interp, type_pmc,
-                        string_from_cstring(interp, "_struct", 0));
+                        string_from_literal(interp, "_struct"));
                 size = PMC_int_val(nested);
             }
             else
=== src/pmc_freeze.c
==================================================================
--- src/pmc_freeze.c	(revision 21001)
+++ src/pmc_freeze.c	(local)
@@ -1352,9 +1352,9 @@
 {
     INTVAL len;
     if (!PMC_IS_NULL(pmc) && (VTABLE_does(interp, pmc,
-                string_from_cstring(interp, "array", 0)) ||
+                string_from_literal(interp, "array")) ||
         VTABLE_does(interp, pmc,
-                string_from_cstring(interp, "hash", 0)))) {
+                string_from_literal(interp, "hash")))) {
         const INTVAL items = VTABLE_elements(interp, pmc);
         /*
          * TODO check e.g. first item of aggregate and estimate size
=== src/sub.c
==================================================================
--- src/sub.c	(revision 21001)
+++ src/sub.c	(local)
@@ -310,7 +310,7 @@
 
     /* set the namespace name and fullname of the sub */
     if (PMC_IS_NULL(sub->namespace_name)) {
-        info->nsname = string_from_cstring(interp, "", 0);
+        info->nsname = string_from_literal(interp, "");
         info->fullname = info->subname;
     }
     else {
=== tools/build/nativecall.pl
==================================================================
--- tools/build/nativecall.pl	(revision 21001)
+++ tools/build/nativecall.pl	(local)
@@ -621,7 +621,7 @@
     push @{$put_pointer_ref}, <<"PUT_POINTER";
         temp_pmc = pmc_new(interp, enum_class_UnManagedStruct);
         PMC_data(temp_pmc) = (void*)$value;
-        VTABLE_set_pmc_keyed_str(interp, HashPointer, string_from_cstring(interp, "$key", 0), temp_pmc);
+        VTABLE_set_pmc_keyed_str(interp, HashPointer, string_from_literal(interp, "$key"), temp_pmc);
 PUT_POINTER
 
     #        qq|        parrot_hash_put( interp, known_frames, const_cast("$key"), $value );|;

--MP__uRmoACqbI6ksnglYJx.okx--

          

nX-Cs	 
From perl6-all-return-81733-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 19:52:23 2007
Return-Path: <perl6-all-return-81733-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51NqIhB016458
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 19:52:19 -0400
Received: (qmail 23548 invoked by uid 514); 1 Jun 2007 23:52:12 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23543 invoked from network); 1 Jun 2007 23:52:12 -0000
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
From: Steve Peters (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Fri, 01 Jun 2007 16:51:18 -0700
Subject: [perl #43108] [PATCH] Getting Parrot compiled with C++ - Part one 
In-Reply-To: <20070601234912.GA1754@kirk.peters.homeunix.org>
References: <RT-Ticket-43108@perl.org> <20070601234912.GA1754@kirk.peters.homeunix.org>
Message-ID: <rt-3.6.HEAD-1668-1180741878-817.43108-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43108
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: steve@fisharerojo.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1180741878-1668-41"
Resent-Message-Id: <20070601235119.0BB1E2AFD7@x3.develooper.com>
Resent-Date: Fri,  1 Jun 2007 16:51:19 -0700 (PDT)
Resent-From: rt-steve=fisharerojo.org@netlabs.develooper.com
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1180741878-1668-41
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Steve Peters 
# Please include the string:  [perl #43108]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43108 >


The attached patch gets Parrot partially compiles with C++ (g++ actually).
This work gets the compile going through the start of the imcc compiler.

Expect part two to get it the rest of the way tomorrow.

Steve Peters
steve@fisharerojo.org

------------=_1180741878-1668-41
Content-Type: text/plain; charset="us-ascii"; name="cplusplus.diff"
Content-Disposition: inline; filename="cplusplus.diff"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43108/261519/114305

Index: src/stm/waitlist.c
===================================================================
--- src/stm/waitlist.c	(revision 18722)
+++ src/stm/waitlist.c	(working copy)
@@ -11,7 +11,7 @@
     txlog = Parrot_STM_tx_log_get(interp);
     if (!txlog->waitlist_data) {
         txlog->waitlist_data =
-            mem_sys_allocate_zeroed(sizeof (*txlog->waitlist_data));
+            mem_allocate_zeroed_typed(waitlist_thread_data);
         MUTEX_INIT(txlog->waitlist_data->signal_mutex);
         txlog->waitlist_data->signal_cond = &interp->thread_data->interp_cond;
 #if WAITLIST_DEBUG
@@ -36,13 +36,13 @@
     thr = get_thread(interp);
 
     if (!thr->entries) {
-        thr->entries = mem_sys_allocate_zeroed(sizeof (*thr->entries) * 4);
+        thr->entries = mem_allocate_zeroed_typed(waitlist_entry*);
         thr->entry_count = 4;
     }
 
     if (thr->used_entries >= thr->entry_count) {
         size_t i;
-        thr->entries = mem_sys_realloc(thr->entries,
+        thr->entries = (waitlist_entry**)mem_sys_realloc(thr->entries,
             sizeof (*thr->entries) * thr->entry_count * 2);
         for (i = thr->entry_count; i < thr->entry_count * 2; ++i) {
             thr->entries[i] = NULL;
@@ -52,7 +52,7 @@
 
     i = thr->used_entries++;
     if (!thr->entries[i])
-        thr->entries[i] = mem_sys_allocate_zeroed(sizeof (**thr->entries));
+        thr->entries[i] = mem_allocate_zeroed_typed(waitlist_entry);
 
     assert(thr->entries[i]->head == NULL);
     assert(thr->entries[i]->next == NULL);
@@ -67,7 +67,7 @@
     int successp = -1;
     assert(entry->next == NULL);
     do {
-        PARROT_ATOMIC_PTR_GET(entry->next, waitlist->first);
+        entry->next = (waitlist_entry *)waitlist->first.val;
         assert(successp != -1 || entry->next != entry);
         assert(entry->next != entry);
         PARROT_ATOMIC_PTR_CAS(successp, waitlist->first, entry->next, entry);
@@ -100,7 +100,7 @@
         return;
 
     LOCK(waitlist->remove_mutex);
-    PARROT_ATOMIC_PTR_GET(cur, waitlist->first);
+    cur = (waitlist_entry *)waitlist->first.val;
 
     /* if we became the first entry while we were acquiring the mutex */
     while (cur == what) {
@@ -110,7 +110,7 @@
             what->next = NULL;
             return;
         }
-        PARROT_ATOMIC_PTR_GET(cur, waitlist->first);
+        cur = (waitlist_entry *)waitlist->first.val;
     }
 
     if (!cur) {
@@ -178,7 +178,7 @@
     /* make sure we are not interrupted by a concurrent removal */
     LOCK(list->remove_mutex);
     do {
-        PARROT_ATOMIC_PTR_GET(cur, list->first);
+        cur = (waitlist_entry *)list->first.val;
         PARROT_ATOMIC_PTR_CAS(successp, list->first, cur, NULL);
     } while (!successp);
 
Index: src/stm/backend.c
===================================================================
--- src/stm/backend.c	(revision 18722)
+++ src/stm/backend.c	(working copy)
@@ -47,7 +47,7 @@
 static STM_tx_log *Parrot_STM_tx_log_alloc(Interp *interp, size_t size) {
     int i;
     STM_tx_log *log;
-    log = mem_sys_allocate_zeroed(size);
+    log = (STM_tx_log *)mem_sys_allocate_zeroed(size);
 
     interp->thread_data->stm_log = (void *) log;
 
@@ -62,9 +62,9 @@
     log->inner[0].first_read = log->inner[0].first_write = 0;
 
     log->writes =
-        mem_sys_allocate(sizeof (STM_write_record) * STM_START_RECORDS);
+        (STM_write_record*)mem_sys_allocate(sizeof (STM_write_record) * STM_START_RECORDS);
     log->writes_alloced = STM_START_RECORDS;
-    log->reads = mem_sys_allocate(sizeof (STM_read_record) * STM_START_RECORDS);
+    log->reads = (STM_read_record*)mem_sys_allocate(sizeof (STM_read_record) * STM_START_RECORDS);
     log->reads_alloced = STM_START_RECORDS;
 
     log->last_read = log->last_write = -1;
@@ -89,7 +89,7 @@
     if (!interp->thread_data || !interp->thread_data->stm_log)
         return;
 
-    log = interp->thread_data->stm_log;
+    log = (STM_tx_log *)interp->thread_data->stm_log;
     mem_sys_free(log->writes);
     mem_sys_free(log->reads);
     Parrot_STM_waitlist_destroy_thread(interp);
@@ -99,7 +99,7 @@
 
 
 STM_tx_log *Parrot_STM_tx_log_get(Interp *interp) {
-    STM_tx_log *log = interp->thread_data->stm_log; /* FIXME */
+    STM_tx_log *log = (STM_tx_log *)interp->thread_data->stm_log; /* FIXME */
     if (!log)
         log = Parrot_STM_tx_log_alloc(interp, sizeof (STM_tx_log));
 
@@ -122,7 +122,7 @@
     STM_TRACE("Parrot_STM_alloc");
 
     make_bufferlike_pool(interp, sizeof (handle_data));
-    handle = new_bufferlike_header(interp, sizeof (handle_data));
+    handle = (handle_data *)new_bufferlike_header(interp, sizeof (handle_data));
     PObj_external_SET(&handle->buf);
     PObj_is_shared_SET(&handle->buf);
     PARROT_ATOMIC_PTR_INIT(handle->owner_or_version);
@@ -174,7 +174,7 @@
     int i = ++log->last_write;
     if (i >= log->writes_alloced) {
         log->writes_alloced *= 2;
-        log->writes = mem_sys_realloc(log->writes,
+        log->writes = (STM_write_record *)mem_sys_realloc(log->writes,
             sizeof (*log->writes) * log->writes_alloced);
     }
     write = get_write(interp, log, i);
@@ -187,7 +187,7 @@
     int i = ++log->last_read;
     if (i >= log->reads_alloced) {
         log->reads_alloced *= 2;
-        log->reads = mem_sys_realloc(log->reads,
+        log->reads = (STM_read_record *)mem_sys_realloc(log->reads,
             sizeof (*log->reads) * log->reads_alloced);
     }
     read = get_read(interp, log, i);
@@ -878,7 +878,7 @@
          * FIXME XXX race if other log goes away
          */
         assert(n_interpreters > 1);
-        other = version;
+        other = (STM_tx_log_sub*)version;
         assert(other < &log->inner[0] || other > &log->inner[STM_MAX_TX_DEPTH]);
         curlog = get_sublog(log, log->depth);
         PARROT_ATOMIC_INT_GET(other_wait_len, other->wait_length);
@@ -1242,11 +1242,11 @@
 
     cursub = get_sublog(log, log->depth);
 
-    saved = mem_sys_allocate(sizeof (*saved));
+    saved = (STM_saved_tx_log *)mem_sys_allocate(sizeof (*saved));
     saved->num_reads = log->last_read - cursub->first_read + 1;
     saved->num_writes = log->last_write - cursub->first_write + 1;
-    saved->reads = mem_sys_allocate(sizeof (*saved->reads) * saved->num_reads);
-    saved->writes =
+    saved->reads = (STM_read_record*)mem_sys_allocate(sizeof (*saved->reads) * saved->num_reads);
+    saved->writes = (STM_write_record*)
         mem_sys_allocate(sizeof (*saved->writes) * saved->num_writes);
     memcpy(saved->reads, &log->reads[cursub->first_read],
         sizeof (*saved->reads) * saved->num_reads);
@@ -1279,7 +1279,7 @@
     if (saved_log_data == NULL)
         return;
 
-    saved = saved_log_data;
+    saved = (STM_saved_tx_log *)saved_log_data;
 
     log = Parrot_STM_tx_log_get(interp);
 
@@ -1320,7 +1320,7 @@
     if (saved_log_data == NULL)
         return;
 
-    saved = saved_log_data;
+    saved = (STM_saved_tx_log *)saved_log_data;
 
     for (i = 0; i < saved->num_reads; ++i)
         mark_read_record(interp, &saved->reads[i]);
@@ -1343,7 +1343,7 @@
     if (saved_log_data == NULL)
         return;
 
-    saved = saved_log_data;
+    saved = (STM_saved_tx_log *)saved_log_data;
     mem_sys_free(saved->reads);
     mem_sys_free(saved->writes);
     mem_sys_free(saved);
Index: src/pic.c
===================================================================
--- src/pic.c	(revision 18722)
+++ src/pic.c	(working copy)
@@ -632,7 +632,7 @@
 
 void
 parrot_pic_find_infix_v_pp(Interp *interp, PMC *left, PMC *right,
-                Parrot_MIC *mic, void **cur_opcode)
+                Parrot_MIC *mic, opcode_t *cur_opcode)
 {
     funcptr_t func;
     int is_pmc;
@@ -660,10 +660,10 @@
     func = get_mmd_dispatch_type(interp,
             mic->m.func_nr, left_type, right_type, &is_pmc);
     if (is_pmc) {
-        const size_t offs = cur_opcode - interp->code->prederef.code;
-        opcode_t* const real_op = interp->code->base.data + offs + 1;
-
-        /* set prederef code address to orig slot for now */
+        const size_t offs = cur_opcode - (opcode_t *)interp->code->prederef.code;
+        opcode_t* real_op = interp->code->base.data + offs + 1;
+        /* set prederef code address to orig slot for now
+         */
         ((void**)cur_opcode)[0] =
             parrot_pic_opcode(interp, PARROT_OP_infix_ic_p_p);
         /* restore 1st operand i.e. .MMD_func_nr */
Index: src/pmc.c
===================================================================
--- src/pmc.c	(revision 18722)
+++ src/pmc.c	(working copy)
@@ -399,10 +399,10 @@
 */
 
 INTVAL
-pmc_type(Interp* interp, const STRING *name)
+pmc_type(Interp* interp, STRING *name)
 {
     PMC * const classname_hash = interp->class_hash;
-    const PMC * const item = (PMC *)VTABLE_get_pointer_keyed_str(interp, classname_hash, name);
+    PMC * item = (PMC *)VTABLE_get_pointer_keyed_str(interp, classname_hash, name);
 
     /* nested namespace with same name */
     if (item->vtable->base_type == enum_class_NameSpace)
@@ -413,7 +413,7 @@
 }
 
 INTVAL
-pmc_type_p(Interp* interp, const PMC *name)
+pmc_type_p(Interp* interp, PMC *name)
 {
     PMC * const classname_hash = interp->class_hash;
     PMC *item = (PMC *)VTABLE_get_pointer_keyed(interp, classname_hash, name);
Index: src/encodings/utf8.c
===================================================================
--- src/encodings/utf8.c	(revision 18722)
+++ src/encodings/utf8.c	(working copy)
@@ -60,7 +60,7 @@
 */
 
 static UINTVAL
-utf8_characters(const void *ptr, UINTVAL byte_len)
+utf8_characters(const utf8_t *ptr, UINTVAL byte_len)
 {
     const utf8_t *u8ptr = ptr;
     const utf8_t *u8end = u8ptr + byte_len;
@@ -90,7 +90,7 @@
 */
 
 static UINTVAL
-utf8_decode(const void *ptr)
+utf8_decode(const utf8_t *ptr)
 {
     const utf8_t *u8ptr = ptr;
     UINTVAL c = *u8ptr;
@@ -265,7 +265,7 @@
     unsigned char *new_pos, *pos;
 
     pos = (unsigned char *)s->strstart + i->bytepos;
-    new_pos = utf8_encode(pos, c);
+    new_pos = (unsigned char *)utf8_encode(pos, c);
     i->bytepos += (new_pos - pos);
     /* XXX possible buffer overrun exception? */
     assert(i->bytepos <= PObj_buflen(s));
@@ -327,7 +327,7 @@
 
     if (in_place) {
         /* need intermediate memory */
-        p = mem_sys_allocate(src_len);
+        p = (unsigned char *)mem_sys_allocate(src_len);
     }
     else {
         Parrot_reallocate_string(interp, dest, src_len);
@@ -350,7 +350,7 @@
                     need = 16;
                 dest_len += need;
                 if (in_place)
-                    p = mem_sys_realloc(p, dest_len);
+                    p = (unsigned char *)mem_sys_realloc(p, dest_len);
                 else {
                     result->bufused = dest_pos;
                     Parrot_reallocate_string(interp, dest, dest_len);
@@ -359,7 +359,7 @@
             }
 
             pos = p + dest_pos;
-            new_pos = utf8_encode(pos, c);
+            new_pos = (unsigned char *)utf8_encode(pos, c);
             dest_pos += (new_pos - pos);
         }
         result->bufused = dest_pos;
@@ -375,7 +375,7 @@
 static UINTVAL
 get_codepoint(Interp *interp, const STRING *src, UINTVAL offset)
 {
-    const void * const start = utf8_skip_forward(src->strstart, offset);
+    const utf8_t * const start = (utf8_t *)utf8_skip_forward(src->strstart, offset);
     return utf8_decode(start);
 }
 
Index: src/pmc/lexinfo.pmc
===================================================================
--- src/pmc/lexinfo.pmc	(revision 18722)
+++ src/pmc/lexinfo.pmc	(working copy)
@@ -74,7 +74,7 @@
         assert(PObj_constant_TEST(SELF));
         PMC_pmc_val(SELF) = sub;
         parrot_new_pmc_hash_x(INTERP, SELF,
-            enum_hash_int,
+            (PARROT_DATA_TYPES)enum_hash_int,
             Hash_key_type_STRING,
             (hash_comp_fn)string_equal,     /* STRING compare */
             key_hash_STRING);    /*        hash */
Index: src/pmc/class.pmc
===================================================================
--- src/pmc/class.pmc	(revision 18722)
+++ src/pmc/class.pmc	(working copy)
@@ -929,7 +929,7 @@
 =cut
 
 */
-    PCCMETHOD void pmc_namespace(PMC *namespace :optional, int got_name :opt_flag) {
+    PCCMETHOD void pmc_namespace(PMC *_namespace :optional, int got_name :opt_flag) {
         Parrot_Class *_class = PARROT_CLASS(SELF);
         PMC *ret_namespace = _class->_namespace;
         PCCRETURN(PMC *ret_namespace);
Index: src/pmc/parrotobject.pmc
===================================================================
--- src/pmc/parrotobject.pmc	(revision 18722)
+++ src/pmc/parrotobject.pmc	(working copy)
@@ -521,7 +521,7 @@
 
     PMC* share_ro() {
         PMC *ret;
-        PMC *true;
+        PMC *_true;
         PMC **data;
         INTVAL i, n;
 
@@ -529,10 +529,10 @@
             return SELF;
 
         ret  = pt_shared_fixup(INTERP, SELF);
-        true = pmc_new(INTERP, enum_class_Integer);
+        _true = pmc_new(INTERP, enum_class_Integer);
 
-        VTABLE_set_integer_native(INTERP, true, 1);
-        VTABLE_setprop(INTERP, ret, CONST_STRING(interp, "_ro"), true);
+        VTABLE_set_integer_native(INTERP, _true, 1);
+        VTABLE_setprop(INTERP, ret, CONST_STRING(interp, "_ro"), _true);
         PObj_is_PMC_shared_SET(SELF);
 
         n    = PMC_int_val(ret);
Index: src/pmc/namespace.pmc
===================================================================
--- src/pmc/namespace.pmc	(revision 18722)
+++ src/pmc/namespace.pmc	(working copy)
@@ -53,7 +53,7 @@
  * hang off the PMC_data slot. */
 typedef struct Parrot_NSInfo {
     STRING *name; /* Name of this namespace part. */
-    PMC *class;   /* The class or role attached to this namespace. */
+    PMC *_class;   /* The class or role attached to this namespace. */
 } Parrot_NSInfo;
 
 /* Macro for easy access to the namespcae info. */
@@ -95,8 +95,8 @@
             pobject_lives(INTERP, (PObj*)PMC_pmc_val(SELF));
         if (nsinfo->name)
             pobject_lives(INTERP, (PObj*)nsinfo->name);
-        if (nsinfo->class)
-            pobject_lives(INTERP, (PObj*)nsinfo->class);
+        if (nsinfo->_class)
+            pobject_lives(INTERP, (PObj*)nsinfo->_class);
     }
 
 /*
@@ -740,7 +740,7 @@
     PCCMETHOD void get_class()
     {
         Parrot_NSInfo *nsinfo = PARROT_NSINFO(SELF);
-        PMC *ret_class = nsinfo->class;
+        PMC *ret_class = nsinfo->_class;
         PCCRETURN(PMC *ret_class);
     }
 
@@ -757,7 +757,7 @@
     PCCMETHOD void set_class(PMC *class_or_role)
     {
         Parrot_NSInfo *nsinfo = PARROT_NSINFO(SELF);
-        nsinfo->class = class_or_role;
+        nsinfo->_class = class_or_role;
     }
 
 }
Index: src/interpreter.c
===================================================================
--- src/interpreter.c	(revision 18722)
+++ src/interpreter.c	(working copy)
@@ -636,10 +636,10 @@
 {
 #ifdef HAVE_COMPUTED_GOTO
     opcode_t *code_start = (opcode_t *)interp->code->base.data;
-    void **pc_prederef;
+    opcode_t *pc_prederef;
     init_prederef(interp, PARROT_CGP_CORE);
-    pc_prederef = interp->code->prederef.code + (pc - code_start);
-    pc = (opcode_t*) cgp_core(pc_prederef, interp);
+    pc_prederef = (opcode_t*)interp->code->prederef.code + (pc - code_start);
+    pc = cgp_core(pc_prederef, interp);
     return pc;
 #else
     PIO_eprintf(interp,
@@ -664,10 +664,10 @@
 runops_switch(Interp *interp, opcode_t *pc)
 {
     opcode_t * const code_start = (opcode_t *)interp->code->base.data;
-    void **pc_prederef;
+    opcode_t *pc_prederef;
     init_prederef(interp, PARROT_SWITCH_CORE);
-    pc_prederef = interp->code->prederef.code + (pc - code_start);
-    pc = (opcode_t*) switch_core(pc_prederef, interp);
+    pc_prederef = (opcode_t*)interp->code->prederef.code + (pc - code_start);
+    pc = switch_core(pc_prederef, interp);
     return pc;
 }
 
Index: src/jit/i386/jit_emit.h
===================================================================
--- src/jit/i386/jit_emit.h	(revision 18722)
+++ src/jit/i386/jit_emit.h	(working copy)
@@ -2798,7 +2798,7 @@
     else
 #  endif
     {
-        call_func(jit_info, (void (*)(void))pmc_new_noinit);
+        call_func(jit_info, (void*)pmc_new_noinit);
     }
     /* result = eax push pmc */
     emitm_pushl_r(jit_info->native_ptr, emit_EAX);
Index: src/mmd.c
===================================================================
--- src/mmd.c	(revision 18722)
+++ src/mmd.c	(working copy)
@@ -632,7 +632,7 @@
     new_size = sizeof (funcptr_t) * table->x * new_y;
 
     if (table->mmd_funcs)
-        table->mmd_funcs = mem_sys_realloc(table->mmd_funcs, new_size);
+        table->mmd_funcs = (funcptr_t *)mem_sys_realloc(table->mmd_funcs, new_size);
     else
         table->mmd_funcs = (funcptr_t *)mem_sys_allocate(new_size);
 
Index: src/io/io_mmap.c
===================================================================
--- src/io/io_mmap.c	(revision 18722)
+++ src/io/io_mmap.c	(working copy)
@@ -25,9 +25,50 @@
 #include "parrot/parrot.h"
 #include "io_private.h"
 
-/* Defined at bottom */
-static const ParrotIOLayerAPI pio_mmap_layer_api;
+static ParrotIO *
+PIO_mmap_open(Interp *interp, ParrotIOLayer *layer,
+               const char *path, INTVAL flags);
+static size_t
+PIO_mmap_read(Interp *interp, ParrotIOLayer *layer, ParrotIO *io,
+              STRING **buf);
+static INTVAL
+PIO_mmap_close(Interp *interp, ParrotIOLayer *layer, ParrotIO *io);
 
+static const ParrotIOLayerAPI pio_mmap_layer_api = {
+    PIO_null_init,
+    PIO_base_new_layer,
+    PIO_base_delete_layer,
+    PIO_null_push_layer,
+    PIO_null_pop_layer,
+    PIO_mmap_open,
+    PIO_null_open2,
+    PIO_null_open3,
+    PIO_null_open_async,
+    PIO_null_fdopen,
+    PIO_mmap_close,
+    PIO_null_write,
+    PIO_null_write_async,
+    PIO_mmap_read,
+    PIO_null_read_async,
+    PIO_null_flush,
+    PIO_null_peek,
+    PIO_null_seek,
+    PIO_null_tell,
+    PIO_null_setbuf,
+    PIO_null_setlinebuf,
+    PIO_null_getcount,
+    PIO_null_fill,
+    PIO_null_eof,
+    0, /* no poll */
+    0, /* no socket */
+    0, /* no connect */
+    0, /* no send */
+    0, /* no recv */
+    0, /* no bind */
+    0, /* no listen */
+    0  /* no accept */
+};
+
 ParrotIOLayer pio_mmap_layer = {
     NULL,
     "mmap",
@@ -152,41 +193,6 @@
     return ret;
 }
 
-static const ParrotIOLayerAPI pio_mmap_layer_api = {
-    PIO_null_init,
-    PIO_base_new_layer,
-    PIO_base_delete_layer,
-    PIO_null_push_layer,
-    PIO_null_pop_layer,
-    PIO_mmap_open,
-    PIO_null_open2,
-    PIO_null_open3,
-    PIO_null_open_async,
-    PIO_null_fdopen,
-    PIO_mmap_close,
-    PIO_null_write,
-    PIO_null_write_async,
-    PIO_mmap_read,
-    PIO_null_read_async,
-    PIO_null_flush,
-    PIO_null_peek,
-    PIO_null_seek,
-    PIO_null_tell,
-    PIO_null_setbuf,
-    PIO_null_setlinebuf,
-    PIO_null_getcount,
-    PIO_null_fill,
-    PIO_null_eof,
-    0, /* no poll */
-    0, /* no socket */
-    0, /* no connect */
-    0, /* no send */
-    0, /* no recv */
-    0, /* no bind */
-    0, /* no listen */
-    0  /* no accept */
-};
-
 /*
 
 =back
Index: src/io/io_buf.c
===================================================================
--- src/io/io_buf.c	(revision 18722)
+++ src/io/io_buf.c	(working copy)
@@ -483,6 +483,7 @@
     ParrotIOLayer *l = layer;
     ParrotIOBuf *b;
     size_t len = 1;
+    size_t avail = 0;
 
     STRING * const s = PIO_make_io_string(interp, buf, 1);
 
@@ -495,7 +496,7 @@
 
     /* read Data from buffer */
     if (b->flags & PIO_BF_READBUF) {
-        const size_t avail = b->endb - b->next;
+        avail = b->endb - b->next;
 
         /* if we have data available, copy out the next byte */
         if (avail) {
Index: src/io/io_string.c
===================================================================
--- src/io/io_string.c	(revision 18722)
+++ src/io/io_string.c	(working copy)
@@ -25,9 +25,46 @@
 #include "parrot/parrot.h"
 #include "io_private.h"
 
-/* Defined at bottom */
-static const ParrotIOLayerAPI pio_string_layer_api;
+static size_t
+PIO_string_read(Interp *interp, ParrotIOLayer *l, ParrotIO *io, STRING **buf);
+static size_t
+PIO_string_write(Interp *interp, ParrotIOLayer *l, ParrotIO *io, STRING *s);
 
+static const ParrotIOLayerAPI pio_string_layer_api = {
+    PIO_null_init,
+    PIO_base_new_layer,
+    PIO_base_delete_layer,
+    PIO_null_push_layer,
+    PIO_null_pop_layer,
+    PIO_null_open,
+    PIO_null_open2,
+    PIO_null_open3,
+    PIO_null_open_async,
+    PIO_null_fdopen,
+    PIO_null_close,
+    PIO_string_write,
+    PIO_null_write_async,
+    PIO_string_read,
+    PIO_null_read_async,
+    PIO_null_flush,
+    PIO_null_peek,
+    PIO_null_seek,
+    PIO_null_tell,
+    PIO_null_setbuf,
+    PIO_null_setlinebuf,
+    PIO_null_getcount,
+    PIO_null_fill,
+    PIO_null_eof,
+    0, /* no poll */
+    0, /* no socket */
+    0, /* no connect */
+    0, /* no send */
+    0, /* no recv */
+    0, /* no bind */
+    0, /* no listen */
+    0  /* no accept */
+};
+
 ParrotIOLayer pio_string_layer = {
     NULL,
     "string",
@@ -72,41 +109,6 @@
     return string_length(interp, (STRING *)l->self);
 }
 
-static const ParrotIOLayerAPI pio_string_layer_api = {
-    PIO_null_init,
-    PIO_base_new_layer,
-    PIO_base_delete_layer,
-    PIO_null_push_layer,
-    PIO_null_pop_layer,
-    PIO_null_open,
-    PIO_null_open2,
-    PIO_null_open3,
-    PIO_null_open_async,
-    PIO_null_fdopen,
-    PIO_null_close,
-    PIO_string_write,
-    PIO_null_write_async,
-    PIO_string_read,
-    PIO_null_read_async,
-    PIO_null_flush,
-    PIO_null_peek,
-    PIO_null_seek,
-    PIO_null_tell,
-    PIO_null_setbuf,
-    PIO_null_setlinebuf,
-    PIO_null_getcount,
-    PIO_null_fill,
-    PIO_null_eof,
-    0, /* no poll */
-    0, /* no socket */
-    0, /* no connect */
-    0, /* no send */
-    0, /* no recv */
-    0, /* no bind */
-    0, /* no listen */
-    0  /* no accept */
-};
-
 /*
 
 =back
Index: src/io/io_utf8.c
===================================================================
--- src/io/io_utf8.c	(revision 18722)
+++ src/io/io_utf8.c	(working copy)
@@ -27,9 +27,48 @@
 #include "io_private.h"
 #include "../unicode.h"
 
-/* Defined at bottom */
-static const ParrotIOLayerAPI pio_utf8_layer_api;
+static size_t
+PIO_utf8_write(Interp *interp, ParrotIOLayer *l, ParrotIO *io, STRING *s);
 
+static size_t
+PIO_utf8_read(Interp *interp, ParrotIOLayer *layer, ParrotIO *io,
+              STRING **buf);
+
+static const ParrotIOLayerAPI pio_utf8_layer_api = {
+    PIO_null_init,
+    PIO_base_new_layer,
+    PIO_base_delete_layer,
+    PIO_null_push_layer,
+    PIO_null_pop_layer,
+    PIO_null_open,
+    PIO_null_open2,
+    PIO_null_open3,
+    PIO_null_open_async,
+    PIO_null_fdopen,
+    PIO_null_close,
+    PIO_utf8_write,
+    PIO_null_write_async,
+    PIO_utf8_read,
+    PIO_null_read_async,
+    PIO_null_flush,
+    PIO_null_peek,
+    PIO_null_seek,
+    PIO_null_tell,
+    PIO_null_setbuf,
+    PIO_null_setlinebuf,
+    PIO_null_getcount,
+    PIO_null_fill,
+    PIO_null_eof,
+    0, /* no poll */
+    0, /* no socket */
+    0, /* no connect */
+    0, /* no send */
+    0, /* no recv */
+    0, /* no bind */
+    0, /* no listen */
+    0  /* no accept */
+};
+
 ParrotIOLayer pio_utf8_layer = {
     NULL,
     "utf8",
@@ -101,41 +140,6 @@
     return PIO_write_down(interp, l->down, io, dest);
 }
 
-static const ParrotIOLayerAPI pio_utf8_layer_api = {
-    PIO_null_init,
-    PIO_base_new_layer,
-    PIO_base_delete_layer,
-    PIO_null_push_layer,
-    PIO_null_pop_layer,
-    PIO_null_open,
-    PIO_null_open2,
-    PIO_null_open3,
-    PIO_null_open_async,
-    PIO_null_fdopen,
-    PIO_null_close,
-    PIO_utf8_write,
-    PIO_null_write_async,
-    PIO_utf8_read,
-    PIO_null_read_async,
-    PIO_null_flush,
-    PIO_null_peek,
-    PIO_null_seek,
-    PIO_null_tell,
-    PIO_null_setbuf,
-    PIO_null_setlinebuf,
-    PIO_null_getcount,
-    PIO_null_fill,
-    PIO_null_eof,
-    0, /* no poll */
-    0, /* no socket */
-    0, /* no connect */
-    0, /* no send */
-    0, /* no recv */
-    0, /* no bind */
-    0, /* no listen */
-    0  /* no accept */
-};
-
 /*
 
 =back
Index: lib/Parrot/OpTrans/CSwitch.pm
===================================================================
--- lib/Parrot/OpTrans/CSwitch.pm	(revision 18722)
+++ lib/Parrot/OpTrans/CSwitch.pm	(working copy)
@@ -76,7 +76,7 @@
     return $pred_def . <<END;
 /* defines - $0 -> $type */
 #  define opcode_to_prederef(i, op)   (op ? \\
-     (void**) (op   - CONTEXT(i->ctx)->pred_offset) : NULL)
+     (opcode_t*) (op   - CONTEXT(i->ctx)->pred_offset) : (opcode_t*)NULL)
 /*
  * if we are using CHECK_EVENTS elsewhere this macro should (again)
  * be in includes/parrot/event.h
@@ -87,7 +87,7 @@
 #undef  CHECK_EVENTS
 #define CHECK_EVENTS(i, n)   \\
         interp->task_queue->head ?  \\
-                Parrot_do_check_events(i, n) : n
+                (opcode_t*)Parrot_do_check_events(i, n) : n
 END
 }
 
@@ -153,10 +153,15 @@
     return <<END_C;
 /* run_core_func_start - $0 -> $type */
 #if defined(__GNUC__) && defined(I386) && defined(PARROT_SWITCH_REGS)
+<<<<<<< .mine
+    register opcode_t *   cur_opcode __asm__ ("esi") = cur_op;
+    register char *   _reg_base   __asm__ ("edi");
+=======
     register void **   cur_opcode __asm__ ("esi") = cur_op;
     register char *   _reg_base   __asm__ ("edi");
+>>>>>>> .r18714
 #else
-    void ** cur_opcode = cur_op;
+    opcode_t * cur_opcode = cur_op;
     char * _reg_base;
 #endif
 
@@ -164,7 +169,7 @@
     _reg_base = (char*)interp->ctx.bp.regs_i;
     do {
 SWITCH_AGAIN:
-    cur_opcode = CHECK_EVENTS(interp, *cur_opcode);
+    cur_opcode = CHECK_EVENTS(interp, cur_opcode);
     if (!cur_opcode)
         break;
     switch (*(opcode_t*)cur_opcode) {
Index: lib/Parrot/OpTrans/CGP.pm
===================================================================
--- lib/Parrot/OpTrans/CGP.pm	(revision 18722)
+++ lib/Parrot/OpTrans/CGP.pm	(working copy)
@@ -68,7 +68,7 @@
     return $pred_def . <<END;
 /* defines - $0 -> $type */
 #  define opcode_to_prederef(i, op)   \\
-     (void**) (op   - CONTEXT(i->ctx)->pred_offset)
+     (opcode_t*) (op   - (opcode_t*)CONTEXT(i->ctx)->pred_offset)
 END
 }
 
@@ -132,10 +132,10 @@
      * (gdb) disas l_ops_addr[1191] l_ops_addr[1192]
      */
 #if defined(__GNUC__) && defined(I386) && defined(PARROT_CGP_REGS)
-    register void **   cur_opcode __asm__ ("esi") = cur_op;
+    register opcode_t *   cur_opcode __asm__ ("esi") = cur_op;
     register char *   _reg_base   __asm__ ("edi");
 #else
-    void **cur_opcode = cur_op;
+    opcode_t *cur_opcode = cur_op;
     char * _reg_base;
 #endif
 
Index: lib/Parrot/OpTrans/CGoto.pm
===================================================================
--- lib/Parrot/OpTrans/CGoto.pm	(revision 18722)
+++ lib/Parrot/OpTrans/CGoto.pm	(working copy)
@@ -64,7 +64,7 @@
 sub defines {
     return <<END;
 #undef CONST
-#define REL_PC     ((size_t)(cur_opcode - interp->code->base.data))
+#define REL_PC     ((size_t)(cur_opcode - (opcode_t*)interp->code->base.data))
 #define CUR_OPCODE cur_opcode
 #define IREG(i) REG_INT(cur_opcode[i])
 #define NREG(i) REG_NUM(cur_opcode[i])
Index: lib/Parrot/OpTrans/CPrederef.pm
===================================================================
--- lib/Parrot/OpTrans/CPrederef.pm	(revision 18722)
+++ lib/Parrot/OpTrans/CPrederef.pm	(working copy)
@@ -36,7 +36,7 @@
     my $type = __PACKAGE__;
     return <<END;
 /* defines - $0 -> $type */
-#define REL_PC ((size_t)(cur_opcode - interp->code->prederef.code))
+#define REL_PC ((size_t)(cur_opcode - (opcode_t*)interp->code->prederef.code))
 #define CUR_OPCODE \\
     ((opcode_t*)cur_opcode + CONTEXT(interp->ctx)->pred_offset)
 #define OP_AS_OFFS(o) (_reg_base + ((opcode_t*)cur_opcode)[o])
@@ -76,7 +76,7 @@
     my $prefix = $self->core_prefix;
     return <<END;
 /* run_core_func_decl - $0 -> $type */
-void ** $prefix$core(void **cur_op, Parrot_Interp interp)
+opcode_t * $prefix$core(opcode_t *cur_op, Parrot_Interp interp)
 END
 }
 
Index: lib/Parrot/OpTrans/C.pm
===================================================================
--- lib/Parrot/OpTrans/C.pm	(revision 18722)
+++ lib/Parrot/OpTrans/C.pm	(working copy)
@@ -52,7 +52,7 @@
 sub defines {
     return <<END;
 #undef CONST
-#define REL_PC     ((size_t)(cur_opcode - interp->code->base.data))
+#define REL_PC     ((size_t)(cur_opcode - (opcode_t *)interp->code->base.data))
 #define CUR_OPCODE cur_opcode
 #define IREG(i) REG_INT(cur_opcode[i])
 #define NREG(i) REG_NUM(cur_opcode[i])
Index: lib/Parrot/Ops2c/Utils.pm
===================================================================
--- lib/Parrot/Ops2c/Utils.pm	(revision 18722)
+++ lib/Parrot/Ops2c/Utils.pm	(working copy)
@@ -302,6 +302,10 @@
 
     $self->_print_run_core_func_decl_header($HEADER);
 
+    $self->_op_func_table($HEADER);
+
+    $self->_print_op_lib_descriptor($HEADER);
+
     $self->_print_guard_suffix($HEADER);
 
     _print_coda($HEADER);
@@ -460,7 +464,6 @@
 #include "$self->{include}"
 
 $self->{defines}
-static op_lib_t $self->{bs}op_lib;
 
 END_C
 
@@ -583,7 +586,7 @@
         print $fh <<END_C;
 #ifdef __GNUC__
 # ifdef I386
-    else if (cur_opcode == (void **) 1)
+    else if (cur_opcode == (opcode_t*) 1)
     __asm__ ("jmp *4(%ebp)");  /* jump to ret addr, used by JIT */
 # endif
 #endif
@@ -663,15 +666,11 @@
 
     $SOURCE = $self->_reset_line_number($SOURCE);
 
-    $self->_op_func_table($SOURCE);
-
     $self->{names} = {};
     $self->_op_info_table($SOURCE);
 
     $self->_op_lookup($SOURCE);
 
-    $self->_print_op_lib_descriptor($SOURCE);
-
     $self->_generate_init_func($SOURCE);
 
     $self->_print_dynamic_lib_load($SOURCE);
Index: include/parrot/pic.h
===================================================================
--- include/parrot/pic.h	(revision 18722)
+++ include/parrot/pic.h	(working copy)
@@ -74,7 +74,7 @@
 Parrot_PIC* parrot_PIC_alloc_pic(Interp*);
 
 void parrot_pic_find_infix_v_pp(Interp *, PMC *left, PMC *right,
-                Parrot_MIC *mic, void **cur_opcode);
+                Parrot_MIC *mic, opcode_t *cur_opcode);
 void * parrot_pic_opcode(Interp *, INTVAL op);
 
 typedef int (*arg_pass_f)(Interp *, PMC *sig,
Index: compilers/imcc/imcc.y
===================================================================
--- compilers/imcc/imcc.y	(revision 18722)
+++ compilers/imcc/imcc.y	(working copy)
@@ -108,7 +108,7 @@
     if (ascii) {
         /* strip delimiters */
         len = strlen(constant);
-        name = mem_sys_allocate(len);
+        name = (char *)mem_sys_allocate(len);
         constant[len - 1] = '\0';
         strcpy(name, constant + 1);
         free(constant);
@@ -182,7 +182,7 @@
     Instruction *i;
     i =  iLABEL(interp, unit, r);
     r->type = (r->type & VT_ENCODED) ? VT_PCC_SUB|VT_ENCODED : VT_PCC_SUB;
-    r->pcc_sub = calloc(1, sizeof(struct pcc_sub_t));
+    r->pcc_sub = (pcc_sub_t*)calloc(1, sizeof(struct pcc_sub_t));
     IMCC_INFO(interp)->cur_call = r;
     i->line = IMCC_INFO(interp)->line;
     add_namespace(interp, unit);
@@ -1048,7 +1048,7 @@
 id_list_id :
      IDENTIFIER UNIQUE_REG
      {
-         IdList* l = malloc(sizeof(IdList));
+         IdList* l = (IdList*)malloc(sizeof(IdList));
          l->id = $1;
          l->unique_reg = 1;
          $$ = l;
@@ -1056,7 +1056,7 @@
 
    | IDENTIFIER
      {
-         IdList* l = malloc(sizeof(IdList));
+         IdList* l = (IdList*)malloc(sizeof(IdList));
          l->id = $1;
          l->unique_reg = 0;
          $$ = l;
Index: compilers/imcc/parser.h
===================================================================
--- compilers/imcc/parser.h	(revision 18722)
+++ compilers/imcc/parser.h	(working copy)
@@ -25,7 +25,7 @@
 EXTERN int is_def;
 
 /* bison */
-PARROT_API EXTERN int yydebug;
+/* PARROT_API EXTERN int yydebug; */
 
 #define KEY_BIT(argnum) (1 << (argnum))
 
Index: compilers/imcc/instructions.c
===================================================================
--- compilers/imcc/instructions.c	(revision 18722)
+++ compilers/imcc/instructions.c	(working copy)
@@ -63,7 +63,7 @@
     reg_space = 0;
     if (n > 1)
         reg_space = sizeof (SymReg *) * (n - 1);
-    ins = calloc(sizeof (Instruction) + reg_space, 1);
+    ins = (Instruction*)calloc(sizeof (Instruction) + reg_space, 1);
     if (ins == NULL) {
         fprintf(stderr, "Memory error at mk_instruction\n");
         abort();
Index: compilers/imcc/symreg.c
===================================================================
--- compilers/imcc/symreg.c	(revision 18722)
+++ compilers/imcc/symreg.c	(working copy)
@@ -80,7 +80,7 @@
         free(name);
         return r;
     }
-    r = calloc(1, sizeof (SymReg));
+    r = (SymReg *)calloc(1, sizeof (SymReg));
     if (r==NULL) {
         fprintf(stderr, "Memory error at mk_symreg\n");
         abort();
@@ -145,7 +145,7 @@
     IMC_Unit *unit = IMCC_INFO(interp)->last_unit;
     SymReg *r = _mk_symreg(&unit->hash, name, proto);
     r->type = VT_PCC_SUB;
-    r->pcc_sub = calloc(1, sizeof (struct pcc_sub_t));
+    r->pcc_sub = (pcc_sub_t*)calloc(1, sizeof (struct pcc_sub_t));
     return r;
 }
 
@@ -182,9 +182,9 @@
 add_pcc_arg(SymReg *r, SymReg * arg)
 {
     int n = r->pcc_sub->nargs;
-    r->pcc_sub->args = realloc(r->pcc_sub->args, (n + 1) * sizeof (SymReg *));
+    r->pcc_sub->args = (SymReg**)realloc(r->pcc_sub->args, (n + 1) * sizeof (SymReg *));
     r->pcc_sub->args[n] = arg;
-    r->pcc_sub->arg_flags = realloc(r->pcc_sub->arg_flags, (n+1) * sizeof (int));
+    r->pcc_sub->arg_flags = (int*)realloc(r->pcc_sub->arg_flags, (n+1) * sizeof (int));
     r->pcc_sub->arg_flags[n] = arg->type;
     arg->type &= ~(VT_FLAT|VT_OPTIONAL|VT_OPT_FLAG|VT_NAMED);
     r->pcc_sub->nargs++;
@@ -200,12 +200,12 @@
 add_pcc_result(SymReg *r, SymReg * arg)
 {
     int n = r->pcc_sub->nret;
-    r->pcc_sub->ret = realloc(r->pcc_sub->ret, (n + 1) * sizeof (SymReg *));
+    r->pcc_sub->ret = (SymReg **)realloc(r->pcc_sub->ret, (n + 1) * sizeof (SymReg *));
     r->pcc_sub->ret[n] = arg;
     /* we can't keep the flags in the SymReg as the SymReg
      * maybe used with different flags for different calls
      */
-    r->pcc_sub->ret_flags = realloc(r->pcc_sub->ret_flags, (n+1) * sizeof (int));
+    r->pcc_sub->ret_flags = (int*)realloc(r->pcc_sub->ret_flags, (n+1) * sizeof (int));
     r->pcc_sub->ret_flags[n] = arg->type;
     arg->type &= ~(VT_FLAT|VT_OPTIONAL|VT_OPT_FLAG|VT_NAMED);
     r->pcc_sub->nret++;
@@ -215,7 +215,7 @@
 add_pcc_multi(SymReg *r, SymReg * arg)
 {
     int n = r->pcc_sub->nmulti;
-    r->pcc_sub->multi = realloc(r->pcc_sub->multi, (n + 1) * sizeof (SymReg *));
+    r->pcc_sub->multi = (SymReg **)realloc(r->pcc_sub->multi, (n + 1) * sizeof (SymReg *));
     r->pcc_sub->multi[n] = arg;
     r->pcc_sub->nmulti++;
 }
@@ -280,7 +280,7 @@
     Identifier * ident;
     SymReg * r;
     if (_namespace) {
-        ident = calloc(1, sizeof (struct ident_t));
+        ident = (Identifier *)calloc(1, sizeof (struct ident_t));
         ident->name = fullname;
         ident->next = _namespace->idents;
         _namespace->idents = ident;
@@ -413,7 +413,7 @@
         return name;
     /* TODO keyed syntax */
     len = strlen(name) + l  + 4;
-    ns_name = mem_sys_allocate(len);
+    ns_name = (char*)mem_sys_allocate(len);
     strcpy(ns_name, IMCC_INFO(interp)->cur_namespace->name);
     *ns_name = '_';
     ns_name[l - 1] = '\0';
@@ -437,7 +437,7 @@
     SymReg * r;
     if (uniq == U_add_all) {
 
-        r = calloc(1, sizeof (SymReg));
+        r = (SymReg *)calloc(1, sizeof (SymReg));
         r->type = VTADDRESS;
         r->name = name;
         _store_symreg(hsh,r);
@@ -598,7 +598,7 @@
     }
     if (any_slice && !(keys[0]->type & VT_SLICE_BITS))
         keys[0]->type |= (VT_START_SLICE|VT_END_SLICE);
-    key_str = malloc(len);
+    key_str = (char*)malloc(len);
     *key_str = 0;
     /* first look, if we already have this exact key chain */
     for (i = 0; i < nargs; i++) {
@@ -612,7 +612,7 @@
         return keychain;
     }
     /* no, need a new one */
-    keychain = mem_sys_allocate_zeroed(sizeof (SymReg));
+    keychain = mem_allocate_zeroed_typed(SymReg);
     keychain->type = VTCONST;
     ++keychain->use_count;
     key = keychain;
@@ -668,7 +668,7 @@
 void
 create_symhash(SymHash *hash)
 {
-   hash->data = mem_sys_allocate_zeroed(16 * sizeof (SymReg*));
+   hash->data = (SymReg**)mem_sys_allocate_zeroed(16 * sizeof (SymReg*));
    hash->size = 16;
    hash->entries = 0;
 }
@@ -683,9 +683,9 @@
     SymReg ** next_r;
     int n_next, j, k;
 
-    nh.data = mem_sys_allocate_zeroed(new_size * sizeof (SymReg*));
+    nh.data = (SymReg**)mem_sys_allocate_zeroed(new_size * sizeof (SymReg*));
     n_next = 16;
-    next_r =  mem_sys_allocate_zeroed(n_next   * sizeof (SymReg*));
+    next_r =  (SymReg**)mem_sys_allocate_zeroed(n_next   * sizeof (SymReg*));
     for (i = 0; i < hsh->size; i++) {
         j = 0;
         for (r = hsh->data[i]; r; r = next) {
@@ -696,7 +696,7 @@
              */
             if (j >= n_next) {
                 n_next <<= 1;
-                next_r = mem_sys_realloc(next_r, n_next * sizeof (SymReg*));
+                next_r = (SymReg**)mem_sys_realloc(next_r, n_next * sizeof (SymReg*));
             }
             r->next = NULL;
             next_r[j++] = r;
Index: compilers/imcc/imc.c
===================================================================
--- compilers/imcc/imc.c	(revision 18722)
+++ compilers/imcc/imc.c	(working copy)
@@ -79,7 +79,7 @@
 static IMC_Unit *
 imc_new_unit(IMC_Unit_Type t)
 {
-   IMC_Unit * unit = calloc(1, sizeof (IMC_Unit));
+   IMC_Unit * unit = (IMC_Unit *)calloc(1, sizeof (IMC_Unit));
    create_symhash(&unit->hash);
    unit->type = t;
    return unit;
Index: compilers/imcc/main.c
===================================================================
--- compilers/imcc/main.c	(revision 18722)
+++ compilers/imcc/main.c	(working copy)
@@ -198,6 +198,7 @@
 {
     struct longopt_opt_info opt = LONGOPT_OPT_INFO_INIT;
     int   status;
+    extern int yydebug;
     if (*argc == 1) {
         usage(stderr);
         exit(1);
@@ -709,7 +710,7 @@
         IMCC_INFO(interp)->state->pasm_file = pasm_file;
         IMCC_TRY(IMCC_INFO(interp)->jump_buf,
                  IMCC_INFO(interp)->error_code) {
-            if (yyparse(yyscanner, (void *) interp))
+            if (yyparse(yyscanner, interp))
                 exit(1);
 
             imc_compile_all_units(interp);
Index: compilers/imcc/imcc.l
===================================================================
--- compilers/imcc/imcc.l	(revision 18722)
+++ compilers/imcc/imcc.l	(working copy)
@@ -147,7 +147,7 @@
         /* Newline in the heredoc. Realloc and cat on. */
         IMCC_INFO(interp)->line++;
         IMCC_INFO(interp)->heredoc_content =
-            mem_sys_realloc(IMCC_INFO(interp)->heredoc_content,
+            (char*)mem_sys_realloc(IMCC_INFO(interp)->heredoc_content,
                             strlen(IMCC_INFO(interp)->heredoc_content) +
                             strlen(yytext) + 2);
         strcpy(IMCC_INFO(interp)->heredoc_content +
@@ -174,7 +174,7 @@
         {
             /* Part of the heredoc. Realloc and cat the line on. */
             IMCC_INFO(interp)->heredoc_content =
-                mem_sys_realloc(IMCC_INFO(interp)->heredoc_content,
+                (char*)mem_sys_realloc(IMCC_INFO(interp)->heredoc_content,
                                 strlen(IMCC_INFO(interp)->heredoc_content) +
                                 strlen(yytext) + 2);
             strcpy(IMCC_INFO(interp)->heredoc_content +
@@ -404,7 +404,7 @@
 
             if (!IMCC_INFO(interp)->frames || !IMCC_INFO(interp)->frames->label)
                 IMCC_fataly(interp, E_SyntaxError, "missing space?");
-        label = mem_sys_allocate(yyleng+10);
+        label = (char*)mem_sys_allocate(yyleng+10);
         sprintf(label, "%s%d", yytext, IMCC_INFO(interp)->frames->label);
 
         valp->s = label;
@@ -423,7 +423,7 @@
             if (!IMCC_INFO(interp)->frames || !IMCC_INFO(interp)->frames->label)
                 IMCC_fataly(interp, E_SyntaxError, "missing space?");
 
-            label = mem_sys_allocate(yyleng+10);
+            label = (char*)mem_sys_allocate(yyleng+10);
             sprintf(label, "%s%d", yytext, IMCC_INFO(interp)->frames->label);
 
             valp->s = label;
@@ -444,7 +444,7 @@
         int type = pmc_type(interp, string_from_cstring(interp, macro_name, 0));
 
         if (type > 0) {
-            char *buf = malloc(16);
+            char *buf = (char*)malloc(16);
             sprintf(buf, "%d", type);
             valp->s = buf;
             free(macro_name);
@@ -515,7 +515,7 @@
         frame->s.next = (struct parser_state_t*) IMCC_INFO(interp)->frames;
         IMCC_INFO(interp)->frames = frame;
         /* Start slurping up the heredoc. */
-        IMCC_INFO(interp)->heredoc_content = mem_sys_allocate(2);
+        IMCC_INFO(interp)->heredoc_content = (char*)mem_sys_allocate(2);
         IMCC_INFO(interp)->heredoc_content[0] = yytext[2];        /* preserve delim */
         IMCC_INFO(interp)->heredoc_content[1] = 0;                /* eos */
         yy_push_state(heredoc1, yyscanner);
@@ -572,7 +572,7 @@
     if (valp) {
         YYCHOP();
 
-        label = mem_sys_allocate(strlen(IMCC_INFO(interp)->cur_macro_name) + yyleng + 15);
+        label = (char*)mem_sys_allocate(strlen(IMCC_INFO(interp)->cur_macro_name) + yyleng + 15);
         sprintf(label, "local__%s__%s__$:", IMCC_INFO(interp)->cur_macro_name, yytext+1);
 
         valp->s = label;
@@ -585,7 +585,7 @@
     char *label;
 
     if (valp) {
-        label = mem_sys_allocate(strlen(IMCC_INFO(interp)->cur_macro_name) + yyleng + 15);
+        label = (char*)mem_sys_allocate(strlen(IMCC_INFO(interp)->cur_macro_name) + yyleng + 15);
         sprintf(label, "local__%s__%s__$", IMCC_INFO(interp)->cur_macro_name, yytext+2);
 
         valp->s = label;
Index: compilers/imcc/imcparser.c
===================================================================
--- compilers/imcc/imcparser.c	(revision 18722)
+++ compilers/imcc/imcparser.c	(working copy)
@@ -419,7 +419,7 @@
     if (ascii) {
         /* strip delimiters */
         len = strlen(constant);
-        name = mem_sys_allocate(len);
+        name = (char *)mem_sys_allocate(len);
         constant[len - 1] = '\0';
         strcpy(name, constant + 1);
         free(constant);
@@ -493,7 +493,7 @@
     Instruction *i;
     i =  iLABEL(interp, unit, r);
     r->type = (r->type & VT_ENCODED) ? VT_PCC_SUB|VT_ENCODED : VT_PCC_SUB;
-    r->pcc_sub = calloc(1, sizeof(struct pcc_sub_t));
+    r->pcc_sub = (pcc_sub_t*)calloc(1, sizeof(struct pcc_sub_t));
     IMCC_INFO(interp)->cur_call = r;
     i->line = IMCC_INFO(interp)->line;
     add_namespace(interp, unit);
@@ -3482,7 +3482,7 @@
   case 166:
 #line 1056 "compilers/imcc/imcc.y"
     {
-         IdList* l = malloc(sizeof(IdList));
+         IdList* l = (IdList*)malloc(sizeof(IdList));
          l->id = (yyvsp[(1) - (2)].s);
          l->unique_reg = 1;
          (yyval.idlist) = l;
@@ -3492,7 +3492,7 @@
   case 167:
 #line 1064 "compilers/imcc/imcc.y"
     {
-         IdList* l = malloc(sizeof(IdList));
+         IdList* l = (IdList*)malloc(sizeof(IdList));
          l->id = (yyvsp[(1) - (1)].s);
          l->unique_reg = 0;
          (yyval.idlist) = l;

------------=_1180741878-1668-41--

              

Kec<Y 
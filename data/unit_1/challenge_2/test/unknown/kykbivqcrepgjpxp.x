From perl6-all-return-82468-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 30 10:08:31 2007
Return-Path: <perl6-all-return-82468-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5UE8UL9007823
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 10:08:30 -0400
Received: (qmail 23925 invoked by uid 514); 30 Jun 2007 14:08:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23919 invoked from network); 30 Jun 2007 14:08:24 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DKIM_SIGNED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of bgeron@gmail.com designates 64.233.162.230 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:x-enigmail-version:openpgp:content-type;
        b=pDLLjpE+/rzrreUjL+1qx1/8PdTAPdl8ri5CYLIgOJy3kw5mlPA5XGXqy0ECD6KHhrQN7BYBew1ikzpX0sbT7bafOsaaDETogQIteg8LvbZ+dUqFgEavy8oMz3aJGq5sW1wBuD/Ne3AwimfgoIV+o1sAxVvHFytA7B4kXeJ/NQo=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:x-enigmail-version:openpgp:content-type;
        b=ek1mTXmCV+Kqeh8cyRm/YD+fSR7VKyzjMzWrbxSnaRmsWqs+GUNRh+upVz1TY6ohPeDcHBt/lQclyMX1kYMOLmzpGg+UVaQ2qgOovq424n9zKZbGKjYh9kAag0km7zWh0xeJ/wMftft+seBAneVnjm36K/+pQTIL02Gp12zgHnc=
Message-ID: <468663B8.2090005@gmail.com>
Date: Sat, 30 Jun 2007 16:07:52 +0200
From: Bram Geron <bgeron@gmail.com>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: pancake <pancake@youterm.com>
CC: perl6-internals@perl.org
Subject: Re: parrot question and stacked patches
References: <20070622010334.fba9c58a.pancake@youterm.com>
In-Reply-To: <20070622010334.fba9c58a.pancake@youterm.com>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=E7B9E65E
Content-Type: multipart/mixed;
 boundary="------------000507060500020002050702"
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

--------------000507060500020002050702
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

pancake wrote:
> (...)
> Ok, after the presentations.. I have some problems for writing the patches
> because more than one bug report matches the same source file, and i have to
> wait everytime for commits before doing anything more. I understand that this
> is my problem and I should be pacient, but on pdb there are a lot of broken
> things that are difficult to split into multiple patches.

I had the same problem, and I currently use the git version control
system with the git-svn wrapper to read from Parrot's repos. I can
commit without pushing it to the Parrot servers. I can also branch
easily, for instance I have a branch where all kinds of changes are in
in no particular order, and when I want to spit out a patch, I branch
from a parent and apply the commits that I want to have in that patch.
Then git diff <begin> <end> > offs.patch and I can delete the branch.
It's way better than when I used subversion, I think I had three
checkouts because I had to test patches. Now one suffices.

I hear svk (based on, and compatible with svn) does a pretty good
decentralized job too. The Parrot web site mentions svk, so you can
probably get help from more people if you want.

> (..)
> 
> My question is. How can I translate a opcode_t into a file:line message?
> 
> Thanks! 
> 
>   --pancake
> 

There's code to get file and line in src/sub.c. Attached patch puts the
code in a function Parrot_offs_get_info. I think you can call it like this:

  char *file;
  int line;

  if (Parrot_offs_get_info(interp, offs, interp->code, &file, &line) {
      <here, file and line are set correctly.>
      string_cstring_free(file);
  }
  else {
      <we get here if we can't retrieve file:line.>
  }

I think it would be good if the patch were applied. 0:)

Thanks,
-- 
Bram Geron | GPG 0xE7B9E65E





--------------000507060500020002050702
Content-Type: text/x-patch;
 name="offs.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="offs.patch"

--- a/src/sub.c
+++ b/src/sub.c
@@ -297,6 +297,49 @@ Parrot_full_sub_name(Interp *interp, PMC* sub)
     return NULL;
 }
 
+/*
+
+=item C<Parrot_offs_get_info>
+
+Get file and line number of bytecode offset. On success, true is returned,
+*file is set to a char * holding the file name, and *line is set to an int
+holding the line number. *file is a newly allocated string, you are supposed to
+free it yourself with string_cstring_free(*file).
+
+=cut
+
+*/
+
+int
+Parrot_offs_get_info (Interp *interp, int offs, PackFile_ByteCode *seg, char **file, int *line)
+{
+    size_t i;                      /* index in debug segment */
+    size_t n; 
+    opcode_t *pc = seg->base.data; /* starting pc of this sub */
+    PackFile_Debug * const debug = seg->debugs;
+
+    if (!debug)
+        return 0;
+    for (i = n = 0; n < seg->base.size; i++) {
+        op_info_t * const op_info = &interp->op_info_table[*pc];
+        opcode_t var_args = 0;
+
+        if (i >= debug->base.size)
+            return 0;
+        if (n >= offs) {
+            /* set source line and file */
+            *line = debug->base.data[i];
+            *file = string_to_cstring(interp,
+                    Parrot_debug_pc_to_filename(interp, debug, i));
+            break;
+        }
+        ADD_OP_VAR_PART(interp, seg, pc, var_args);
+        n += op_info->op_count + var_args;
+        pc += op_info->op_count + var_args;
+    }
+    return 1;
+}
+
 int
 Parrot_Context_get_info(Interp *interp, parrot_context_t *ctx,
                     Parrot_Context_info *info)
@@ -349,30 +392,8 @@ Parrot_Context_get_info(Interp *interp, parrot_context_t *ctx,
 
     /* determine the current source file/line */
     if (ctx->current_pc) {
-        const size_t offs = info->pc;
-        size_t i, n;
-        opcode_t *pc = sub->seg->base.data;
-        PackFile_Debug * const debug = sub->seg->debugs;
-
-        if (!debug)
+        if (0 == Parrot_offs_get_info(interp, info->pc, sub->seg, &info->file, &info->line))
             return 0;
-        for (i = n = 0; n < sub->seg->base.size; i++) {
-            op_info_t * const op_info = &interp->op_info_table[*pc];
-            opcode_t var_args = 0;
-
-            if (i >= debug->base.size)
-                return 0;
-            if (n >= offs) {
-                /* set source line and file */
-                info->line = debug->base.data[i];
-                info->file = string_to_cstring(interp,
-                Parrot_debug_pc_to_filename(interp, debug, i));
-                break;
-            }
-            ADD_OP_VAR_PART(interp, sub->seg, pc, var_args);
-            n += op_info->op_count + var_args;
-            pc += op_info->op_count + var_args;
-        }
     }
     return 1;
 }


--------------000507060500020002050702--

                

A	ewr13
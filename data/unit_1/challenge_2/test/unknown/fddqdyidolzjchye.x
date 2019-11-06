From perl6-all-return-82433-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 17:44:54 2007
Return-Path: <perl6-all-return-82433-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SLirL9016004
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 17:44:53 -0400
Received: (qmail 30706 invoked by uid 514); 28 Jun 2007 21:44:48 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 30701 invoked from network); 28 Jun 2007 21:44:48 -0000
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
From: James Keenan (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 28 Jun 2007 14:43:58 -0700
Subject: [perl #43420] [BUG] No rule to make target `src/path.str' 
In-Reply-To: <parrotbug_0.6.1_5138_1183066905@li11-226>
References: <RT-Ticket-43420@perl.org> <parrotbug_0.6.1_5138_1183066905@li11-226>
Message-ID: <rt-3.6.HEAD-1276-1183067038-337.43420-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43420
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070628214358.DF5372AFE2@x3.develooper.com>
Resent-Date: Thu, 28 Jun 2007 14:43:58 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43420]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43420 >


---
osname= linux
osvers= 2.6.15
arch=   i386-linux-thread-multi
cc=     cc
---
Flags:
    category=core
    severity=critical
    ack=no
---
Compiling with:
xx.c
cc -I./include -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -g -W -Wall -Wstrict-prototypes -Wmissing-prototypes -Winline -Wshadow -Wpointer-arith -Wcast-qual -Wwrite-strings -Waggregate-return -Winline -Wno-unused -Wsign-compare -falign-functions=16 -Wformat-nonliteral -Wformat-security -Wpacked -Wdisabled-optimization -mno-accumulate-outgoing-args -Wno-shadow -DHAS_JIT -DI386 -DHAVE_COMPUTED_GOTO -fpic -fPIC -I. -o xx.o -c xx.c
/usr/local/bin/perl tools/build/ops2pm.pl src/ops/core.ops src/ops/bit.ops src/ops/cmp.ops src/ops/debug.ops src/ops/experimental.ops src/ops/io.ops src/ops/math.ops src/ops/object.ops src/ops/pic.ops src/ops/pmc.ops src/ops/set.ops src/ops/stack.ops src/ops/stm.ops src/ops/string.ops src/ops/sys.ops src/ops/var.ops 
print_newline             1209       experimental, not in ops.num
print_newline_p           1210       experimental, not in ops.num
gcd_i_n_n                 1211       experimental, not in ops.num
gcd_i_nc_n                1212       experimental, not in ops.num
gcd_i_n_nc                1213       experimental, not in ops.num
gcd_i_nc_nc               1214       experimental, not in ops.num
gcd_i_i_i_i_i             1215       experimental, not in ops.num
gcd_i_i_i_ic_i            1216       experimental, not in ops.num
gcd_i_i_i_i_ic            1217       experimental, not in ops.num
gcd_i_i_i_ic_ic           1218       experimental, not in ops.num
splice_p_p_i_i            1219       experimental, not in ops.num
splice_p_p_ic_i           1220       experimental, not in ops.num
splice_p_p_i_ic           1221       experimental, not in ops.num
splice_p_p_ic_ic          1222       experimental, not in ops.num
slice_p_p_k               1223       experimental, not in ops.num
slice_p_p_kc              1224       experimental, not in ops.num
slice_p_p_k_ic            1225       experimental, not in ops.num
slice_p_p_kc_ic           1226       experimental, not in ops.num
iter_p_p                  1227       experimental, not in ops.num
morph_p_i                 1228       experimental, not in ops.num
morph_p_ic                1229       experimental, not in ops.num
exec_s                    1230       experimental, not in ops.num
exec_sc                   1231       experimental, not in ops.num
classname_p_p             1232       experimental, not in ops.num
trap                      1233       experimental, not in ops.num
pow_n_n_i                 1234       experimental, not in ops.num
pow_n_nc_i                1235       experimental, not in ops.num
pow_n_n_ic                1236       experimental, not in ops.num
pow_n_nc_ic               1237       experimental, not in ops.num
getclass_p_i              1238       experimental, not in ops.num
getclass_p_ic             1239       experimental, not in ops.num
new_p_i_s                 1240       experimental, not in ops.num
new_p_ic_s                1241       experimental, not in ops.num
new_p_i_sc                1242       experimental, not in ops.num
new_p_ic_sc               1243       experimental, not in ops.num
instantiate_p             1244       experimental, not in ops.num
pmcinfo_i_p_ic            1245       experimental, not in ops.num
new_p_p                   1246       experimental, not in ops.num
add_io_event_p_p_p_ic     1247       experimental, not in ops.num
need_finalize_p           1248       experimental, not in ops.num
runinterp_p_p             1249       experimental, not in ops.num
runinterp_p_pc            1250       experimental, not in ops.num
newpdd15class_p_s         1251       experimental, not in ops.num
newpdd15class_p_sc        1252       experimental, not in ops.num
newpdd15class_p_p         1253       experimental, not in ops.num
newpdd15class_p_pc        1254       experimental, not in ops.num
setstdout_p                          SKIPPED: not in ops.num nor ops.skip
setstderr_p                          SKIPPED: not in ops.num nor ops.skip
hash_i_p                             SKIPPED: not in ops.num nor ops.skip
/usr/local/bin/perl tools/build/ops2c.pl C --core
/usr/local/bin/perl tools/build/ops2c.pl CSwitch --core
/usr/local/bin/perl tools/build/vtable_extend.pl
/usr/local/bin/perl tools/build/ops2c.pl CGoto --core
/usr/local/bin/perl tools/build/ops2c.pl CGP --core
src/ops/core_ops.c
src/ops/core_ops_switch.c
src/ops/core_ops_cg.c
src/ops/core_ops_cgp.c
src/ops/core_ops_cgp.c: In function `cgp_core':
src/ops/core_ops_cgp.c:1447: warning: comparison of distinct pointer types lacks a cast
/usr/local/bin/perl -MExtUtils::Command -e cp src/jit/i386/exec_dep.h src/exec_dep.h
/usr/local/bin/perl -MExtUtils::Command -e cp src/jit/i386/jit_emit.h src/jit_emit.h
src/exec.c
/usr/local/bin/perl tools/build/jit2c.pl i386 src/exec_cpu.c
jit2c: JITed 208 (+ 150 vtable) of 1255 ops
src/exec_cpu.c
src/exec_save.c
src/charset.c
src/encoding.c
src/exceptions.c
/usr/local/bin/perl tools/build/c2str.pl src/global_setup.c > src/global_setup.str
src/global_setup.c
src/interpreter.c
/usr/local/bin/perl tools/build/c2str.pl src/inter_call.c > src/inter_call.str
src/inter_call.c
/usr/local/bin/perl tools/build/c2str.pl src/inter_cb.c > src/inter_cb.str
src/inter_cb.c
src/inter_create.c
/usr/local/bin/perl tools/build/c2str.pl src/inter_misc.c > src/inter_misc.str
src/inter_misc.c
src/inter_run.c
src/gc/register.c
src/gc/memory.c
/usr/local/bin/perl tools/build/c2str.pl src/objects.c > src/objects.str
src/objects.c
src/packfile.c
src/stacks.c
src/stack_common.c
/usr/local/bin/perl tools/build/c2str.pl src/builtin.c > src/builtin.str
/usr/local/bin/perl tools/build/c2str.pl src/global.c > src/global.str
/usr/local/bin/perl tools/build/c2str.pl src/library.c > src/library.str
make: *** No rule to make target `src/path.str', needed by `src/string_private_cstring.h'.  Stop.


---
Summary of my parrot 0.4.13 (r19424) configuration:
  configdate='Thu Jun 28 21:38:57 2007 GMT'
  Platform:
    osname=linux, archname=i686-linux
    jitcapable=1, jitarchname=i386-linux,
    jitosname=LINUX, jitcpuarch=i386
    execcapable=1
    perl=/usr/local/bin/perl
  Compiler:
    cc='cc', ccflags=' -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE',
  Linker and Libraries:
    ld='cc', ldflags=' -L/usr/local/lib',
    cc_ldflags='',
    libs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lrt'
  Dynamic Linking:
    share_ext='.so', ld_share_flags='-shared -L/usr/local/lib -fPIC',
    load_ext='.so', ld_load_flags='-shared -L/usr/local/lib -fPIC'
  Types:
    iv=long, intvalsize=4, intsize=4, opcode_t=long, opcode_t_size=4,
    ptrsize=4, ptr_alignment=1 byteorder=1234, 
    nv=double, numvalsize=8, doublesize=8

---
Environment:
    HOME =/home/jimk
    LANG  (unset)
    LANGUAGE  (unset)
    LD_LIBRARY_PATH  (unset)
    LOGDIR  (unset)
    PATH =/usr/local/bin:/usr/local/bin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/mysql/bin:/home/jimk/bin:/home/jimk/bin/perl
    SHELL =/bin/bash

                  

1_fnlD

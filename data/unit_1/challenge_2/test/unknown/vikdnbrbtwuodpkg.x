From perl6-all-return-81982-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 22:10:35 2007
Return-Path: <perl6-all-return-81982-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F2AYL9028600
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 22:10:34 -0400
Received: (qmail 416 invoked by uid 514); 15 Jun 2007 02:10:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 411 invoked from network); 15 Jun 2007 02:10:32 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SARE_MLB_Stock6,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: Will Coleda (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 14 Jun 2007 19:10:02 -0700
Subject: [perl #43219] segfault in tcl 
In-Reply-To: <E3FCE3F3-416C-4D88-8DD2-CC51783C94C8@coleda.com>
References: <RT-Ticket-43219@perl.org> <E3FCE3F3-416C-4D88-8DD2-CC51783C94C8@coleda.com>
Message-ID: <rt-3.6.HEAD-7948-1181873402-653.43219-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43219
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: will@coleda.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070615021003.AA7302AFFC@x3.develooper.com>
Resent-Date: Thu, 14 Jun 2007 19:10:03 -0700 (PDT)
Resent-From: rt-will=coleda.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SARE_MLB_Stock6,SPF_PASS

# New Ticket Created by  Will Coleda 
# Please include the string:  [perl #43219]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43219 >


With recent updates, tcl suite is MUCH faster, but is now segfaulting  
in several places. No clue when it last worked.

Here's a typical bt, caught in t/cmd_array.t...

(gdb) run tcl.pbc t/cmd_array.t
Starting program: /Users/coke/research/parrot-p6/parrot tcl.pbc t/ 
cmd_array.t
Reading symbols for shared libraries .++.+ done
Reading symbols for shared libraries . done
Reading symbols for shared libraries . done
1..50
ok 1 - array, no args
ok 2 - array, good subcommand, no array
ok 3 - array, bad subcommand, bad arary
ok 4 - array exists yes
ok 5 - array exists no
ok 6 - array exists missing
ok 7 - array exists too many args
ok 8 - array exists lexical
ok 9 - array size too many args
ok 10 - array size 1
ok 11 - array size 2
ok 12
ok 13 - array set list
ok 14 - array set multi list

Program received signal EXC_BAD_ACCESS, Could not access memory.
Reason: KERN_INVALID_ADDRESS at address: 0x0371c63c
0x000e0e50 in ascii_compare (interp=0x26003b0, lhs=0x300f504,  
rhs=0x35225e8) at src/charset/ascii.c:219
219             const int ret_val = memcmp(lhs->strstart, rhs- 
 >strstart, min_len);
(gdb) bt
#0  0x000e0e50 in ascii_compare (interp=0x26003b0, lhs=0x300f504,  
rhs=0x35225e8) at src/charset/ascii.c:219
#1  0x00012732 in string_equal (interp=0x26003b0, s1=0x300f504,  
s2=0x35225e8) at src/string.c:1305
#2  0x000298e9 in Parrot_get_HLL_id (interp=0x26003b0,  
hll_name=0x35225e8) at src/hll.c:207
#3  0x0002947e in Parrot_register_HLL (interp=0x26003b0,  
hll_name=0x35225e8, hll_lib=0x35225c4) at src/hll.c:134
#4  0x0018f47a in yyparse (yyscanner=0x26fa120, interp=0x26003b0) at  
compilers/imcc/imcc.y:525
#5  0x0019ade5 in compile_string (interp=0x26003b0, s=0x2897600 ".HLL  
'Tcl', ''\n.namespace \n.sub '_anon' :anon\n    .local pmc colons,  
split, epoch\n    colons = get_root_global ['_tcl'], 'colons'\n     
split  = get_root_global ['parrot'; 'PGE::Util'], 'split'\n     
epoc"..., yyscanner=0x26fa120) at compilers/imcc/imcc.l:1153
#6  0x0005b423 in imcc_compile (interp=0x26003b0, s=0x2897600 ".HLL  
'Tcl', ''\n.namespace \n.sub '_anon' :anon\n    .local pmc colons,  
split, epoch\n    colons = get_root_global ['_tcl'], 'colons'\n     
split  = get_root_global ['parrot'; 'PGE::Util'], 'split'\n     
epoc"..., pasm_file=0, error_message=0xbffff6f4) at compilers/imcc/ 
parser_util.c:641
#7  0x0005b717 in imcc_compile_pir_ex (interp=0x26003b0, s=0x2897600  
".HLL 'Tcl', ''\n.namespace \n.sub '_anon' :anon\n    .local pmc  
colons, split, epoch\n    colons = get_root_global ['_tcl'],  
'colons'\n    split  = get_root_global ['parrot'; 'PGE::Util'],  
'split'\n    epoc"...) at compilers/imcc/parser_util.c:751
#8  0x000c90c7 in pcf_P_Jt (interp=0x26003b0, self=0x27fa8ac) at src/ 
nci.c:2642
#9  0x00049c30 in Parrot_NCI_invoke (interp=0x26003b0, pmc=0x27fa8ac,  
next=0x31243a4) at ./src/pmc/nci.pmc:163
#10 0x000f336f in Parrot_Compiler_invoke (interp=0x26003b0,  
pmc=0x27fa8ac, code_ptr=0x31243a4) at ./src/pmc/compiler.pmc:38
#11 0x0005d88b in Parrot_invokecc_p (cur_opcode=0x312439c,  
interp=0x26003b0) at src/ops/core.ops:423
#12 0x000beb7c in runops_slow_core (interp=0x26003b0, pc=0x312439c)  
at src/runops_cores.c:184
#13 0x000b9c58 in runops_int (interp=0x26003b0, offset=3) at src/ 
interpreter.c:779
#14 0x00004f06 in runops (interp=0x26003b0, offs=3) at src/ 
inter_run.c:88
#15 0x00005177 in runops_args (interp=0x26003b0, sub=0x27f9e48,  
obj=0x282d460, meth=0x0, sig=0x20ade0 "vP", ap=0xbffff9cc "??\002?Ia 
\002?(\005") at src/inter_run.c:202
#16 0x000052a8 in Parrot_runops_fromc_args (interp=0x26003b0,  
sub=0x27f9e48, sig=0x20ade0 "vP") at src/inter_run.c:304
#17 0x0002274f in Parrot_runcode (interp=0x26003b0, argc=2,  
argv=0xbffffb98) at src/embed.c:803
#18 0x000529ec in imcc_run_pbc (interp=0x26003b0, obj_file=0,  
output_file=0x0, argc=2, argv=0xbffffb98) at compilers/imcc/main.c:569
#19 0x00053409 in imcc_run (interp=0x26003b0, sourcefile=0xbffffc3a  
"tcl.pbc", argc=2, argv=0xbffffb98) at compilers/imcc/main.c:766
#20 0x0000280e in main (argc=2, argv=0xbffffb98) at src/main.c:61


--
Will "Coke" Coleda
will@coleda.com


   

 uI6>>h3 of8cxsu
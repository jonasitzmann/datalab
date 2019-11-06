From perl6-all-return-81984-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 01:18:31 2007
Return-Path: <perl6-all-return-81984-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F5ITL9030023
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 01:18:29 -0400
Received: (qmail 13928 invoked by uid 514); 15 Jun 2007 05:18:27 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 13923 invoked from network); 15 Jun 2007 05:18:27 -0000
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
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Thu, 14 Jun 2007 22:17:25 -0700
From: Mark Glines <mark@glines.org>
To: perl6-internals@perl.org
Cc: parrotbug-followup@parrotcode.org, bugs-bitbucket@netlabs.develooper.com
Subject: Re: [perl #43219] segfault in tcl
Message-ID: <20070614221725.1e2bab9f@chirp>
In-Reply-To: <rt-3.6.HEAD-7948-1181873402-653.43219-72-0@perl.org>
References: <RT-Ticket-43219@perl.org>
	<E3FCE3F3-416C-4D88-8DD2-CC51783C94C8@coleda.com>
	<rt-3.6.HEAD-7948-1181873402-653.43219-72-0@perl.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.12; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Thu, 14 Jun 2007 19:10:02 -0700
Will Coleda (via RT) <parrotbug-followup@parrotcode.org> wrote:

> # New Ticket Created by  Will Coleda 
> # Please include the string:  [perl #43219]
> # in the subject line of all future correspondence about this issue. 
> # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43219 >
> 
> 
> With recent updates, tcl suite is MUCH faster, but is now
> segfaulting in several places. No clue when it last worked.

I poked around a bit in gdb.  I don't have any answers or patches, but
hopefully a little more information will be helpful.

In Parrot_get_HLL_id, between the 31st and 32nd calls to this function,
the string memory for the "name" string, from the "name_pmc" PMC, is
freed.  The string pointer is not updated.  So, the next time around,
segfault.


Breakpoint 2, Parrot_get_HLL_id (interp=0x804e008, hll_name=0xb591ebb8) at src/hll.c:191
191         PMC * const hll_info = interp->HLL_info;
(gdb) next 7
207               if (!string_equal(interp, name, hll_name))
(gdb) print name->strstart
$28 = 0xb5607b00 "106"
(gdb) cont
Continuing.

Breakpoint 2, Parrot_get_HLL_id (interp=0x804e008, hll_name=0xb591e930) at src/hll.c:191
191         PMC * const hll_info = interp->HLL_info;
(gdb) next 7
207               if (!string_equal(interp, name, hll_name))
(gdb) print name->strstart
$29 = 0xb5607b00 <Address 0xb5607b00 out of bounds>
(gdb) next
Program received signal SIGSEGV, Segmentation fault.
0xb6e4824c in memcmp () from /lib/libc.so.6


Note the pointer value is the same; the first time it's valid and the
string is displayed.  The second time, it's "out of bounds".


Valgrind has some very interesting things to say about this test
script, including lots of undefined data warnings, lots of accesses 
outside of allocated ranges, and also such gems as "definitely lost:
1,476,179 bytes in 13,925 blocks".  But most importantly, it tells us
what freed the memory:

==4825== Invalid read of size 1
==4825==    at 0x4023080: bcmp (in /usr/lib/valgrind/x86-linux/vgpreload_memcheck.so)
==4825==    by 0x42632F6: ascii_compare (ascii.c:219)
==4825==    by 0x41E28B9: string_equal (string.c:1305)
==4825==    by 0x422FEEF: Parrot_get_HLL_id (hll.c:207)
==4825==    by 0x422FB1C: Parrot_register_HLL (hll.c:134)
==4825==    by 0x4315F83: yyparse (imcc.y:525)
==4825==    by 0x43208FF: compile_string (imcc.l:1153)
==4825==    by 0x4332752: imcc_compile (parser_util.c:641)
==4825==    by 0x4332A12: imcc_compile_pir_ex (parser_util.c:751)
==4825==    by 0x423BEA5: pcf_P_Jt (nci.c:2642)
==4825==    by 0x429457B: Parrot_NCI_invoke (nci.pmc:163)
==4825==    by 0x427CBE2: Parrot_Compiler_invoke (compiler.pmc:38)
==4825==  Address 0x7CF1DAC is 1,432,964 bytes inside a block of size 1,945,416 free'd
==4825==    at 0x40214AC: free (in /usr/lib/valgrind/x86-linux/vgpreload_memcheck.so)
==4825==    by 0x41D794C: mem__internal_free (memory.c:200)
==4825==    by 0x426242A: compact_pool (resources.c:421)
==4825==    by 0x4261F5A: mem_allocate (resources.c:147)
==4825==    by 0x4262A3D: Parrot_allocate_string (resources.c:724)
==4825==    by 0x41E1888: string_make_direct (string.c:647)
==4825==    by 0x41E1DA1: string_concat (string.c:899)
==4825==    by 0x41E1489: string_append (string.c:439)
==4825==    by 0x43013B6: Parrot_scalar_i_concatenate_str (scalar.pmc:1182)
==4825==    by 0x4257343: mmd_dispatch_v_ps (mmd.c:456)
==4825==    by 0x41119C6: Parrot_infix_ic_p_s (math.ops:74)
==4825==    by 0x41E6026: runops_slow_core (runops_cores.c:184)


I don't know *why* it was freed, but at least that tells us *where*.
And parrot -G runs great, of course.

Mark

               

tw2ckEle,k7In
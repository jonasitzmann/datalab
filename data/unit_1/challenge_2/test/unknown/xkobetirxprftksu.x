From perl6-all-return-81977-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 19:45:46 2007
Return-Path: <perl6-all-return-81977-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ENjiL9027708
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 19:45:45 -0400
Received: (qmail 28758 invoked by uid 514); 14 Jun 2007 23:45:43 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28749 invoked from network); 14 Jun 2007 23:45:42 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: [perl #43218] Memory leaks (compreg, invokecc)
Date: Thu, 14 Jun 2007 16:24:29 -0700
User-Agent: KMail/1.9.6
Cc: Jurosz Michal (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-43218@perl.org> <4671B5CD.1010308@ro.vutbr.cz> <rt-3.6.HEAD-7948-1181857351-1464.43218-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-7948-1181857351-1464.43218-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706141624.29539.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Thursday 14 June 2007 14:42:31 Jurosz Michal wrote:

> Attached test use compreg P1, "PASM" and invokecc it 100,000 times.
> On win32 (mingw32) it consumes 70MB of RAM with r18834 (107 MB of RAM
> with r11704).

With Linux at r19010, the memory use jumped up to 62 MB for me.

However, Valgrind says:

==24190== LEAK SUMMARY:
==24190==    definitely lost: 128 bytes in 2 blocks.
==24190==    indirectly lost: 208 bytes in 1 blocks.
==24190==      possibly lost: 0 bytes in 0 blocks.
==24190==    still reachable: 0 bytes in 0 blocks.
==24190==         suppressed: 0 bytes in 0 blocks.

==24190== 252 (44 direct, 208 indirect) bytes in 1 blocks are definitely lost 
in loss record 1 of 3
==24190==    at 0x4006620: malloc (vg_replace_malloc.c:149)
==24190==    by 0x41A1170: mem_sys_allocate 
==24190==    by 0x41AF37E: parrot_new_pmc_hash_x 
==24190==    by 0x41AF45E: parrot_new_pmc_hash 
==24190==    by 0x424930A: Parrot_Hash_init 
==24190==    by 0x4203715: Parrot_default_thaw 
==24190==    by 0x424934B: Parrot_Hash_thaw 
==24190==    by 0x41AD9C0: visit_todo_list_thaw 
==24190==    by 0x41AD703: visit_loop_todo_list 
==24190==    by 0x41AE1EB: run_thaw 
==24190==    by 0x419B518: init_world 

==24190== 84 bytes in 1 blocks are definitely lost in loss record 2 of 3
==24190==    at 0x4006620: malloc (vg_replace_malloc.c:149)
==24190==    by 0x41A1170: mem_sys_allocate 
==24190==    by 0x41EC1DB: queue_init 
==24190==    by 0x41ED08B: Parrot_init_events 
==24190==    by 0x419F464: make_interpreter 
==24190==    by 0x41D3BEB: Parrot_new 
==24190==    by 0x8048860: main

==24190== 208 bytes in 1 blocks are indirectly lost in loss record 3 of 3
==24190==    at 0x4006620: malloc (vg_replace_malloc.c:149)
==24190==    by 0x41A1170: mem_sys_allocate 
==24190==    by 0x41AF2C9: init_hash 
==24190==    by 0x41AF45E: parrot_new_pmc_hash 
==24190==    by 0x424930A: Parrot_Hash_init 
==24190==    by 0x4203715: Parrot_default_thaw 
==24190==    by 0x424934B: Parrot_Hash_thaw 
==24190==    by 0x41AD9C0: visit_todo_list_thaw 
==24190==    by 0x41AD703: visit_loop_todo_list 
==24190==    by 0x41AE1EB: run_thaw 
==24190==    by 0x419B518: init_world 

I realize the numbers don't add up, but I'm not sure that this is an actual 
leak.

-- c

       

l1uoT12r3.t
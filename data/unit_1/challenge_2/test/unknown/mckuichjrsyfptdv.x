From perl6-all-return-82441-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 09:12:37 2007
Return-Path: <perl6-all-return-82441-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TDCaL9026124
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 09:12:36 -0400
Received: (qmail 9544 invoked by uid 514); 29 Jun 2007 13:12:30 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9536 invoked from network); 29 Jun 2007 13:12:29 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: moderator for perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: Richard Hainsworth (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Fri, 29 Jun 2007 01:52:18 -0700
Subject: [perl #43431] build problem 
In-Reply-To: <4684C820.1070102@rusrating.ru>
References: <RT-Ticket-43431@perl.org> <4684C820.1070102@rusrating.ru>
Message-ID: <rt-3.6.HEAD-1276-1183107139-1336.43431-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43431
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: richard@rusrating.ru
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070629085219.61CEC2AFEF@x3.develooper.com>
Resent-Date: Fri, 29 Jun 2007 01:52:19 -0700 (PDT)
Resent-From: rt-richard=rusrating.ru@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Richard Hainsworth 
# Please include the string:  [perl #43431]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43431 >


Dear Parrot people,

Just updates my subversion depository after a long time.

Got this error after 'make'
...
make -C compilers/past-pm
make[1]: Entering directory 
`/home/richard/development/parrot/trunk/compilers/past-pm'
/usr/bin/perl -MExtUtils::Command -e rm_rf PAST-pm.pbc 
../../runtime/parrot/library/PAST-pm.pbc
../../parrot ../../compilers/tge/tgc.pir --output=POST/Grammar_gen.pir 
POST/Grammar.tg
PackFile_unpack: Bytecode not valid for this interpreter: fingerprint 
mismatch
Parrot VM: Can't unpack packfile 
/home/richard/development/parrot/trunk/./compilers/tge/TGE/Parser.pbc.
Null PMC access in invoke()
current instr.: 'parrot;TGE::Compiler;parse_grammar' pc 28 
(TGE/Compiler.pir:34)
called from Sub 'parrot;TGE::Compiler;precompile' pc 654 
(TGE/Compiler.pir:293)
called from Sub 'main' pc 101 (../../compilers/tge/tgc.pir:87)
make[1]: *** [PAST-pm.pbc] Error 1
make[1]: Leaving directory 
`/home/richard/development/parrot/trunk/compilers/past-pm'
make: *** [compilers.dummy] Error 2

myconfig is

Summary of my parrot 0.4.13 (r19455) configuration:
  configdate='Fri Jun 29 08:27:29 2007 GMT'
  Platform:
    osname=linux, archname=i486-linux-gnu-thread-multi
    jitcapable=1, jitarchname=i386-linux,
    jitosname=LINUX, jitcpuarch=i386
    execcapable=1
    perl=/usr/bin/perl
  Compiler:
    cc='cc', ccflags='-D_REENTRANT -D_GNU_SOURCE -DTHREADS_HAVE_PIDS 
-DDEBIAN  -pipe -I/usr/local/include -D_
LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64',
  Linker and Libraries:
    ld='cc', ldflags=' -L/usr/local/lib',
    cc_ldflags='',
    libs='-ldl -lm -lpthread -lcrypt -lrt -lgmp -lreadline -lncurses'
  Dynamic Linking:
    share_ext='.so', ld_share_flags='-shared -L/usr/local/lib -fPIC',
    load_ext='.so', ld_load_flags='-shared -L/usr/local/lib -fPIC'
  Types:
    iv=long, intvalsize=4, intsize=4, opcode_t=long, opcode_t_size=4,
    ptrsize=4, ptr_alignment=1 byteorder=1234,
    nv=double, numvalsize=8, doublesize=8


Regards,
Richard

                  

nbB
e@
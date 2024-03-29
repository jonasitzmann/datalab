From perl6-all-return-82547-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 04:26:35 2007
Return-Path: <perl6-all-return-82547-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l658QYL9023679
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 04:26:35 -0400
Received: (qmail 16176 invoked by uid 514); 5 Jul 2007 08:26:29 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16171 invoked from network); 5 Jul 2007 08:26:28 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: [perl #43481] t/examples/shootout.t (shootout_16.pir) fails on gentoo/x86
Date: Thu, 5 Jul 2007 01:25:58 -0700
User-Agent: KMail/1.9.6
Cc: parrotbug-followup@parrotcode.org
References: <RT-Ticket-43481@perl.org> <20070704225648.GA22686@fourtheye.org> <20070704151733.6b598bbf@chirp>
In-Reply-To: <20070704151733.6b598bbf@chirp>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200707050125.58134.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Wednesday 04 July 2007 15:17:33 Mark Glines wrote:

> It helps, thanks.  Glad to know I can't just blame gentoo.

> After doing the binary search I mentioned earlier and finding that it
> started breaking in svn r19441, there was some discussion in the IRC
> channel.  The important bit is:
>
> [13:35] <@chromatic> Hm, I don't blame 19441 for the shootout test.
> [13:35] <@chromatic> I think it just changed the memory characteristics of
> the program sufficiently to trigger a lurking GC bug.
>
>
> So now I'll try to see if there was a DOD run that freed up something
> it shouldn't have, or something like that.

I see the segfault now during global destruction:

Program received signal SIGSEGV, Segmentation fault.
[Switching to Thread -1212667696 (LWP 25316)]
0xb7ddb7db in Parrot_dod_sweep (interp=0x804e008, pool=0x806eb60)
    at src/gc/dod.c:641
641                             VTABLE_destroy(interp, p);
(gdb) bt
#0  0xb7ddb7db in Parrot_dod_sweep (interp=0x804e008, pool=0x806eb60)
    at src/gc/dod.c:641
#1  0xb7ddbf37 in Parrot_dod_ms_run (interp=0x804e008, flags=4)
    at src/gc/dod.c:987
#2  0xb7ddc097 in Parrot_do_dod_run (interp=0x804e008, flags=4)
    at src/gc/dod.c:1051
#3  0xb7d73173 in Parrot_really_destroy (interp=0x804e008, exit_code_unused=0, 
    arg_unused=0x0) at src/inter_create.c:316
#4  0xb7ddcbe0 in Parrot_exit (interp=0x804e008, status=0) at src/exit.c:78
#5  0x08048954 in main (argc=1, argv=0xbfa20a48) at src/main.c:65

(gdb) p p->vtable
$3 = (VTABLE *) 0x0
(gdb) x p
0x8218638:      0x00000005

That looks very suspicious.

-- c

            

sbotfcltesr
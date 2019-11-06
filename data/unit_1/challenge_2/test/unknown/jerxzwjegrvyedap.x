From perl6-all-return-81797-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 15:50:31 2007
Return-Path: <perl6-all-return-81797-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l54JoUhB032068
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 15:50:30 -0400
Received: (qmail 6828 invoked by uid 514); 4 Jun 2007 19:50:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6823 invoked from network); 4 Jun 2007 19:50:23 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Mon, 4 Jun 2007 12:49:45 -0700
From: Mark Glines <mark@glines.org>
To: parrotbug@parrotcode.org
Cc: perl6-internals@perl.org
Subject: GC bug on freebsd/x86, triggered by a perl6 test
Message-ID: <20070604124945.36989852@chirp>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.12; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_HELO_PASS,SPF_PASS

I tried the perl6 testsuite on freebsd at Coke's request, and
discovered a test that fails on freebsd but succeeds on linux.  The
test seems to be a GC-related assertion failure; parrot -G does not
crash, parrot without -G does crash.

I am running on freebsd 6.2, in a checkout of svn r18803.  I did a
realclean beforehand, and configured with just "perl Configure.pl", no
arguments.

To reproduce:

make realclean
perl Configure.pl
make
cd languages/perl6
LD_LIBRARY_PATH=../../blib/lib make

$ LD_LIBRARY_PATH=../../blib/lib ../../parrot perl6.pbc t/00-parrot/05-var-array.t
Assertion failed: (s->encoding && s->charset && !PObj_on_free_list_TEST(s)), function string_hash, file
src/string.c, line 2024.
Abort trap (core dumped)
$ LD_LIBRARY_PATH=../../blib/lib ../../parrot -G perl6.pbc t/00-parrot/05-var-array.t
1..11
ok 1
ok 2
ok 3
ok 4
ok 5
ok 6
ok 7
ok 8
ok 9
ok 10
ok 11


(the LD_LIBRARY_PATH bit is required on freebsd so parrot can find libparrot.so.)

Mark

    

l ryn 
From perl6-all-return-82024-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 22:28:49 2007
Return-Path: <perl6-all-return-82024-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5H2SmL9021790
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 22:28:48 -0400
Received: (qmail 10694 invoked by uid 514); 17 Jun 2007 02:28:46 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 10689 invoked from network); 17 Jun 2007 02:28:46 -0000
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
From: "Patrick R.Michaud (via RT)" <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Sat, 16 Jun 2007 19:27:41 -0700
Subject: [perl #43231] [BUG] :slurpy :named after :optional fails 
In-Reply-To: <20070617022649.GA32017@host.pmichaud.com>
References: <RT-Ticket-43231@perl.org> <20070617022649.GA32017@host.pmichaud.com>
Message-ID: <rt-3.6.HEAD-7948-1182047261-932.43231-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43231
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: pmichaud@pobox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070617022742.44A562AFE3@x3.develooper.com>
Resent-Date: Sat, 16 Jun 2007 19:27:42 -0700 (PDT)
Resent-From: rt-pmichaud=pobox.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Patrick R. Michaud 
# Please include the string:  [perl #43231]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43231 >


Defining a .sub with both :optional (positional) and :slurpy :named
parameters results in an exception "invalid arg type in 
named portion of args" when called without the optional arg.

Example:

    $ cat x.pir
    .sub 'main' :main
        'foo'(123, 'xyz' => 'abc')
        'foo'('xyz' => 'abc')
    .end
    
    .sub 'foo'
        .param string posarg       :optional
        .param int    has_posarg   :opt_flag
        .param pmc    namedargs    :slurpy :named
        say posarg
        $S0 = namedargs['xyz']
        say $S0
        .return()
    .end
    
    $ ./parrot x.pir
    123
    abc
    invalid arg type in named portion of args
    current instr.: 'foo' pc 26 (x.pir:7)
    called from Sub 'main' pc 21 (x.pir:3)
    $
  
I've entered a (TODO) test for this into t/op/calling.t,
and will cite this RT# in the test (as soon as I have it).

Thanks!

Pm 

            

ggnH.krltn"0z 
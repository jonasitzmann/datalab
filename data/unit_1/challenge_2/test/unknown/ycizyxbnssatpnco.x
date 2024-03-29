From perl6-all-return-81931-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 01:33:27 2007
Return-Path: <perl6-all-return-81931-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D5XPL9003655
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 01:33:26 -0400
Received: (qmail 11090 invoked by uid 514); 13 Jun 2007 05:33:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 11085 invoked from network); 13 Jun 2007 05:33:24 -0000
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
Date: Tue, 12 Jun 2007 22:32:52 -0700
Subject: [perl #43190] [TODO] Write test for Parrot::Configure::runstep() 
In-Reply-To: <ACAFA045-23F5-4A58-AFDF-27DD17AECEF9@verizon.net>
References: <RT-Ticket-43190@perl.org> <ACAFA045-23F5-4A58-AFDF-27DD17AECEF9@verizon.net>
Message-ID: <rt-3.6.HEAD-7948-1181712772-967.43190-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43190
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070613053252.982792AFFA@x3.develooper.com>
Resent-Date: Tue, 12 Jun 2007 22:32:52 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43190]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43190 >


Parrot::Configure::runstep() is the only subroutine in  
Parrot::Configure() that is still not covered via the tests in t/ 
configure/ or t/postconfigure/.  No test has yet been written in part  
because this is a subroutine which is not really well positioned in  
its current package.  Everything else in Parrot::Configure has to do  
with initial configuration; runstep() has to do with *re-running* a  
step after Configure.pl has already completed.  It's a tool that some  
Parrot developers use (Patrick Michaud has spoken up for it), but is  
not used by make.

Additional problem:  Parrot::Configure also has subroutines named  
runstep() and _runstep().  Ideally, any refactoring would include  
less confusing names.

Because runstep() runs after Configure.pl, any tests for it should go  
into the t/postconfigure/ directory.

So the task is to write unit tests for Parrot::Configure::runstep()  
and, if appropriate, to refactor it, with that refactoring possibly  
including renaming and/or relocating the subroutine.

kid51

         

o<nsbjual5 x )
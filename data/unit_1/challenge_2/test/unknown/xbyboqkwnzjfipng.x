From perl6-all-return-82302-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 21:22:15 2007
Return-Path: <perl6-all-return-82302-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5N1MEL9012123
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 21:22:14 -0400
Received: (qmail 19174 invoked by uid 514); 23 Jun 2007 01:22:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19169 invoked from network); 23 Jun 2007 01:22:11 -0000
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
Date: Fri, 22 Jun 2007 18:21:28 -0700
Subject: [perl #43333] [TODO] config/auto/cpu.pm:  Write unit tests 
In-Reply-To: <E1I1tkx-0000gP-6z@li11-226.members.linode.com>
References: <RT-Ticket-43333@perl.org> <E1I1tkx-0000gP-6z@li11-226.members.linode.com>
Message-ID: <rt-3.6.HEAD-1276-1182561688-1056.43333-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43333
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070623012128.692792B013@x3.develooper.com>
Resent-Date: Fri, 22 Jun 2007 18:21:28 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43333]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43333 >


Write unit tests for config/auto/cpu.pm, 
the module whose functionality executes Parrot 
configuration step auto::cpu.

Some tests have already been written for this module in the 
'reconfigure' branch of the Parrot repository; see 
t/configure/147-auto_cpu.t in that branch
(http://svn.perl.org/parrot/branches/reconfigure/).

Some hints for how to proceed with testing may be found 
in that test file as well, including the following:

"You may have to create a dummy local hints
package to test this package effectively.  Try to test all branches and
conditions; consult a recent code coverage report for guidance."

Reports of the extent to which tests in the 'reconfigure' 
branch's t/configure/ directory cover the code in 
config/*/*.pm packages may be found here:  
http://thenceforward.net/parrot/coverage/configure-build/coverage.html

Happy hacking!

kid51



nAo qf
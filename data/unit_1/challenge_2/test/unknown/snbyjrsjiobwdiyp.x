From perl6-all-return-82312-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 21:39:21 2007
Return-Path: <perl6-all-return-82312-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5N1dIL9012302
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 21:39:19 -0400
Received: (qmail 30094 invoked by uid 514); 23 Jun 2007 01:39:15 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 30089 invoked from network); 23 Jun 2007 01:39:15 -0000
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
Date: Fri, 22 Jun 2007 18:18:36 -0700
Subject: [perl #43322] [TODO] config/auto/pack.pm:  Write unit tests 
In-Reply-To: <E1I1tks-0000f0-Mi@li11-226.members.linode.com>
References: <RT-Ticket-43322@perl.org> <E1I1tks-0000f0-Mi@li11-226.members.linode.com>
Message-ID: <rt-3.6.HEAD-14376-1182561516-883.43322-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43322
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070623011837.220462B013@x3.develooper.com>
Resent-Date: Fri, 22 Jun 2007 18:18:37 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43322]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43322 >


Write unit tests for config/auto/pack.pm, 
the module whose functionality executes Parrot 
configuration step auto::pack.

Some tests have already been written for this module in the 
'reconfigure' branch of the Parrot repository; see 
t/configure/126-auto_pack.t in that branch
(http://svn.perl.org/parrot/branches/reconfigure/).

Some hints for how to proceed with testing may be found 
in that test file as well, including the following:

"The documentation of the package being tested is
insufficient; please try to improve it.  Check latest reports of Parrot
configuration tools testing coverage to see where your time available
for writing tests is spent.  Try to write tests which will trigger the
warnings in the package being tested.  They can probably be captured
with Parrot::IO::Capture::Mini; see t/tools/ for examples of how to use
this module."

Reports of the extent to which tests in the 'reconfigure' 
branch's t/configure/ directory cover the code in 
config/*/*.pm packages may be found here:  
http://thenceforward.net/parrot/coverage/configure-build/coverage.html

Happy hacking!

kid51

                   

 >i
YeO1A sr
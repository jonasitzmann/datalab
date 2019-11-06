From perl6-all-return-82290-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 21:15:57 2007
Return-Path: <perl6-all-return-82290-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5N1FuL9011987
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 21:15:56 -0400
Received: (qmail 3154 invoked by uid 514); 23 Jun 2007 01:15:53 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3149 invoked from network); 23 Jun 2007 01:15:53 -0000
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
Date: Fri, 22 Jun 2007 18:15:09 -0700
Subject: [perl #43308] [TODO] config/auto/snprintf.pm:  Write unit tests 
In-Reply-To: <E1I1tku-0000fY-90@li11-226.members.linode.com>
References: <RT-Ticket-43308@perl.org> <E1I1tku-0000fY-90@li11-226.members.linode.com>
Message-ID: <rt-3.6.HEAD-1276-1182561309-271.43308-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43308
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070623011510.19B652B012@x3.develooper.com>
Resent-Date: Fri, 22 Jun 2007 18:15:10 -0700 (PDT)
Resent-From: rt-jkeen=verizon.net@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  James Keenan 
# Please include the string:  [perl #43308]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43308 >


Write unit tests for config/auto/snprintf.pm, 
the module whose functionality executes Parrot 
configuration step auto::snprintf.

Some tests have already been written for this module in the 
'reconfigure' branch of the Parrot repository; see 
t/configure/143-auto_snprintf.t in that branch
(http://svn.perl.org/parrot/branches/reconfigure/).

Some hints for how to proceed with testing may be found 
in that test file as well, including the following:

"The documentation for this package is skimpy;
please try to improve it, e.g., by providing a short description of what
the 'autosnprintf' is.  Try to test all branches and conditions; consult
a recent code coverage report for guidance."

Reports of the extent to which tests in the 'reconfigure' 
branch's t/configure/ directory cover the code in 
config/*/*.pm packages may be found here:  
http://thenceforward.net/parrot/coverage/configure-build/coverage.html

Happy hacking!

kid51

               

: _oas OlwVe
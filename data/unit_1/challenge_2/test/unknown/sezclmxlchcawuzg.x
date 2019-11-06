From perl6-all-return-82536-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 12:35:42 2007
Return-Path: <perl6-all-return-82536-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64GZfL9012993
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 12:35:41 -0400
Received: (qmail 2193 invoked by uid 514); 4 Jul 2007 16:35:36 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2188 invoked from network); 4 Jul 2007 16:35:36 -0000
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
From: Ron Blaschke (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Wed, 04 Jul 2007 06:00:22 -0700
Subject: [perl #43529] [PATCH] Add Set assertions 
In-Reply-To: <468B9988.2040000@rblasch.org>
References: <RT-Ticket-43529@perl.org> <468B9988.2040000@rblasch.org>
Message-ID: <rt-3.6.HEAD-25329-1183554023-937.43529-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43529
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: ron@rblasch.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183554023-25329-20"
Resent-Message-Id: <20070704130024.641722AFDA@x3.develooper.com>
Resent-Date: Wed,  4 Jul 2007 06:00:24 -0700 (PDT)
Resent-From: rt-ron=rblasch.org@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183554023-25329-20
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Ron Blaschke 
# Please include the string:  [perl #43529]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43529 >


Adds some range check assertions to F<compilers/imcc/sets.c>.  Please
double check if I got them right!

Assuming the assertions are good there seems to be a problem with its
use, at least for Parrot r19565, Win32, VC++ 8.0.  I don't think it's
platform dependent, though.


    ...
    .\parrot.exe -o runtime\parrot\library\String\Utils.pbc
runtime\parrot\library\String\Utils.pir
    .\parrot.exe -o runtime\parrot\library\YAML\Parser\Syck.pbc
runtime\parrot\library\YAML\Parser\Syck.pir
    .\parrot.exe -o runtime\parrot\library\STM.pbc
runtime\parrot\library\STM.pir
Assertion failed: element >= 0 && element < s->length, file
compilers\imcc\sets.c, line 108


Changed Files:
    compilers/imcc/sets.c

Ron

------------=_1183554023-25329-20
Content-Type: text/plain; charset="ascii"; name="sets_assert.patch"
Content-Disposition: inline; filename="sets_assert.patch"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43529/267567/117079

Index: compilers/imcc/sets.c
===================================================================
--- compilers/imcc/sets.c	(revision 19565)
+++ compilers/imcc/sets.c	(working copy)
@@ -86,6 +86,7 @@
 void
 set_add(Set *s /*NN*/, int element)
 {
+    assert(element >= 0 && element < s->length);
     s->bmp[element >> 3] |= (1 << (element & 7));
 }
 
@@ -104,6 +105,7 @@
 set_contains(const Set *s /*NN*/, int element)
     /* WARN_UNUSED */
 {
+    assert(element >= 0 && element < s->length);
 #ifdef __LCC__
     /* workaround for another lcc bug.. */
     const int tmp = (1 << (element & 7));

------------=_1183554023-25329-20--

   

>s8o0eo 26
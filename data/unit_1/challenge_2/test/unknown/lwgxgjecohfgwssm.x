From perl6-all-return-82489-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 18:28:37 2007
Return-Path: <perl6-all-return-82489-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61MSaL9006056
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 18:28:37 -0400
Received: (qmail 25771 invoked by uid 514); 1 Jul 2007 22:28:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 25759 invoked from network); 1 Jul 2007 22:28:31 -0000
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
From: Bob Wilkinson (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Sat, 30 Jun 2007 11:13:45 -0700
Subject: [perl #43452] [PATCH] typo in docs/compiler_faq.pod 
In-Reply-To: <20070630191224.GA19573@fourtheye.org>
References: <RT-Ticket-43452@perl.org> <20070630191224.GA19573@fourtheye.org>
Message-ID: <rt-3.6.HEAD-1276-1183227226-1488.43452-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43452
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: bob@fourtheye.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183227226-1276-131"
Resent-Message-Id: <20070630181346.932A72AFDE@x3.develooper.com>
Resent-Date: Sat, 30 Jun 2007 11:13:46 -0700 (PDT)
Resent-From: rt-bob=fourtheye.org@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183227226-1276-131
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Bob Wilkinson 
# Please include the string:  [perl #43452]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43452 >


Hello

     A typo in docs/compiler_faq.pod.

bob@spain:~/src/parrot/docs$ svn diff
Index: compiler_faq.pod
===================================================================
--- compiler_faq.pod    (revision 19512)
+++ compiler_faq.pod    (working copy)
@@ -395,7 +395,7 @@

 =head2 How do I instantiate a class?

-You can either do so with an interger type id:
+You can either do so with an integer type id:

     $I0 = find_type 'Dog'
     new $P0, $I0    # creates a Dog object and stores it in register $P0

Patch enclosed, too.

Bob

------------=_1183227226-1276-131
Content-Type: text/plain; charset="us-ascii"; name="compiler_faq.pod.diff"
Content-Disposition: inline; filename="compiler_faq.pod.diff"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43452/266238/116476

Index: compiler_faq.pod
===================================================================
--- compiler_faq.pod	(revision 19512)
+++ compiler_faq.pod	(working copy)
@@ -395,7 +395,7 @@
 
 =head2 How do I instantiate a class?
 
-You can either do so with an interger type id:
+You can either do so with an integer type id:
 
     $I0 = find_type 'Dog'
     new $P0, $I0    # creates a Dog object and stores it in register $P0

------------=_1183227226-1276-131--

       

GV orvr 4eg.iwtc
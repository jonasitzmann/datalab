From perl6-all-return-81937-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 06:05:16 2007
Return-Path: <perl6-all-return-81937-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DA5FL9006297
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 06:05:15 -0400
Received: (qmail 22270 invoked by uid 514); 13 Jun 2007 10:05:13 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 22265 invoked from network); 13 Jun 2007 10:05:13 -0000
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
From: Geraud CONTINSOUZAS (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Tue, 12 Jun 2007 22:51:53 -0700
Subject: [perl #43193] [PATCH] docs/parrotbyte.pod : fix data structure display 
In-Reply-To: <1181611452.1089.11.camel@dash.nealab.net>
References: <RT-Ticket-43193@perl.org> <1181611452.1089.11.camel@dash.nealab.net>
Message-ID: <rt-3.6.HEAD-7948-1181713913-655.43193-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43193
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: geraud@gcu.info
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1181713913-7948-19"
Resent-Message-Id: <20070613055153.B20A52AFFA@x3.develooper.com>
Resent-Date: Tue, 12 Jun 2007 22:51:53 -0700 (PDT)
Resent-From: rt-geraud=gcu.info@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1181713913-7948-19
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Geraud CONTINSOUZAS 
# Please include the string:  [perl #43193]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43193 >


Description:
	While reading the docs/parrotbyte.pod file with perldoc, some
	tables appear broken due to a lack of indentation.

Fix:
	Apply the attached patch to add a two-spaces indentation where
	needed.

Files touched:
	docs/parrotbyte.pod


Regards,

Geraud 

------------=_1181713913-7948-19
Content-Type: text/x-patch; charset="ISO-8859-1"; name="parrotbyte.pod.diff"
Content-Disposition: inline; filename="parrotbyte.pod.diff"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43193/262649/114812

--- docs/parrotbyte.pod.old	Tue Jun 12 11:52:43 2007
+++ docs/parrotbyte.pod	Wed Apr 18 18:24:15 2007
@@ -178,10 +178,10 @@
 The header will start with a count of the number of source file to bytecode
 position mappings that are in the header.
 
-0 (relative)
-+----------+----------+----------+----------+
-|   number of source => bytecode mappings   |
-+----------+----------+----------+----------+
+  0 (relative)
+  +----------+----------+----------+----------+
+  |   number of source => bytecode mappings   |
+  +----------+----------+----------+----------+
 
 A source to bytecode position mapping simply states that the bytecode that 
 starts from the specified offset up until the offset in the next mapping, or 
@@ -191,15 +191,15 @@
 A mapping always starts with the offset in the bytecode, followed by the 
 type of the mapping.
 
-0 (relative)
-+----------+----------+----------+----------+
-|              bytecode offset              |
-+----------+----------+----------+----------+
+  0 (relative)
+  +----------+----------+----------+----------+
+  |              bytecode offset              |
+  +----------+----------+----------+----------+
 
-4
-+----------+----------+----------+----------+
-|                mapping type               |
-+----------+----------+----------+----------+
+  4
+  +----------+----------+----------+----------+
+  |                mapping type               |
+  +----------+----------+----------+----------+
 
 There are 3 mapping types.
 

------------=_1181713913-7948-19--

      

Yiazap 
  iie8g
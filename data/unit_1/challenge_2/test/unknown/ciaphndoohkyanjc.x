From perl6-all-return-81720-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 15:46:04 2007
Return-Path: <perl6-all-return-81720-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51Jk3hB014035
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 15:46:04 -0400
Received: (qmail 25823 invoked by uid 514); 1 Jun 2007 19:45:57 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 25817 invoked from network); 1 Jun 2007 19:45:56 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
From: larry@cvs.develooper.com
To: perl6-language@perl.org
Subject: [svn:perl6-synopsis] r14412 - doc/trunk/design/syn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070601194428.01B6BCB9B8@x12.develooper.com>
Date: Fri,  1 Jun 2007 12:44:28 -0700 (PDT)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS

Author: larry
Date: Fri Jun  1 12:44:27 2007
New Revision: 14412

Modified:
   doc/trunk/design/syn/S06.pod

Log:
note that parsed/reparsed also influences whether trailing bracket is assumed


Modified: doc/trunk/design/syn/S06.pod
==============================================================================
--- doc/trunk/design/syn/S06.pod	(original)
+++ doc/trunk/design/syn/S06.pod	Fri Jun  1 12:44:27 2007
@@ -13,9 +13,9 @@
 
   Maintainer: Larry Wall <larry@wall.org>
   Date: 21 Mar 2003
-  Last Modified: 30 May 2007
+  Last Modified: 1 Jun 2007
   Number: 6
-  Version: 86
+  Version: 87
 
 
 This document summarizes Apocalypse 6, which covers subroutines and the
@@ -1467,14 +1467,17 @@
 =item C<is parsed>
 
 Specifies the subrule by which a macro call is parsed.  The parse
-always starts after the macro's initial token.
+always starts after the macro's initial token.  If the operator has
+two parts (circumfix or postcircumfix), the final token is also automatically
+matched, and should not be matched by the supplied regex.
 
 =item C<is reparsed>
 
 Also specifies the subrule by which a macro call is parsed, but restarts
 the parse before the macro's initial token, usually because you want
 to parse using an existing rule that expects to traverse the initial
-token.
+token.  If the operator has two parts (circumfix or postcircumfix), the
+final token must also be explicitly matched by the supplied regex.
 
 =item C<is cached>
 

             

<;a.lxe  
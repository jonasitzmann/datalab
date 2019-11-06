From perl6-all-return-82447-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 10:27:58 2007
Return-Path: <perl6-all-return-82447-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TERvL9026948
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 10:27:57 -0400
Received: (qmail 15335 invoked by uid 514); 29 Jun 2007 14:27:51 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 15330 invoked from network); 29 Jun 2007 14:27:51 -0000
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
From: pmichaud@cvs.develooper.com
To: perl6-internals@perl.org
Subject: [svn:parrot-pdd] r19464 - trunk/docs/pdds
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <20070629140721.BBFBBCB9E1@x12.develooper.com>
Date: Fri, 29 Jun 2007 07:07:21 -0700 (PDT)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Author: pmichaud
Date: Fri Jun 29 07:07:20 2007
New Revision: 19464

Modified:
   trunk/docs/pdds/pdd23_exceptions.pod

Log:
[docs]:
* The phrase 'may not' is sometimes confusing.


Modified: trunk/docs/pdds/pdd23_exceptions.pod
==============================================================================
--- trunk/docs/pdds/pdd23_exceptions.pod	(original)
+++ trunk/docs/pdds/pdd23_exceptions.pod	Fri Jun 29 07:07:20 2007
@@ -213,8 +213,8 @@
 =item B<PMC *get_message()>
 
 Get an exception's human-readable self-description.  Note that the type of the
-returned PMC may not be C<String>, but you should still be able to stringify
-and print it.
+returned PMC isn't required to be C<String>, but you should still be able 
+to stringify and print it.
 
 =item B<PMC *get_payload()>
 

 

TjeL1
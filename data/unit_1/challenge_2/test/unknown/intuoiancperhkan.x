From perl6-all-return-82434-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 19:30:27 2007
Return-Path: <perl6-all-return-82434-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SNUQL9017028
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 19:30:26 -0400
Received: (qmail 23641 invoked by uid 514); 28 Jun 2007 23:30:21 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23635 invoked from network); 28 Jun 2007 23:30:21 -0000
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
Subject: [perl #43420] [BUG] No rule to make target `src/path.str' 
From: "James Keenan via RT" <parrotbug-followup@parrotcode.org>
Reply-To: parrotbug-followup@parrotcode.org
In-Reply-To: <parrotbug_0.6.1_5138_1183066905@li11-226>
References: <RT-Ticket-43420@perl.org> <parrotbug_0.6.1_5138_1183066905@li11-226>
Message-ID: <rt-3.6.HEAD-1276-1183072197-1786.43420-15-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43420
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: jkeen@verizon.net
Cc: perl6-internals@perl.org
To: "OtherRecipients of perl Ticket #43420": ;
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Date: Thu, 28 Jun 2007 16:09:58 -0700
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Binary searches suggest the error occurred between r19400 and r19424. 
Attempting to narrow it further.

      

o 2d  T6MwDzta
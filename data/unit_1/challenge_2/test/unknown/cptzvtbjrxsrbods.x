From perl6-all-return-82081-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 04:47:17 2007
Return-Path: <perl6-all-return-82081-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5J8lFL9027470
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 04:47:15 -0400
Received: (qmail 3415 invoked by uid 514); 19 Jun 2007 08:47:13 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3410 invoked from network); 19 Jun 2007 08:47:12 -0000
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
From: Allison Randal (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Tue, 19 Jun 2007 00:35:01 -0700
Subject: [perl #43249] [TODO] remove SMOP prototypes 
In-Reply-To: <46778624.2090409@perl.org>
References: <RT-Ticket-43249@perl.org> <46778624.2090409@perl.org>
Message-ID: <rt-3.6.HEAD-1276-1182238501-1266.43249-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43249
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: allison@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070619073501.AECC82B003@x3.develooper.com>
Resent-Date: Tue, 19 Jun 2007 00:35:01 -0700 (PDT)
Resent-From: rt-allison=perl.org@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Allison Randal 
# Please include the string:  [perl #43249]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43249 >


To be removed from the 0.4.14 release (deprecation notice given in 0.4.13).

  src/pmc/smop_class.pmc
  src/pmc/smop_attribute.pmc
  t/pmc/smop_attribute.t
  t/pmc/smop_class.t
  compilers/smop/ (entire directory)

Allison

              

crgg  z6i.Ne
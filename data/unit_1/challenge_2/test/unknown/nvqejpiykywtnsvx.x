From perl6-all-return-82044-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 19:36:04 2007
Return-Path: <perl6-all-return-82044-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HNa2L9011616
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 19:36:03 -0400
Received: (qmail 13927 invoked by uid 514); 17 Jun 2007 23:35:59 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 13922 invoked from network); 17 Jun 2007 23:35:59 -0000
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
Subject: [perl #43231] [BUG] :slurpy :named after :optional fails 
From: "Matt Diephouse via RT" <bugs-parrot-track@netlabs.develooper.com>
Reply-To: bugs-parrot-track@netlabs.develooper.com
In-Reply-To: <20070617022649.GA32017@host.pmichaud.com>
References: <RT-Ticket-43231@perl.org> <20070617022649.GA32017@host.pmichaud.com>
Message-ID: <rt-3.6.HEAD-7948-1182123339-602.43231-14-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43231
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: matt@diephouse.com
Cc: perl6-internals@perl.org
To: "OtherRecipients of perl Ticket #43231": ;
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Date: Sun, 17 Jun 2007 16:35:40 -0700
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Fixed in r19073.

--
Matt Diephouse


                


oG<

pYZ<
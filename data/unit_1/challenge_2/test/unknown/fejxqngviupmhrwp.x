From perl6-all-return-82375-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 23:42:48 2007
Return-Path: <perl6-all-return-82375-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5Q3gjL9005174
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 23:42:45 -0400
Received: (qmail 6680 invoked by uid 514); 26 Jun 2007 03:42:41 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6675 invoked from network); 26 Jun 2007 03:42:41 -0000
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
Subject: [perl #41915] [TODO] remove unused manifest-generating scripts 
From: "Bernhard Schmalhofer via RT" <parrotbug-followup@parrotcode.org>
Reply-To: parrotbug-followup@parrotcode.org
In-Reply-To: <rt-3.6.HEAD-12281-1178478598-725.41915-15-0@perl.org>
References: <RT-Ticket-41915@perl.org> <8e8ee0d40611161357l1c5e2fa7rea1e8a96d15e41cf@mail.gmail.com> <rt-3.6.HEAD-12281-1178478598-725.41915-15-0@perl.org>
Message-ID: <rt-3.6.HEAD-1276-1182795604-796.41915-15-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #41915
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: Bernhard.Schmalhofer@gmx.de
Cc: perl6-internals@perl.org
To: "OtherRecipients of perl Ticket #41915": ;
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Date: Mon, 25 Jun 2007 11:20:05 -0700
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On So. 06. Mai 2007, 12:09:58, bernhard wrote:

> TODO: Check whether Parrot::Distribution::gen_manifest_skip() can be used
> in mk_manifest_and_skip.pl or alternatively be deleted.

Parrot::Distribution::gen_manifest_skip() and subsequently
t/distro/manifest_skip.t have been broken for some time.

Does anybody mind if I remove them?

-- 
/* Bernhard.Schmalhofer <!-- x --> at gmx.de */

    

wrkhtic04eeniO
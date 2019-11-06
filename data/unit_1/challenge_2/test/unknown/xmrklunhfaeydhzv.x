From perl6-all-return-82416-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 10:23:29 2007
Return-Path: <perl6-all-return-82416-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SENRL9011702
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:23:28 -0400
Received: (qmail 29411 invoked by uid 514); 28 Jun 2007 14:23:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29406 invoked from network); 28 Jun 2007 14:23:23 -0000
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
From: Paul Cochrane (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Thu, 28 Jun 2007 07:22:38 -0700
Subject: [perl #43413] [TODO] Pass options to policies from perlcritic.t command line 
In-Reply-To: <8e8ee0d40706280722u693cf763uef5aeef7c75f1947@mail.gmail.com>
References: <RT-Ticket-43413@perl.org> <8e8ee0d40706280722u693cf763uef5aeef7c75f1947@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1276-1183040559-1321.43413-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43413
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070628142239.6C5882AFDA@x3.develooper.com>
Resent-Date: Thu, 28 Jun 2007 07:22:39 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43413]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43413 >


Hi,

In perlcritic.t i'd like to find a way to pass options to perlcritic
policies from the command line.  Options are passed as anonymous
hashes.  Basically, we want to be able to do something like:

perl t/codingstd/perlcritic.t --list
--policy=CodeLayout::ProhibitHardTabs=>{'allow_leading_tabs'=>0}

and it to give the output:

CodeLayout::ProhibitHardTabs => \{
   'allow_leading_tabs' => 0
 }

Such that the option of *not* allowing leading tabs is passed on to perlcritic.

Regards,

Paul

                   

a>qiP lepa4AQikp
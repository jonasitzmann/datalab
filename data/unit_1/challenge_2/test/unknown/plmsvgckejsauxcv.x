From perl6-all-return-81864-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 05:07:32 2007
Return-Path: <perl6-all-return-81864-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5797UhB032722
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 05:07:31 -0400
Received: (qmail 17082 invoked by uid 514); 7 Jun 2007 09:07:23 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17077 invoked from network); 7 Jun 2007 09:07:23 -0000
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
Date: Thu, 07 Jun 2007 02:06:47 -0700
Subject: [perl #43148] [TODO] Rename rpath hash element to be more general (config/init/hints/darwin.pm) 
In-Reply-To: <8e8ee0d40706070206j1c136540u4f54a773fef1d79a@mail.gmail.com>
References: <RT-Ticket-43148@perl.org> <8e8ee0d40706070206j1c136540u4f54a773fef1d79a@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1668-1181207207-1176.43148-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43148
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070607090647.5F50F2AFD4@x3.develooper.com>
Resent-Date: Thu,  7 Jun 2007 02:06:47 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43148]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43148 >


In the file:  config/init/hints/darwin.pm there is the todo item:

# This variable needs renaming to be more general
# XXX ugly hack for rpath_lib in config/inter/libparrot.pm

which occurs just before definition of the 'rpath' hash element of the
Config::Data object for Darwin.  The variable needs to be renamed (an
appropriate name needs to be found first) and the ugly hack for
rpath_lib needs to be implemented more nicely.  The link to
config/inter/libparrot.pm is unclear and should be clarified.

              

pEoe(regi/+Lfii
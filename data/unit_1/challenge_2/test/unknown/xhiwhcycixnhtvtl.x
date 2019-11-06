From perl6-all-return-82423-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 14:07:28 2007
Return-Path: <perl6-all-return-82423-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SI7RL9013929
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 14:07:27 -0400
Received: (qmail 2289 invoked by uid 514); 28 Jun 2007 18:07:23 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2284 invoked from network); 28 Jun 2007 18:07:22 -0000
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
Date: Thu, 28 Jun 2007 11:06:47 -0700
Subject: [perl #43417] Should we change the API of functions just for real_exception()? 
In-Reply-To: <8e8ee0d40706281106j105380dfx837ded6c17f0230c@mail.gmail.com>
References: <RT-Ticket-43417@perl.org> <8e8ee0d40706281106j105380dfx837ded6c17f0230c@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1276-1183054007-1098.43417-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43417
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070628180648.1B9C42AFE1@x3.develooper.com>
Resent-Date: Thu, 28 Jun 2007 11:06:48 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43417]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43417 >


Hi all,

As part of going through and converting internal_exception()s to
real_exception()s (see RT#40392) I've found several functions which
could use real_exception(), but to use this they would have to have
the interpreter passed in as an argument, hence changing their API.
Is it worth changing these functions' API just for a real_exception()?

Comments most definitely welcome!

Paul

                  

 ,s<nnA0
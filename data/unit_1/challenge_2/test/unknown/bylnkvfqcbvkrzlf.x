From perl6-all-return-81865-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 06:21:06 2007
Return-Path: <perl6-all-return-81865-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l57AL5hB000969
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 06:21:05 -0400
Received: (qmail 5794 invoked by uid 514); 7 Jun 2007 10:20:58 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 5789 invoked from network); 7 Jun 2007 10:20:57 -0000
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
Date: Thu, 07 Jun 2007 03:20:14 -0700
Subject: [perl #43149] [TODO] Fake header entry necessary in config/init/hints/linux.pm? 
In-Reply-To: <8e8ee0d40706070319s558df53fof1659131e59675b1@mail.gmail.com>
References: <RT-Ticket-43149@perl.org> <8e8ee0d40706070319s558df53fof1659131e59675b1@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1668-1181211614-944.43149-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43149
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070607102015.48CF42AFD7@x3.develooper.com>
Resent-Date: Thu,  7 Jun 2007 03:20:15 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43149]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43149 >


In config/init/hints/linux.pm there is a "todo" item (it looks more
like just a note, but I'm being fairly pedantic in converting todo
items in the code into RT tickets).  The relevant line of code is
(which is part of setting the configuration data):

i_lib_pthread  => 1,                 # XXX fake a header entry

Is this comment necessary, or should it be altered to better reflect
what is happening in the code at this point?  Is there actually a todo
item lurking here which isn't obvious?

          

Qcoe"t>8=rwaJlnD
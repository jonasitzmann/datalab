From perl6-all-return-81878-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 09:54:30 2007
Return-Path: <perl6-all-return-81878-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l58DsThB015974
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 09:54:29 -0400
Received: (qmail 14384 invoked by uid 514); 8 Jun 2007 13:54:22 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14379 invoked from network); 8 Jun 2007 13:54:21 -0000
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
Date: Fri, 08 Jun 2007 06:53:46 -0700
Subject: [perl #43172] [TODO] Is interactive configuration step necessary in config/inter/pmc.pm? 
In-Reply-To: <8e8ee0d40706080653o145b636q70cbad6160ba8e12@mail.gmail.com>
References: <RT-Ticket-43172@perl.org> <8e8ee0d40706080653o145b636q70cbad6160ba8e12@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1668-1181310826-624.43172-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43172
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070608135347.55F472AFD7@x3.develooper.com>
Resent-Date: Fri,  8 Jun 2007 06:53:47 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43172]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43172 >


In the file config/inter/pmc.pm, there is the comment:

    # XXX:leo do we really need an interactive step for this
    # user could deactivate vital PMCs like SArray
    # so there would be tests needed, that check for vital classes

This relates to a user prompt which asks the users which PMCs they
would like to include.  Unfortunately, the user could deactivate vital
PMCs, so maybe this isn't such a good idea.  This todo item needs to
be discussed and it needs to be decided how to resolve the (potential)
problem here.

        

:h0zD<dJ
rla
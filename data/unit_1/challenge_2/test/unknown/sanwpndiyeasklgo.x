From perl6-all-return-81877-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 09:48:52 2007
Return-Path: <perl6-all-return-81877-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l58DmphB015911
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 09:48:52 -0400
Received: (qmail 12953 invoked by uid 514); 8 Jun 2007 13:48:44 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 12948 invoked from network); 8 Jun 2007 13:48:44 -0000
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
Date: Fri, 08 Jun 2007 06:48:12 -0700
Subject: [perl #43171] [TODO] replace the value for $(MAKE) with the actual path (config/inter/make.pm) 
In-Reply-To: <8e8ee0d40706080647y360f7160rbe3486d31bc93e36@mail.gmail.com>
References: <RT-Ticket-43171@perl.org> <8e8ee0d40706080647y360f7160rbe3486d31bc93e36@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-1668-1181310492-1965.43171-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43171
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: paultcochrane@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-RT-Original-Encoding: utf-8
Resent-Message-Id: <20070608134812.9A9132AFD7@x3.develooper.com>
Resent-Date: Fri,  8 Jun 2007 06:48:12 -0700 (PDT)
Resent-From: rt-paultcochrane=gmail.com@netlabs.develooper.com
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

# New Ticket Created by  Paul Cochrane 
# Please include the string:  [perl #43171]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43171 >


In the file config/inter/make.pm, there is the following todo item:

        # FIXME this is an ugly hack
        # replace the value for $(MAKE) with the actual path or we'll end up
        # with a variable that recursively refers to itself

This problem needs to be corrected.

                

Di1"
fos-i'
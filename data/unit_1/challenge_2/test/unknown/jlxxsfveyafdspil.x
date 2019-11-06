From perl6-all-return-82210-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 19:04:21 2007
Return-Path: <perl6-all-return-82210-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LN4KL9030644
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 19:04:20 -0400
Received: (qmail 28829 invoked by uid 514); 21 Jun 2007 23:04:17 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28824 invoked from network); 21 Jun 2007 23:04:17 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
X-Spam-Checker-Version: SpamAssassin 3.1.8 (2007-02-13) on pluna
X-Spam-Level: 
Date: Fri, 22 Jun 2007 01:03:34 +0200
From: pancake <pancake@youterm.com>
To: perl6-internals@perl.org
Subject: parrot question and stacked patches
Message-Id: <20070622010334.fba9c58a.pancake@youterm.com>
Organization: nopcode
X-Mailer: Sylpheed 2.4.1 (GTK+ 2.10.12; i386-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Status: No, score=0.0 required=3.0 tests=AWL autolearn=disabled
	version=3.1.8
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

I have sent two PRs for pdb and I have a third one not yet commited.

http://rt.perl.org/rt3//Ticket/Display.html?id=31159
http://rt.perl.org/rt3//Ticket/Display.html?id=37287

My third patch is about http://rt.perl.org/rt3//Ticket/Display.html?id=31163
(list breakpoints).

Ok, after the presentations.. I have some problems for writing the patches
because more than one bug report matches the same source file, and i have to
wait everytime for commits before doing anything more. I understand that this
is my problem and I should be pacient, but on pdb there are a lot of broken
things that are difficult to split into multiple patches.

My third patch fixes the problem of the 'help' command when calling it with arguments
and implements the 'breaks' command to list all defined breakpoints, it also makes some
little code cleanup.

My question is. How can I translate a opcode_t into a file:line message?

Thanks! 

  --pancake

       

e.ae mqIu;o 
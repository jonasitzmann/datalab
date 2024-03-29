From perl6-all-return-82492-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 19:16:36 2007
Return-Path: <perl6-all-return-82492-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61NGZL9006483
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 19:16:35 -0400
Received: (qmail 7975 invoked by uid 514); 1 Jul 2007 23:16:30 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7963 invoked from network); 1 Jul 2007 23:16:30 -0000
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18056.13346.117062.122876@rgrjr.dyndns.org>
Date: Sun, 1 Jul 2007 19:09:22 -0400
From: Bob Rogers <rogers-perl6@rgrjr.dyndns.org>
To: perl6-internals@perl.org
CC: bugs-bitbucket@netlabs.develooper.com
Subject: [perl #43462] [PATCH] some clearups, illegal memory accessing 
In-Reply-To: <rt-3.6.HEAD-1276-1183287230-1103.43462-72-0@perl.org>
References: <RT-Ticket-43462@perl.org>
	<4687879D.4090902@gmail.com>
	<rt-3.6.HEAD-1276-1183287230-1103.43462-72-0@perl.org>
X-Mailer: VM 7.19 under Emacs 22.1.50.1
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_PBL,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_PASS

   From: Bram Geron (via RT) <parrotbug-followup@parrotcode.org>
   Date: Sun, 01 Jul 2007 03:53:50 -0700

   # New Ticket Created by  Bram Geron 
   # Please include the string:  [perl #43462]
   # in the subject line of all future correspondence about this issue. 
   # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43462 >

   . . .

   Secondly, I discovered that when you're using -D80, Parrot_free_context
   prints out the name of the 'sub' that the context was made for. I think
   we can't rely on the sub being there, as this example will show:

   - Create closure A over main.
   - Invoke closure A, creating context B.
     - Create closure C over closure A, storing a ref to context B (but not
       to closure A). Store it in a global var maybe.
   - Exit closure A. There is one less reference to context B.
   - Empty the global var holding closure C.
   - Free closure C. Now context B can be freed too:
     [free  ctx 0x12345678 of sub '<accessing freed memory here>']

   I got a segfault for it, but my test case is too large to attach and I
   think it will be hard to get the size down. It isn't very legible anyway.

I think you will have to send me your test case, or at least a more
detailed recipe.  I do not see how the above sequence of events can lead
to a dangling reference to a deleted sub -- unless there is also a GC
bug, in which case I am unlikely to be able to reproduce the problem
from just a description.

   If this is really a GC problem, then you may be able to get your test
case smaller by inserting "sweep 1" shortly before the point that it
fails.  HTH,

					-- Bob

                

iEtU0P;.ohA
From perl6-all-return-81742-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 22:46:43 2007
Return-Path: <perl6-all-return-81742-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l522kghB017861
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 22:46:42 -0400
Received: (qmail 2467 invoked by uid 514); 2 Jun 2007 02:46:35 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2462 invoked from network); 2 Jun 2007 02:46:35 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS
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
Message-ID: <18016.55714.879912.186306@rgrjr.dyndns.org>
Date: Fri, 1 Jun 2007 22:44:50 -0400
From: Bob Rogers <rogers-perl6@rgrjr.dyndns.org>
To: perl6-internals@perl.org
CC: bugs-bitbucket@netlabs.develooper.com
Subject: [perl #43107] t/tools/pmc2cutils/05-gen_c:  Warnings being thrown in testing of Parrot::Pmc2c::Pmc2cMain 
In-Reply-To: <rt-3.6.HEAD-1668-1180741566-713.43107-72-0@perl.org>
References: <RT-Ticket-43107@perl.org>
	<parrotbug_0.6.1_20809_1180741032@li11-226>
	<rt-3.6.HEAD-1668-1180741566-713.43107-72-0@perl.org>
X-Mailer: VM 7.19 under Emacs 22.1.50.1
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.6 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FH_HOST_EQ_D_D_D_D,RDNS_DYNAMIC,SPF_PASS

   From: James Keenan (via RT) <parrotbug-followup@parrotcode.org>
   Date: Fri, 01 Jun 2007 16:46:06 -0700

   Tonight, on both Linux and Darwin, I configured with the '--test' option to
   Configure.pl that runs, among other things, the build tools tests once
   Configure.pl itself has completed.  These tests generally always pass -- and
   they did so tonight -- but tonight one test ran with warnings not previously
   seen . . .

   . . .

   I suspect the problem is to be found either in lib/Parrot/Pmc2c/Pmc2cMain.pm
   or in src/pmc/default.c.  Could whoever has been working on these files in the
   past few days please take a look at this?  The warnings are of very recent
   origin.

   Thank you very much.
   kid51

This is from the "Small tweak to Pmc2c.pm" I posted on 19-May and
committed as r18646 on 26-May.  Note that lib/Parrot/Pmc2c.pm is not
actually doing anything different now, it's just telling you that none
of the code for these methods is being used in the generated C file.  So
they are certainly not being tested now, and possibly haven't been for a
while.

					-- Bob Rogers
					   http://rgrjr.dyndns.org/

     

r AGjawT:/
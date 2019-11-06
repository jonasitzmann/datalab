From perl6-all-return-82530-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 18:31:12 2007
Return-Path: <perl6-all-return-82530-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63MV9L9002308
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 18:31:09 -0400
Received: (qmail 2520 invoked by uid 514); 3 Jul 2007 22:31:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2515 invoked from network); 3 Jul 2007 22:31:04 -0000
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
From: Nuno Carvalho (via RT) <parrotbug-followup@parrotcode.org>
X-RT-NewTicket: yes
To: bugs-bitbucket@netlabs.develooper.com
Resent-To: perl6-internals@perl.org
Mail-Followup-To: perl6-internals@perl.org
Reply-To: perl6-internals@perl.org
Date: Tue, 03 Jul 2007 13:19:56 -0700
Subject: [perl #43513] [docs] new content in book/ch01_overview.pod 
In-Reply-To: <f5f3b0cb0707031319r4185c76do356c921e53c9c3ab@mail.gmail.com>
References: <RT-Ticket-43513@perl.org> <f5f3b0cb0707031319r4185c76do356c921e53c9c3ab@mail.gmail.com>
Message-ID: <rt-3.6.HEAD-25329-1183493996-821.43513-72-0@perl.org>
X-RT-Loop-Prevention: perl
RT-Ticket: perl #43513
Managed-by: RT 3.6.HEAD (http://www.bestpractical.com/rt/)
RT-Originator: mestre.smash@gmail.com
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Content-type: multipart/mixed; boundary="----------=_1183493996-25329-7"
Resent-Message-Id: <20070703201956.F3D942AFDE@x3.develooper.com>
Resent-Date: Tue,  3 Jul 2007 13:19:56 -0700 (PDT)
Resent-From: rt-mestre.smash=gmail.com@netlabs.develooper.com
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

------------=_1183493996-25329-7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

# New Ticket Created by  Nuno Carvalho 
# Please include the string:  [perl #43513]
# in the subject line of all future correspondence about this issue. 
# <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43513 >


Hi all,

 I spent some time around docs/book/ch01_overview.pod. Since most of
this chapter is not very technical it's still pretty much up to date.
I added a lot of info about roles and responsabilities to the project
overview based in RESPONSIBLE_PARTIES, docs/roles_responsibilities.pod
 and docs/project/*. I'm still in a bit of a struggle with pseudopod
tags, so bear with me on this please. You can find a patch for
ch01_overview.pod attached to this message.

 Any comments / ideias would be nice, thank you in advance.

Best regards,
./smash

------------=_1183493996-25329-7
Content-Type: text/x-patch; charset="ANSI_X3.4-1968"; name="book_ch01.diff"
Content-Disposition: inline; filename="book_ch01.diff"
Content-Transfer-Encoding: 7bit
RT-Attachment: 43513/267139/116877

Index: docs/book/ch01_overview.pod
===================================================================
--- docs/book/ch01_overview.pod	(revision 19559)
+++ docs/book/ch01_overview.pod	(working copy)
@@ -52,12 +52,7 @@
 garbage collection and dynamic types, designers can write a parser
 that targets the Parrot virtual machine.
 
-X<Randal, Allison>
-X<Salzenberg, Chip>
-X<Coleda, Will>
-Allison Randal leads the Parrot project as chief architect, Chip
-Salzenberg is the current pumpking, and Will Coleda is the project
-manager. As is typical of open source development projects, managing the
+As is typical of open source development projects, managing the
 Parrot project is quite different from managing a commercial project of
 the same size and complexity.  There are no schedules, no deadlines, no
 hiring and firing, and no salaries, bonuses, or stock options. There are
@@ -65,8 +60,159 @@
 Management in this context isn't about giving orders, it's about making
 sure everyone has what they need to keep moving forward.
 
-[Insert info about release managers, cage cleaners, patch monsters, etc.]
+This is a list of project roles, with a partial list of the folks who have
+taken responsibility for them.
 
+=head2 Project Team
+X<Project Team>
+
+=over 4
+
+=item Architect
+
+The architect has primary responsibility for setting overall direction of the
+project, and to facilitate team communication and understanding of
+architectural issues. The architect is primarily but not solely responsible
+for making design decisions and documenting them in Parrot Design Documents;
+responsibility for design and design documentation of project subcomponents
+may be given to other members of the Project Team, or may be held jointly.
+The Architect also works with the Pumpking and Release Managers to develop and
+maintain the release schedule. Allison RandalX<Randal, Allison> leads the 
+Parrot project as chief architect.
+
+=item Pumpking
+
+The Pumpking has primary responsibility for the project source. The Pumpking
+is the lead developer, and as such reviews patches, defines coding standards,
+and assists the efforts of Committers and Contributors. The Pumpking also
+develops and maintains the release schedule with the Architect and Release
+Managers. Chip SalzenbergX<Salzenberg, Chip> is the current pumpking.
+
+=item Release Managers
+
+Release managers have responsibility for executing a product release,
+according to the release schedule. The release schedule is developed and
+maintained jointly with the Architect and the Pumpking.
+
+Current release managers are, in this order:
+
+    Jerry Gay
+X<Gay, Jerry>
+    Patrick Michaud
+X<Michaud, Patrick>
+    Matt Diephouse
+X<Diephouse, Matt>
+    Will Coleda
+X<Coleda, Will>
+    chromatic
+X<chromatic>
+    Allison Randal
+X<Randal, Allison>
+
+Information on the release procedure can be found in 
+F<docs/project/release_manager_guide.pod>.
+
+=item Metacommitter
+
+All Metacommitters are responsible for managing commit access to the Parrot
+repository. Once the Architect or Pumpking approves a request for a
+Contributor to be given commit access, a Metacommitter provides that access.
+The Architect and Pumpking are Metacommitters, but other Project Team members
+may also hold this role.
+
+Current metacommitters are:
+
+    Allison Randal
+X<Randal, Allison>
+    Chip Salzenberg
+X<Salzenberg, Chip>
+    Jerry Gay
+X<Gay, Jerry>
+    Will Coleda
+X<Coleda, Will>
+    Jesse Vincent
+X<Vincent, Jesse>
+
+The procedure on how to manage the list of Parrot committers can be found in 
+F<docs/project/metacommiter_guide.pod>.
+
+=back
+
+=head2 Committers
+
+X<Committers>
+Contributors who submit numerous, high-quality patches may be considered to
+become a Committer. Committers have commit access to the full Parrot
+repository, but generally work only on one or more subprojects; Committer
+categories are described below. Contributors may considered for commit access
+either by being nominated by another Committer, or by asking for it.
+
+=over 4
+
+=item Core Developer
+
+Develops and maintains core subsystems (e.g. IO, Exceptions).
+
+=item Compiler Developer
+
+Develops and maintains one or more Parrot compilers (e.g. IMCC, PGE, TGE).
+
+=item High Level Language Developer
+
+Develops and maintains one or more High Level Languages (e.g. Tcl, Lua, 
+Perl 6).
+
+=item Build Manager
+
+Maintains and extends configure and build subsystems. Reviews smoke reports
+and attempts to extend platform support.
+
+=item Lead Tester
+
+Develops, maintains, and extends test suite and testing tools. Responsible
+for testing goals, including complete coverage of core components on targeted
+platforms.
+
+=item Platform Porter
+
+Develops and maintains installation packages on various platforms.
+
+=item Patch Monsters
+
+Reviews and applies patches submitted by general contributors, keeping an eye
+on conformance with coding standards and desirability of features.
+
+=back
+
+A list of committers that have a role they've taken responsibility for can
+be found in F<RESPONSIBLE_PARTIES>.
+
+=head2 Contributors
+X<Contributors>
+
+=over 4
+
+=item Cage Cleaners
+
+Fixes failing tests, makes sure coding standards are implemented, reviews
+documentation and examples. A class of tickets in the tracking system (RT) has
+been created for use by this group. This position encompasses tasks from entry
+level to advanced, and is a good way to get familiar with Parrot internals.
+
+=item General Contributor
+
+Contributors are volunteers who write code or documentation patches, take
+part in email or online conversations, or contribute to the project in other
+ways. All volunteer contributions are appreciated and recognized. All
+volunteers who contribute to a file in the Parrot repository may add their
+name to the F<CREDITS> file.
+
+=back
+
+The list of general contributors can be found in F<CREDITS>.
+
+=head2 Furthermore
+
 X<Hansen, Ask BjE<oslash>rn>
 X<Spier, Robert>
 Last, but not least, is the glue that holds the project together.  Ask
@@ -83,10 +229,27 @@
 =head2 Where to go
 
 X<Parrot;mailing lists>
-The core communication line for the Parrot project is the mailing list,
-U<parrot-porters@perl.org>, otherwise known as "p2." Workflow in Parrot takes
-the form of submitted patches. Anyone is free to submit a patch, and
-contributors who consistently submit valuable patches over a long period of
-time are granted check-in access to the CVS repository.
+The mailing list for parrot is parrot-porters.  Subscribe by sending mail to
+U<perl6-internals-subscribe@perl.org>. It is archived at
+U<http://www.nntp.perl.org/group/perl.perl6.internals>
+and available via NNTP at U<nntp://nntp.perl.org/perl.perl6.internals>.
 
+You can also read the list via Google Groups at
+U<http://groups-beta.google.com/group/perl.perl6.internals>
+
+X<Parrot;sites>
+The following web sites have all the Parrot information you need:
+
+=over 4
+
+=item * U<http://www.parrotcode.org>
+
+=item * U<http://dev.perl.org/perl6>
+
+=item * U<http://bugs6.perl.org>
+
+=item * U<http://pugscode.org>
+
+=back
+
 =cut

------------=_1183493996-25329-7--

        

3e"Zumet:OmhV\
From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  9 01:22:14 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l595MEL9005559
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 9 Jun 2007 01:22:14 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 52C30163865
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  9 Jun 2007 05:22:14 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 1B7F1162BCF; Sat,  9 Jun 2007 05:21:44 +0000 (GMT)
Date: Sat, 09 Jun 2007 14:44:52 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070609052144.1B7F1162BCF@lists.samba.org>
Subject: Rev 514: merge from ronnie in http://samba.org/~tridge/ctdb
X-BeenThere: samba-cvs@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: samba-technical@lists.samba.org
List-Id: Samba CVS and subversion commit messages <samba-cvs.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-cvs>
List-Post: <mailto:samba-cvs@lists.samba.org>
List-Help: <mailto:samba-cvs-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-cvs>,
	<mailto:samba-cvs-request@lists.samba.org?subject=subscribe>
Sender: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

------------------------------------------------------------
revno: 514
revision-id: tridge@samba.org-20070609044452-gud3ha36z19wbvf0
parent: tridge@samba.org-20070608044028-xq7t0yrw18d6r1eb
parent: sahlberg@ronnie-20070609035531-3czj4em17pohyjhx
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sat 2007-06-09 14:44:52 +1000
message:
  merge from ronnie
added:
  doc/                           doc-20070608070258-bjuf7701h1qc1b05-1
  doc/ctdb.1                     ctdb.1-20070609004027-2618fsab2br6vqha-1
  doc/ctdb.1.html                ctdb.1.html-20070609004024-w2r7qblwi5s3iw4a-1
  doc/ctdb.1.xml                 ctdb.1.xml-20070608070258-bjuf7701h1qc1b05-2
  web/ftp.html                   ftp.html-20070609033412-pwzhwyuj4qnifmmm-1
  web/nfs.html                   nfs.html-20070608234340-a8i1dxro7a7i6jz6-1
  web/samba.html                 samba.html-20070608233143-cblz5ezz3qu11089-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  tools/ctdb.c                   ctdb_control.c-20070426122705-9ehj1l5lu2gn9kuj-1
  web/index.html                 ctdb.html-20070601052353-vgod9lfo4an4o83j-2
  web/testing.html               starting_and_testing-20070608025718-naa5fgl4tuhgdl8r-1
    ------------------------------------------------------------
    revno: 432.1.55
    merged: sahlberg@ronnie-20070609035531-3czj4em17pohyjhx
    parent: sahlberg@ronnie-20070609035407-wsz7e9d24z6pal2u
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 13:55:31 +1000
    message:
      typo
    ------------------------------------------------------------
    revno: 432.1.54
    merged: sahlberg@ronnie-20070609035407-wsz7e9d24z6pal2u
    parent: sahlberg@ronnie-20070609033633-wk57masnkgtvkw7d
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 13:54:07 +1000
    message:
      show how to start the newly configured vsftpd service  by disabling and 
      enabling the nodes one by one instead of restarting the cluster.
    ------------------------------------------------------------
    revno: 432.1.53
    merged: sahlberg@ronnie-20070609033633-wk57masnkgtvkw7d
    parent: sahlberg@ronnie-20070609032442-47nxub6936b1r488
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 13:36:33 +1000
    message:
      add instructions on how to set up HA-FTP using vsftpd and ctdb
    ------------------------------------------------------------
    revno: 432.1.52
    merged: sahlberg@ronnie-20070609032442-47nxub6936b1r488
    parent: sahlberg@ronnie-20070609031724-x1rm2r1ht6mz50eq
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 13:24:42 +1000
    message:
      add links to how to configure samba/nfs in the samba/nfs sections
    ------------------------------------------------------------
    revno: 432.1.51
    merged: sahlberg@ronnie-20070609031724-x1rm2r1ht6mz50eq
    parent: sahlberg@ronnie-20070609004035-27k5xith8eaidth2
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 13:17:24 +1000
    message:
      fix typo
    ------------------------------------------------------------
    revno: 432.1.50
    merged: sahlberg@ronnie-20070609004035-27k5xith8eaidth2
    parent: sahlberg@ronnie-20070608234405-h80dwzn65c9gfw6f
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 10:40:35 +1000
    message:
      add the generated manpage for ctdb   so that it is available also for 
      people that do not intend to rebuild the docs
    ------------------------------------------------------------
    revno: 432.1.49
    merged: sahlberg@ronnie-20070608234405-h80dwzn65c9gfw6f
    parent: sahlberg@ronnie-20070608233156-4t2b8scmh8v5azif
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 09:44:05 +1000
    message:
      add a page on how to configure clustered nfs
    ------------------------------------------------------------
    revno: 432.1.48
    merged: sahlberg@ronnie-20070608233156-4t2b8scmh8v5azif
    parent: sahlberg@ronnie-20070608232352-7nnegh7p3dpnsq0t
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 09:31:56 +1000
    message:
      add a page for configuring samba
    ------------------------------------------------------------
    revno: 432.1.47
    merged: sahlberg@ronnie-20070608232352-7nnegh7p3dpnsq0t
    parent: sahlberg@ronnie-20070608224136-uc8ssl1ifyajpu0e
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 09:23:52 +1000
    message:
      put the text in "generation" inside a para block
    ------------------------------------------------------------
    revno: 432.1.46
    merged: sahlberg@ronnie-20070608224136-uc8ssl1ifyajpu0e
    parent: sahlberg@ronnie-20070608215437-fclidsoorxwcty45
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 08:41:36 +1000
    message:
      add an initial manpage for the ctdb tool
    ------------------------------------------------------------
    revno: 432.1.45
    merged: sahlberg@ronnie-20070608215437-fclidsoorxwcty45
    parent: sahlberg@ronnie-20070608053607-l2onq1t3npav7aro
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 07:54:37 +1000
    message:
      update the blurb for the setmonmode control      it takes 0 or 1 as a 
      parameter depending on whether one wants to disabel or enable monitoring
    ------------------------------------------------------------
    revno: 432.1.44
    merged: sahlberg@ronnie-20070608053607-l2onq1t3npav7aro
    parent: sahlberg@ronnie-20070608025730-zdqrfsakjc36jvcc
    parent: tridge@samba.org-20070608044028-xq7t0yrw18d6r1eb
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Fri 2007-06-08 15:36:07 +1000
    message:
      merge from tridge

Diff too large for email (1417, the limit is 200).

                

R.NE  
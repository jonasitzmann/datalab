From samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 10 03:39:32 2007
Return-Path: <samba-cvs-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5A7dWL9019153
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 03:39:32 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 4A5DF163842
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 10 Jun 2007 07:39:31 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,NO_REAL_NAME,
	NO_RELAYS autolearn=no version=3.1.7
X-Original-To: samba-cvs@samba.org
Delivered-To: samba-cvs@samba.org
Received: by lists.samba.org (Postfix, from userid 603)
	id 97DEC162AEF; Sun, 10 Jun 2007 07:38:47 +0000 (GMT)
Date: Sun, 10 Jun 2007 17:28:55 +1000
To: samba-cvs@samba.org
From: tridge@samba.org
Message-Id: <20070610073847.97DEC162AEF@lists.samba.org>
Subject: Rev 527: merge from ronnie in http://samba.org/~tridge/ctdb
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
revno: 527
revision-id: tridge@samba.org-20070610072854-ztge8lpr11iz7o5n
parent: tridge@samba.org-20070609235427-i455c32lojxd83vj
parent: sahlberg@ronnie-20070610044642-wktx698wu5ljb57q
committer: Andrew Tridgell <tridge@samba.org>
branch nick: tridge
timestamp: Sun 2007-06-10 17:28:54 +1000
message:
  merge from ronnie
added:
  doc/ctdbd.1                    ctdbd.1-20070610004249-06awdka4n3gyea3w-1
  doc/ctdbd.1.html               ctdbd.1.html-20070610004253-y2xxgjfgnpsucekc-1
  doc/ctdbd.1.xml                ctdbd.1.xml-20070610004256-jh1qq0ws5zidbmbq-1
modified:
  Makefile.in                    makefile.in-20061117234101-o3qt14umlg9en8z0-1
  doc/ctdb.1                     ctdb.1-20070609004027-2618fsab2br6vqha-1
  doc/ctdb.1.html                ctdb.1.html-20070609004024-w2r7qblwi5s3iw4a-1
  doc/ctdb.1.xml                 ctdb.1.xml-20070608070258-bjuf7701h1qc1b05-2
  packaging/RPM/ctdb.spec        ctdb.spec-20070527204758-biuh7znabuwan3zn-3
  web/documentation.html         documentation.html-20070609045837-x3vec3l27niwxtfg-1
    ------------------------------------------------------------
    revno: 432.1.72
    merged: sahlberg@ronnie-20070610044642-wktx698wu5ljb57q
    parent: sahlberg@ronnie-20070610042850-ohbxzyor0yp4qwc1
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 14:46:42 +1000
    message:
      add descriptions of the options for the ctdb command
    ------------------------------------------------------------
    revno: 432.1.71
    merged: sahlberg@ronnie-20070610042850-ohbxzyor0yp4qwc1
    parent: sahlberg@ronnie-20070610010329-q6f55qgk10wcmsoz
    parent: tridge@samba.org-20070609235427-i455c32lojxd83vj
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 14:28:50 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.70
    merged: sahlberg@ronnie-20070610010329-q6f55qgk10wcmsoz
    parent: sahlberg@ronnie-20070610004552-yg6fbskzyy6anzfl
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 11:03:29 +1000
    message:
      add a link to the ctdbd man page 
    ------------------------------------------------------------
    revno: 432.1.69
    merged: sahlberg@ronnie-20070610004552-yg6fbskzyy6anzfl
    parent: sahlberg@ronnie-20070609225344-6w7d03tp06fe04rd
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 10:45:52 +1000
    message:
      initial ctdbd man page
    ------------------------------------------------------------
    revno: 432.1.68
    merged: sahlberg@ronnie-20070609225344-6w7d03tp06fe04rd
    parent: sahlberg@ronnie-20070609221409-v357kelgi6ndaf6z
    parent: tridge@samba.org-20070609224633-eo5a0r2uf2u83u3q
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 08:53:44 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.67
    merged: sahlberg@ronnie-20070609221409-v357kelgi6ndaf6z
    parent: sahlberg@ronnie-20070609115224-22jyvei6hm883fyi
    parent: tridge@samba.org-20070609115850-l2fqzlhyvl68lzrl
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sun 2007-06-10 08:14:09 +1000
    message:
      merge from tridge
    ------------------------------------------------------------
    revno: 432.1.66
    merged: sahlberg@ronnie-20070609115224-22jyvei6hm883fyi
    parent: sahlberg@ronnie-20070609101325-65apvsghait3cob6
    parent: tridge@samba.org-20070609114706-yyeee2n33bdie2jb
    committer: Ronnie Sahlberg <sahlberg@ronnie>
    branch nick: ctdb
    timestamp: Sat 2007-06-09 21:52:24 +1000
    message:
      merge from tridge

Diff too large for email (1272, the limit is 200).

             

mhr,shprr:wSb
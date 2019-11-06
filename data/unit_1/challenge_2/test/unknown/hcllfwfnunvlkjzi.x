From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 07:41:07 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57Bf6hB001651
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 07:41:06 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 83E89163874
	for <ktwarwic@speedy.uwaterloo.ca>; Thu,  7 Jun 2007 11:40:59 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id 8833B162AC8
	for <samba-technical@lists.samba.org>;
	Thu,  7 Jun 2007 11:40:29 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-technical@lists.samba.org
	id 1HwGLt-00059e-3k; Thu, 07 Jun 2007 13:40:29 +0200
Received: by intern.SerNet.DE
	id 1HwGLs-0002Wf-P5; Thu, 07 Jun 2007 13:40:28 +0200
Received: by intern.SerNet.DE
	id 1HwGLs-0002Wc-I1; Thu, 07 Jun 2007 13:40:28 +0200
Received: from bjacke by pell.sernet.de with local (Exim 4.63)
	(envelope-from <bjacke@sernet.de>) id 1HwGLS-0000P8-Kp
	for samba-technical@lists.samba.org; Thu, 07 Jun 2007 13:40:02 +0200
Date: Thu, 7 Jun 2007 13:40:02 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= JACKE <bj@SerNet.DE>
To: samba-technical@lists.samba.org
Mail-Followup-To: samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Message-Id: <E1HwGLs-0002Wf-P5@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: autogen.sh fix for non-GNU systems
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

... like Solaris, which don't support things like [:alpha:] in tr.

If nobody says NO, can somebody check that in?

Thanks
Bjoern
-- 
SerNet GmbH, Bahnhofsallee 1b, 37081 G�ttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG G�ttingen, HRB 2816, GF: Dr. Johannes Loxen

--ReaqsoxgOBHFXBhH
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="solaris-autogen-fix.patch"

Index: autogen.sh
===================================================================
--- autogen.sh	(Revision 23362)
+++ autogen.sh	(Arbeitskopie)
@@ -16,7 +16,7 @@
 ##
 for i in $TESTAUTOHEADER; do
 	if which $i > /dev/null 2>&1; then
-		if test `$i --version | head -n 1 | cut -d.  -f 2 | tr -d [:alpha:]` -ge 53; then
+		if test `$i --version | head -n 1 | cut -d.  -f 2 | sed "s/[^0-9]//g"` -ge 53; then
 			AUTOHEADER=$i
 			AUTOHEADERFOUND="1"
 			break
@@ -30,7 +30,7 @@
 
 for i in $TESTAUTOCONF; do
 	if which $i > /dev/null 2>&1; then
-		if test `$i --version | head -n 1 | cut -d.  -f 2 | tr -d [:alpha:]` -ge 53; then
+		if test `$i --version | head -n 1 | cut -d.  -f 2 | sed "s/[^0-9]//g"` -ge 53; then
 			AUTOCONF=$i
 			AUTOCONFFOUND="1"
 			break

--ReaqsoxgOBHFXBhH--

             

b3>� 0e
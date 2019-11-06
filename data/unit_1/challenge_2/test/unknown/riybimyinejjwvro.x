From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun 30 18:43:24 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UMhOL9012554
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 18:43:24 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 44C59163831
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 22:43:20 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AB895162BD8;
	Sat, 30 Jun 2007 22:42:32 +0000 (GMT)
From: simo <idra@samba.org>
To: "Gerald (Jerry) Carter" <jerry@samba.org>
In-Reply-To: <4686DB8E.2080409@samba.org>
References: <11832417882495-git-send-email-jerry@samba.org>
	<1183242652.2895.232.camel@localhost.localdomain>
	<4686DB8E.2080409@samba.org>
Content-Type: text/plain
Organization: Samba Team
Date: Sat, 30 Jun 2007 22:42:32 +0000
Message-Id: <1183243352.2895.235.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
Content-Transfer-Encoding: 7bit
Cc: gd@samba.org, jra@samba.org, samba-technical@samba.org
Subject: Re: [PATCH] Implement simple means of supporting pam_winbind UPNB
	logins.
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

On Sat, 2007-06-30 at 17:39 -0500, Gerald (Jerry) Carter wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> simo wrote:
> > From what I can see translate_upn_username() is used 
> > only to replace real_username in pam_sm_authenticate()
> > But in that function real_username is used only for 
> > debugging purposes. So, why always going through 2
> > winbindd calls (WINBINDD_LOOKUPNAME and WINBINDD_LOOKUPSID)
> > just to have the resolved name in debugging output?
> 
> Ahh...Sorry.  Looks like the AIX support in SAMBA_3_0's
> pam_winbind is broken.  So the patch is a bad merge then.
> Assume that real_username is passed to winbind_auth_request().
> I fix the patch.  But the basic means of supporting
> UPN logons stays the same.

Ok, but in this case, why don't you simply pass the unresolved name to
winbind_auth_request() and let winbindd resolve internally the name?
I am not a fan of doing stuff on the "client" side of the fence.

Simo.

-- 
Simo Sorce
Samba Team GPL Compliance Officer
email: idra@samba.org
http://samba.org

 

tu5EGt toc/
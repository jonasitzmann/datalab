From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun 12 01:00:26 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C50PL9022471
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 01:00:25 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C85A516386A
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 12 Jun 2007 05:00:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.8 tests=BAYES_20, DNS_FROM_RFC_ABUSE, 
	DNS_FROM_RFC_POST,NO_MORE_FUNN,RCVD_IN_BLARS_RBL,SPF_PASS 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
X-Greylist: delayed 3614 seconds by postgrey-1.24 at dp.samba.org;
	Tue, 12 Jun 2007 04:59:44 GMT
Received: from vms042pub.verizon.net (vms042pub.verizon.net [206.46.252.42])
	by lists.samba.org (Postfix) with ESMTP id 75F3D162AD9
	for <samba-technical@lists.samba.org>;
	Tue, 12 Jun 2007 04:59:44 +0000 (GMT)
Received: from [192.168.1.5] ([71.245.164.28])
	by vms042.mailsrvcs.net (Sun Java System Messaging Server 6.2-6.01
	(built Apr
	3 2006)) with ESMTPA id <0JJI00FBB8EBIY47@vms042.mailsrvcs.net> for
	samba-technical@lists.samba.org; Mon, 11 Jun 2007 22:59:04 -0500 (CDT)
Date: Mon, 11 Jun 2007 23:58:59 -0400
From: Frank Gruman <fgatwork@verizon.net>
To: samba-technical@lists.samba.org
Message-id: <1181620739.14169.17.camel@toybox.thegrumans.int>
MIME-version: 1.0
X-Mailer: Evolution 2.10.1
Content-type: text/plain
Content-transfer-encoding: 7bit
Subject: Samba4 TP5 as PDC with Win2k3 as BDC
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

Hello all,

I've got a home network with 3 Windows machines and 4 Linux machines.
Rather than take up valuable work time playing with Samba 4, I am trying
to set up some different scenarios at home...

My first scenario was a Samba 4 PDC standalone.  This worked ok, but I
had some issues with speed of logins and general user maintenance.  But
it was GREAT for a pre-Alpha product.

The second scenario is where I am stuck - Samba 4 PDC with Win2k3 BDC.
I currently receive the following error when I try to create the server
as a BDC:

        Failed to modify SPNs on
        cn=brokenbox,cn=computers,dc=myhome,dc=int: kludge_acl_change:
        attempted database modify not permitted. User MYHOME\BROKENBOX$
        is not SYSTEM or an administrator
        EPOLL_CTL_ADD failed (Bad file descriptor) - falling back to
        select()
        EPOLL_CTL_ADD failed (Bad file descriptor) - falling back to
        select()
        EPOLL_CTL_ADD failed (Bad file descriptor) - falling back to
        select()
        
The Windows server name is brokenbox and begins this process as a
non-domain server.  My Samba4 PDC is running on openSUSE 10.3 Alpha 4+.
I am logging in with the domain administrator account.  After the
installation has failed the server then belongs to the domain, but not
as a BDC.  If I start the wizard again, it performs the same steps and
fails with the same error.

I looked in the code and found the calling procedure
(samba4/source/dsdb/samdb/ldb_modules/kludge_acl.c)

        static int kludge_acl_change(struct ldb_module *module, struct
        ldb_request *req)
        {
        	enum user_is user_type = what_is_user(module);
        	switch (user_type) {
        	case SYSTEM:
        	case ADMINISTRATOR:
        		return ldb_next_request(module, req);
        	default:
        		ldb_asprintf_errstring(module->ldb,
        				       "kludge_acl_change: "
        				       "attempted database modify not permitted. "
        				       "User %s is not SYSTEM or an administrator",
        				       user_name(req, module));
        		return LDB_ERR_INSUFFICIENT_ACCESS_RIGHTS;
        	}
        }

And I can trace this back to how and where in the code you are setting
the user_type.  The part I don't understand is how / where does the
value for user_is change from the domain username to the new machine
account?

Any help would be much appreciated.

Regards,
Frank

     

 Niancls
e:n3Eca
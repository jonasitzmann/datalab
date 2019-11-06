From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 13 14:07:49 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5DI7nL9010770
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 14:07:49 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C5857163827
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 13 Jun 2007 18:07:48 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id B8059162AC0; Wed, 13 Jun 2007 18:06:56 +0000 (GMT)
Date: Wed, 13 Jun 2007 11:06:49 -0700
From: Jeremy Allison <jra@samba.org>
To: James Peach <jpeach@samba.org>
Message-ID: <20070613180649.GH6128@jeremy-laptop>
References: <B625B1FF-B55E-4516-A419-B8BA60A4A5A2@samba.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <B625B1FF-B55E-4516-A419-B8BA60A4A5A2@samba.org>
User-Agent: Mutt/1.5.13 (2006-08-11)
Cc: samba-technical@lists.samba.org
Subject: Re: kerberos auth account restrictions
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Jeremy Allison <jra@samba.org>
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

On Wed, Jun 13, 2007 at 11:04:03AM -0700, James Peach wrote:
> hi all,
> 
> In check_sam_security(), we check whether the account is locked out  
> like this:
> 
> /* see if autolock flag needs to be updated */
> if (pdb_get_acct_ctrl(sampass) & ACB_NORMAL)
> 	pdb_update_autolock_flag(sampass, &updated_autolock);
> /* Quit if the account was locked out. */
> if (pdb_get_acct_ctrl(sampass) & ACB_AUTOLOCK) {
> 	DEBUG(3,("check_sam_security: Account for user %s was locked 
> 	out.\n",  pdb_get_username(sampass)));
> 	return NT_STATUS_ACCOUNT_LOCKED_OUT;
> }
> 
> Is there a good reason that we don't do this for Kerberos auth in  
> reply_spnego_kerberos()?

I think the KDC does this, not the server. Once it's got a ticket
from the KDC I think we assume that this isn't the case.

Jeremy.

  


aFaofimo
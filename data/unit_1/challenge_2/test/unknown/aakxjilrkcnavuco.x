From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 15 12:56:39 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FGudL9004596
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 12:56:39 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 294E8163967
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 16:56:38 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DSBL,SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
X-Greylist: delayed 14393 seconds by postgrey-1.24 at dp.samba.org;
	Fri, 15 Jun 2007 16:55:57 GMT
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.179])
	by lists.samba.org (Postfix) with ESMTP id 47359162BC1
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 16:55:57 +0000 (GMT)
Received: by wa-out-1112.google.com with SMTP id l35so1243790waf
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 09:55:56 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
	b=MvzGlqJueI8Btcb3pv+sNMK9XCrzfhrVl63zFNqcK5A1X3LSxViFweiUqM34AQ8rxugcUFDFkJwh6wLocR9537Zw8dNvthYQdqoMCsoQ3kaAqo5dwkNewXPE1MomAxKUvOBvqBar+pyJCM0tubSGgx9pSqmZEGBwjMtRi+UtQfA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type;
	b=Yc6G0uOOkIxwjhKwCUhL5nQXGgg//S2opYk3KzrUjdXmcqqnamRvObPYgMQlLxDGcrXh1bUONEfT9u/08XXvyGAb18iE11vSg4G8NlcRv210Joqtqo+QpOXIzvhcYFe+B6GKEb6K4547vTGLK3kiFNUzwAiT7dW+3E5DYh4+zMI=
Received: by 10.114.61.1 with SMTP id j1mr3181915waa.1181926556718;
	Fri, 15 Jun 2007 09:55:56 -0700 (PDT)
Received: by 10.141.27.4 with HTTP; Fri, 15 Jun 2007 09:55:56 -0700 (PDT)
Message-ID: <17f180d20706150955k3aac758eg1af3b059a5f614e0@mail.gmail.com>
Date: Fri, 15 Jun 2007 13:55:56 -0300
From: ninjabytes <ninjabytes@gmail.com>
To: samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: Kerberos and Shares
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

Hello,

I have a Samba 3.0.24 running along with winbind 3.0.24 running as well to
log in our Active Directory.

/etc/pam.d/common-account looks like this:
account sufficient       pam_winbind.so krb5_auth debug try_first_pass
cached_login
account required pam_unix.so

/etc/pam.d/common-auth looks like this:
auth sufficient pam_winbind.so krb5_auth krb5_ccache_type=FILE debug
try_first_pass cached_login
auth required pam_unix.so nullok_secure

/etc/pam.d/common-password looks like this:
password    sufficient pam_winbind.so krb5_auth krb5_ccache_type=FILE
password    required   pam_unix.so nullok obscure min=4 max=8 md5

/etc/pam.d/common-session looks like this:
session required        pam_unix.so
session optional        pam_foreground.so
session required        pam_mkhomedir.so umask=0022 skel=/etc/skel

When I try to connect to a shared resource using smbclient with the "-K"
option I get:

session setup failed: NT_STATUS_LOGON_FAILURE

This is my smb.conf:

[global]
   security = ads
   realm = PAWNSHOP.LOCAL
   encrypt passwords = yes
   password server = PAWNSHOP.LOCAL
   workgroup = PAWNSHOP
   client signing = yes
   idmap uid = 500-10000000
   idmap gid = 500-10000000
   server signing = mandatory
   pam password change = yes
   winbind separator = +
   winbind enum users = no
   winbind enum groups = no
   winbind use default domain = yes
   winbind offline logon = yes
   winbind refresh tickets = yes
   winbind cache time = 10
   template homedir = /home/%U
   template shell = /bin/bash
   client use spnego = no
   domain master = no
   server string = Ubuntu WorkStation

I would also like to have winbind to remove the kerberos tickets from /tmp/
once a user logs off but I cant seem to find out how to get that done.

Thanks

 

coavT 
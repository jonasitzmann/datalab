From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 15 10:46:29 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FEkSL9003446
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 10:46:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id BFC0D163857
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 14:46:27 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=3.8 tests=AWL,BAYES_40,HTML_00_10,
	HTML_MESSAGE,RCVD_IN_DSBL,SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.238])
	by lists.samba.org (Postfix) with ESMTP id 1FDF6162AE9
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 14:46:05 +0000 (GMT)
Received: by nz-out-0506.google.com with SMTP id l1so833070nzf
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 07:46:04 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
	b=BUaq0QHwxlCPkdhWCfzjIH/BL0JLy4410V/ZLtgR3uijTXy2GzgJrTNYye35CR78HYKDatuhPgPZvNEfvqG0Lb5sz+PBg86WDEENwc/F6SQv97YtjF6uVzUwTNIfvUxdorkq/DsKsu47qOjYFSihk8mp4CrJoIC/0Ki0hFgi+bY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type;
	b=ABH+6OxemtyDktrcd6qwmPMUBPdVU9Fd/8ozh+1bs8EeYOUZjawNzLzkWw3Bva1BpHG4W/mBUWA3EUU3qR087TwY6jkZWT94vFUmstlqYUGtc28KYy/WHfqaUafCQrmGylEwELA2lR6S7caxcJJkfcXiPrvsYex0kBOyGVUX37A=
Received: by 10.114.36.1 with SMTP id j1mr3117934waj.1181918764396;
	Fri, 15 Jun 2007 07:46:04 -0700 (PDT)
Received: by 10.141.27.4 with HTTP; Fri, 15 Jun 2007 07:46:04 -0700 (PDT)
Message-ID: <17f180d20706150746g61b424a8mcb054646735de27a@mail.gmail.com>
Date: Fri, 15 Jun 2007 11:46:04 -0300
From: ninjabytes <ninjabytes@gmail.com>
To: samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: Kerberos Ticket and Share
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

I finally have Winbind working with kerberos (I have added krb5_auth to
pam_winbind) and everything works good.
However, when I try to smbmount a share resource with the -k flag it does
not work.

is it possible to have samba take my kerberos tickets and log in using these
credentials to my shares? Because right now the way it works is I have to
put my usernamd and password.

Thanks

    

8os c aEF4n
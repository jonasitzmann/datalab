From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 15 09:25:38 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FDPbL9002748
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 09:25:38 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 84F9816388E
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 15 Jun 2007 13:25:36 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.8 tests=BAYES_00,HTML_00_10,
	HTML_MESSAGE,RCVD_IN_DSBL,SPF_PASS autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.235])
	by lists.samba.org (Postfix) with ESMTP id 8C01C162AFE
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 13:24:55 +0000 (GMT)
Received: by nz-out-0506.google.com with SMTP id l1so810825nzf
	for <samba-technical@lists.samba.org>;
	Fri, 15 Jun 2007 06:24:53 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
	b=sEtm1VKbKu8xDoHSCqE1JCUZvmf1+SdCYxmRICCtDAMQQW40UT73OvriG9qOcPy1BeTs7AahgBVywp8ES8GEfqrt2bYdXPEv2GV4ym2LJ7Mlq7rGkAq3MojZP4F1aiuUa/wDJD96jm99TjF/5EFTR8eNb9irCEewtAxrragR+Bk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type;
	b=gySXkh7bmhzSsYy+dExVZblokKttFbR96d8vpzRTYSRH0+0i5RjNrmwWNsJ8V6mjR4yD6bBRNgvXtb51YMuxxP3yINAK6aM9GY3Vtjl59Mr2O9Bt+friAxB8ah5ytasVETMFnkS3bW55Q3hqcRBazbdg+rDinpiyfiTJlouGR/M=
Received: by 10.115.14.1 with SMTP id r1mr3019481wai.1181912163329;
	Fri, 15 Jun 2007 05:56:03 -0700 (PDT)
Received: by 10.141.27.4 with HTTP; Fri, 15 Jun 2007 05:56:03 -0700 (PDT)
Message-ID: <17f180d20706150556p69d46593hf2a113c853fc92ba@mail.gmail.com>
Date: Fri, 15 Jun 2007 09:56:03 -0300
From: ninjabytes <ninjabytes@gmail.com>
To: samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: Winbind and Kerberos
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

I have a Ubuntu 7.04 box running Samba 3.0.24 along with Winbind 3.0.24. I
have joined this box to Active Directory however when I log in using Winbind
it does not give me a ticket when I log in I have to use pam_krb5.so if I
want a Kerberos Ticket for every user that log in my system.

is it possible to tell winbind to give each user a Kerberos ticket rather
than having everyone issuing the kinit command?

Second question is, I heard Samba supports Kerberos and I have compiled it
with Kerberos support, when I log in my box using the pam_krb5.so PAM module
and I try to open a Network Share where I have rights it does prompt me for
a password unlikely winbind where this didnt happen.

Please, any help on this matter will be extremely appreciated.

John

         

sWu1h+sb-gtr
jS
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 03:12:26 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5B7CQL9010944
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 03:12:26 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 086EF163938
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 07:12:25 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=AWL,BAYES_00,SPF_PASS 
	autolearn=ham version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from wx-out-0506.google.com (wx-out-0506.google.com [66.249.82.224])
	by lists.samba.org (Postfix) with ESMTP id 20625162AF2
	for <samba-technical@samba.org>; Mon, 11 Jun 2007 07:11:56 +0000 (GMT)
Received: by wx-out-0506.google.com with SMTP id s11so1311181wxc
	for <samba-technical@samba.org>; Mon, 11 Jun 2007 00:11:55 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
	b=NmPMQ/ZBMLm8sfDuIkjFwBNy1Kg+RL7ejYf4ZbgeTERhbnqGSzT4X6lJqUDneztHLiRuMM1ZI4X1+aHVs5JR3GwtkD4pspV/xS96OwsX3+4ig3yMZZVWsGXQ40hfaetMytGXVD0fjyI6nw5zjasbeZVbfw5nG7CAd9F+SEe2gdI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
	b=b8dFfLM6e+SAcmTsfoAbQx2KCLDww5xgwJzk3pOHXAHbkNEdNTelRrUH5/tydrhWIpsjbrguM/LRACdp9ZS2RQ/NsJLl0XhgxgtskEgjeJbxEsgugpgBDvKkMsYN/3WK5Y59H/vcdmyterT9ykG2vFprvyLlC1jdl8NUP7Z2VjQ=
Received: by 10.70.87.5 with SMTP id k5mr8065498wxb.1181545915603;
	Mon, 11 Jun 2007 00:11:55 -0700 (PDT)
Received: by 10.70.66.11 with HTTP; Mon, 11 Jun 2007 00:11:55 -0700 (PDT)
Message-ID: <108b80950706110011w569bd22amd7e256848f599c9f@mail.gmail.com>
Date: Mon, 11 Jun 2007 03:11:55 -0400
From: "g g" <gdotone@gmail.com>
To: samba-technical@samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: trying to compile samba 3.0.25a on mac os 10.4.9 i get an error in
	confgure
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

i was told to post this here, so i apologize if it's in the wrong place.


configure:3597: checking how to run the C preprocessor
configure:3637: gcc -E  conftest.c
configure:3643: $? = 0
configure:3674: gcc -E  conftest.c
conftest.c:10:28: error: ac_nonexistent.h: No such file or directory
configure:3680: $? = 1
configure: failed program was:
| /* confdefs.h.  */
| #define PACKAGE_NAME ""
| #define PACKAGE_TARNAME ""
| #define



this is the first point of failure i see in the config.log file

how do i get samba to compile.  or how do i fix this problem?

           

y7bb
e
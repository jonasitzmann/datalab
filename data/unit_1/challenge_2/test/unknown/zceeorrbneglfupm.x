From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun  7 22:18:25 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l582IPhB009654
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 22:18:25 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9B640162ACB
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 02:18:18 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=3.8 tests=AWL,BAYES_20,HTML_MESSAGE,
	RCVD_IN_BLARS_RBL,SPF_PASS,UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.168])
	by lists.samba.org (Postfix) with ESMTP id 6D994162ACB
	for <samba-technical@samba.org>; Fri,  8 Jun 2007 02:17:30 +0000 (GMT)
Received: by ug-out-1314.google.com with SMTP id 34so917898ugf
	for <samba-technical@samba.org>; Thu, 07 Jun 2007 19:17:27 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
	b=ZOrwyK00Cgm0S8x0pHClh9Z+Y2a7CfEKrxEvRuTJ5BN7IUowRjml4IxL6KDZpOPvAbzRuYVyHXWnZRyLNqgNdB6HVnnlThUgrwY/yxapTnLgoUY4V57fDW/5XnkkEMzysMrMIRSo5Wsbqkwts9z9jDJU9kSBQjP+fUrK87qUlz8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type;
	b=Mr/Zbytul6monLzDtwtXil8ZCXTNk/1ST3JJhOQeWJ+NIwQJKppfMQXZV+6gbsQ4Ec927tlwFicdg8nZ7Jgx+x29dQyn3WybBSazzmQkUXMf8YBSgZD5udeCVfwZwXAeG8vQcX669LhvRZZcCtz6IKKaRhk108bVn1hsIzRM3xU=
Received: by 10.78.149.13 with SMTP id w13mr990722hud.1181268681661;
	Thu, 07 Jun 2007 19:11:21 -0700 (PDT)
Received: by 10.78.205.15 with HTTP; Thu, 7 Jun 2007 19:11:21 -0700 (PDT)
Message-ID: <f325f5a00706071911p4ca8f089s21a3f67bdc86d03b@mail.gmail.com>
Date: Fri, 8 Jun 2007 11:11:21 +0900
From: "yang mikey" <mikeyredmoon@gmail.com>
To: samba-technical@samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: [SMB] NTCreateANDX quesiotn
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

hi, everybody
I found a interesting thing,

when I see the header of NTCreateANCX[0xA2] via Ethereal
I found the value of WORD COUNT is 42, but the position of BYTE COUNT is not
at
(offset of WORD COUNT) +  (value of  WORD COUNT) *2.

Why it happened, and How Ethereal knows  the correct position of BYTE COUNT.

thanks a lot
                                                            Mikey

  

w  <�> �
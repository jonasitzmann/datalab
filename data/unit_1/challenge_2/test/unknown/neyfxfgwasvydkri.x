From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sun Jun 17 22:44:12 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5I2iBL9012853
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 17 Jun 2007 22:44:11 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 6582816386A
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 02:44:09 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=BAYES_00,RCVD_IN_DSBL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from smtp1.su.se (smtp1.su.se [130.237.162.112])
	by lists.samba.org (Postfix) with ESMTP id 4EF9C162ADA;
	Mon, 18 Jun 2007 02:43:26 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.su.se (Postfix) with ESMTP id 265E3742C4;
	Mon, 18 Jun 2007 04:43:25 +0200 (CEST)
Received: from smtp1.su.se ([127.0.0.1])
	by localhost (smtp1.su.se [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20678-04-8; Mon, 18 Jun 2007 04:43:24 +0200 (CEST)
Received: from [80.217.232.156] (c80-217-232-156.bredband.comhem.se
	[80.217.232.156]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp1.su.se (Postfix) with ESMTP id 7787074126;
	Mon, 18 Jun 2007 04:43:18 +0200 (CEST)
In-Reply-To: <1182130109.3615.23.camel@naomi>
References: <4671340B.1080106@samba.org>
	<6D8799E5-4691-4867-949C-E79988DF77EB@kth.se>
	<1182130109.3615.23.camel@naomi>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <4F5B8C0A-123C-4308-871B-0B573B57A32F@kth.se>
Content-Transfer-Encoding: 7bit
From: =?ISO-8859-1?Q?Love_H=F6rnquist_=C5strand?= <lha@kth.se>
Date: Mon, 18 Jun 2007 04:43:12 +0200
To: Andrew Bartlett <abartlet@samba.org>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at smtp.su.se
Cc: Stefan Metzmacher <metze@samba.org>,
   Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
Subject: Re: krb5_abortx()
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

>> What should I use for a random source on those platforms without / 
>> dev/
>> *random to generate cryptographic keys ?
>>
>> I can use the old method from libdes that fell out when I
>> restructured the random code, but its questionable if that is really
>> secure, it "works" though.
>
> Perhaps allow the app to supply a random callback?  (At least then it
> can be just as bad as samba without /dev/random).

That is just fine, when flying home I though I could port the old code
but never enable it in the core distribution and have you add the
RAND_method if you wanted that stuff.

What random source does samba4 use for crypto keys ?

Love


            

e0 3Ll
c>i5n
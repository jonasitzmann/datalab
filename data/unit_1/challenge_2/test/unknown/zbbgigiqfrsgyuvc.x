From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 27 14:08:25 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RI8OL9030383
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 14:08:24 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A5EB5163A04
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 27 Jun 2007 18:08:21 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=3.8 tests=AWL,BAYES_50,
	DNS_FROM_RFC_ABUSE,DNS_FROM_RFC_POST,RCVD_IN_DSBL autolearn=no 
	version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
X-Greylist: delayed 399 seconds by postgrey-1.24 at dp.samba.org;
	Wed, 27 Jun 2007 18:08:02 GMT
Received: from smtp102.rog.mail.re2.yahoo.com (smtp102.rog.mail.re2.yahoo.com
	[206.190.36.80])
	by lists.samba.org (Postfix) with SMTP id 669D9162ACB
	for <samba-technical@samba.org>; Wed, 27 Jun 2007 18:08:02 +0000 (GMT)
Received: (qmail 34912 invoked from network); 27 Jun 2007 18:01:22 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=rogers.com;
	h=Received:X-YMail-OSG:Message-ID:Date:From:Reply-To:User-Agent:X-Accept-Language:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=h33BMB7t2aBz+cLNnD46h5vHVHq+Y3eCFDV9VP9LR8VAApasZqdSiv0G/qYHxT/PfKy9g4hDWsQkzMuk+OmA923MKJIU3xyrt6wuQZ6/fhOMGAdKtK/Rrwc/FoGA/xenop9hTWxTljCApsa4WFOp+OjDNJANwTJxJ7+AnBJbGOM=
	; 
Received: from unknown (HELO ?10.11.254.2?) (davec-b@rogers.com@142.46.224.10
	with plain)
	by smtp102.rog.mail.re2.yahoo.com with SMTP; 27 Jun 2007 18:01:22 -0000
X-YMail-OSG: JqbOkvkVM1kUmBM9LTc3.kC.RtkydN5lAJxEmjjeyMWuFPAU06CrpL9SFP.gtkSGpQ--
Message-ID: <4682A544.3050307@rogers.com>
Date: Wed, 27 Jun 2007 13:58:28 -0400
From: David Collier-Brown <davec-b@rogers.com>
User-Agent: Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.7) Gecko/20041221
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: davecb@spamcop.net
References: <45EF66B8.1070807@sgi.com>	
	<1173321233.3376.0.camel@localhost.localdomain>	<45EF87FD.1050509@sgi.com>	
	<1178533224.4712.34.camel@localhost.localdomain>
	<463FD87E.7000202@sgi.com>	 <464071BD.3080701@rogers.com>
	<1178667158.13537.6.camel@localhost.localdomain>
	<4641CB1E.3080806@rogers.com>
In-Reply-To: <4641CB1E.3080806@rogers.com>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org, Andrew Bartlett <abartlet@samba.org>
Subject: Re: Janitorial tasks (like literal '%' in smb.conf)
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: davecb@spamcop.net
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

Andrew Bartlett wrote:
>> A number of us have been mentors for SoC in the past, and are again with
>> our 2 students this year. 
>> For Samba4, I'm happy to try and help minor contributions and
>> contributors along their way.

Once upon a time we discussed a different parsing problem, #-comments
on the ends of lines in the smb.conf file.  I was going to add %
handling in the same code, only to find that it never made it
in to Samba.

Could you look at bug 3639, from 2006-03-28, and tell me if
we should revisit this fix.

--dave
-- 
David Collier-Brown,         | Always do right. This will gratify
System Programmer and Author | some people and astonish the rest
davecb@spamcop.net           |                      -- Mark Twain
(416) 223-5943

 

6r mr Wrna:	ne1
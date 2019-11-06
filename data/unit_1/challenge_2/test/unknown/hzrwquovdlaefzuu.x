From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 12:17:59 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54GHwhB030111
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 12:17:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id EF9CE163AC2
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 16:17:52 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=3.8 tests=AWL,BAYES_50,
	DNS_FROM_RFC_ABUSE,DNS_FROM_RFC_POST,RCVD_IN_BLARS_RBL autolearn=no 
	version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from smtp103.rog.mail.re2.yahoo.com (smtp103.rog.mail.re2.yahoo.com
	[206.190.36.81])
	by lists.samba.org (Postfix) with SMTP id 0AA40163A99
	for <samba-technical@lists.samba.org>;
	Mon,  4 Jun 2007 16:16:52 +0000 (GMT)
Received: (qmail 80705 invoked from network); 4 Jun 2007 16:16:52 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=rogers.com;
	h=Received:X-YMail-OSG:Message-ID:Date:From:Reply-To:User-Agent:X-Accept-Language:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=HFwyzrljCF7PHpATaZtcI4FEAOagP0rwNevsVqSS1yWhgjcZxHwqr4CnkVLF4qgnidX8fE0L4KKRZ5aHwueaPirHvDEjpWhRESexLuO3okN4hD3ladjPX30g6H0TwyMZgdngB+W7d5F4kjJxU1ZNhPsfs9uSCnEQI2spzFMpz00=
	; 
Received: from unknown (HELO ?10.11.254.4?) (davec-b@rogers.com@142.46.224.10
	with plain)
	by smtp103.rog.mail.re2.yahoo.com with SMTP; 4 Jun 2007 16:16:52 -0000
X-YMail-OSG: EBnLiZkVM1l5x0kvSl2WhS.GvzHpqj.Fp86xWemnDZqVC6G1zc4I6K1MJFngTZRDTw--
Message-ID: <46643A55.5050308@rogers.com>
Date: Mon, 04 Jun 2007 12:14:13 -0400
From: David Collier-Brown <davec-b@rogers.com>
User-Agent: Mozilla/5.0 (X11; U; SunOS sun4u; en-US; rv:1.7) Gecko/20041221
X-Accept-Language: en-us, en
MIME-Version: 1.0
To: James Peach <jpeach@samba.org>
References: <D4ADD9E4-9613-466E-9618-6DC251575315@samba.org>	<1180906540.24923.198.camel@localhost.localdomain>	<46636B0C.2030202@samba.org>	<1180928372.24923.238.camel@localhost.localdomain>	<466403C5.8000908@samba.org>
	<E1HvCUJ-0008Ts-26@intern.SerNet.DE>
	<E1FA3590-E2D3-4E58-A82A-ED4FFDA21654@samba.org>
In-Reply-To: <E1FA3590-E2D3-4E58-A82A-ED4FFDA21654@samba.org>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, Volker.Lendecke@SerNet.DE,
   samba-technical@lists.samba.org
Subject: Sidebar on include.h (was  getting rid of mkproto.sh from Samba3
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

Volker Lendecke wrote:
>> And, I would *like* to keep our includes.h. It is a
>> nightmare in Samba 4 to pick all necessary includes, and
>> this will fill very quickly with obsolete includes if you
>> change something.

James Peach wrote:
> Yep, "includes.h" is nice'n'easy and also plays well with precompiled  
> headers. It would be nice to give some modules the option of including  
> less that everything, however.

   This is a discussion most teams have every few years, as it's
something of a trade-off (:-))

   If you put everything in an include.h file, you'll pay the
price in compile speed, unless your compiler has a specific
mechanism (kludge?) to deal with them like precompiled headers.
You'll also detect any contradictions still present in vendor
include files (;-))

   If you don't include the kitchen sink, you'll find .h's missing
during development, just after you've added a call to something.
Over time you'll also collect no-longer-needed headers, unless
(like gcc -MMD) you have a compiler has a specific mechanism to
tell you what includes you need.

   A customer of mine now occasionally uses -MMD, .d files and a
script to prune out extra #include files when they're using gcc,
and lint|grep "unneeded" when they're using a vendor compiler.

--dave
-- 
David Collier-Brown,         | Always do right. This will gratify
System Programmer and Author | some people and astonish the rest
davecb@spamcop.net           |                      -- Mark Twain
(416) 223-5943

          

d1s.nn7
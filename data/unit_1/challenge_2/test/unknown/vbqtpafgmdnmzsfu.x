From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 04:16:30 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l648GTL9008140
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 04:16:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id DE96E163853
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 08:16:24 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=3.8 tests=BAYES_00 autolearn=ham 
	version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from smtp3.su.se (smtp3.su.se [130.237.93.228])
	by lists.samba.org (Postfix) with ESMTP id BE534163817
	for <samba-technical@samba.org>; Wed,  4 Jul 2007 08:15:41 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.su.se (Postfix) with ESMTP id 3BF653C168;
	Wed,  4 Jul 2007 10:15:41 +0200 (CEST)
Received: from smtp3.su.se ([127.0.0.1])
	by localhost (smtp3.su.se [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15709-01-33; Wed,  4 Jul 2007 10:15:40 +0200 (CEST)
Received: from [130.237.91.90] (8021x-90.publik.su.se [130.237.91.90])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp3.su.se (Postfix) with ESMTP id 946C13BF9D;
	Wed,  4 Jul 2007 10:15:36 +0200 (CEST)
In-Reply-To: <117DA920-689F-4C58-AF91-0D5E36DC4AC5@isilon.com>
References: <117DA920-689F-4C58-AF91-0D5E36DC4AC5@isilon.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <56D0D7CD-7F35-4DAB-B794-DE9B52D92D38@kth.se>
Content-Transfer-Encoding: 7bit
From: =?ISO-8859-1?Q?Love_H=F6rnquist_=C5strand?= <lha@kth.se>
Date: Wed, 4 Jul 2007 10:15:31 +0200
To: Todd Stecher <todd.stecher@isilon.com>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: by amavisd-new at smtp.su.se
Cc: Volker Lendecke <Volker.Lendecke@SerNet.DE>,
   LIST-isi-protocols <isi-protocols@isilon.com>,
   samba-technical <samba-technical@samba.org>
Subject: Re: SPNEGO in Samba - Longhorn Server interop issues...
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

4 jul 2007 kl. 01.10 skrev Todd Stecher:

> When Windows shipped, there were no other SPNEGO implementations to  
> test against, and so Windows really didn't match SPNEGO RFC 2478  
> 100%.  Eventually, Larry, Paul "Mr. CIFS" Leach, & company at  
> Microsoft made an effort to clean this mess up, and revisit the  
> standard so that everyone could play well together.  The end result  
> is RFC 4178, which supersedes 2478.
>
> As such, in early versions of Windows SPNEGO, there were some  
> "extra" fields added to the negTokenInit message which are being  
> deprecated in Vista, Longhorn Server, and eventually service packs  
> for older platforms.  The most significant of these fields is the  
> principal name - there is really no place in either standard which  
> allows the return of a principal in negTokenInit messages.  This is  
> being corrected for in Vista and Longhorn server by continuing to  
> add the field, but instead of a "real" principal, it now contains  
> "not_defined_in_RFC4178 at please_ignore".
>
> From a security standpoint, allowing the server to specify its  
> service principal is a "bad idea" - I'm OK with this change, but it  
> means we'll need to fix up some Samba code, and we'll need to start  
> using / generating real service principal names in order to get  
> Kerberos authentication.  Currently, we try to get a service ticket  
> to the @please_ignore realm!!!
>
> Volker made a fix in cliconnect.c (http://lists.samba.org/archive/ 
> samba-cvs/2006-October/071344.html) to partially address this.   
> However, this does not address issues when operating against  
> Longhorn Server (Windows 2008 server?).  I'm sorting through the  
> issues, but the first error occurs when trying to join a Samba  
> server to the domain - the code in ads_sasl_spnego_bind() uses this  
> principal to attempt to get a Kerberos ticket to the ldap head.
>
> I'm sure this is the first layer of the onion (there are encoding  
> issues in the old Microsoft implementation as well), but there'll  
> be more - before I get too deep, is this work already being done  
> elsewhere???  If not, I should be able to get fairly solid Longhorn  
> Server interop moving forward in the next week, and will submit a  
> patch.

We have an implementation RFC4178 in Heimdal, its farly easy to test  
it with LH with gssmaggot/gssmaster (or using heimdal's gssmask/ 
gssmaestro).

Love


                

lwaz:g
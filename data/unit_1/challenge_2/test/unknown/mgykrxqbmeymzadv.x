From speakup-bounces@braille.uwo.ca  Sat Jun 30 19:17:38 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UNHcL9012855
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 19:17:38 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I4mC5-00030l-00; Sat, 30 Jun 2007 19:17:33 -0400
Received: from trueband.net ([216.163.120.10])
	by speech.braille.uwo.ca with smtp (Exim 3.36 #1 (Debian))
	id 1I4mC3-00030c-00
	for <speakup@braille.uwo.ca>; Sat, 30 Jun 2007 19:17:31 -0400
Received: (qmail 16949 invoked by uid 1006); 30 Jun 2007 23:17:30 -0000
Received: from sberry@northlc.com by rs0 by uid 1003 with qmail-scanner-1.16 
	(spamassassin: 3.1.4.  Clear:SA:0(0.1/100.0):. 
	Processed in 1.719908 secs); 30 Jun 2007 23:17:30 -0000
X-Spam-Status: No, hits=0.1 required=100.0
X-Spam-Level: 
Received: from unknown (HELO trueband.net) (172.16.0.16)
	by -v with SMTP; 30 Jun 2007 23:17:28 -0000
Received: (qmail 14167 invoked from network); 30 Jun 2007 23:17:23 -0000
Received: from unknown (HELO yellobow) (67.54.156.70)
	by -v with SMTP; 30 Jun 2007 23:17:23 -0000
Message-ID: <002901c7bb6c$cfe3e6b0$c701a8c0@yellobow>
From: "Scott Berry" <sberry@northlc.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <BAY141-DAV165FB421FE466C84C7EC4B8F0F0@phx.gbl><006c01c7bb69$a1cb1670$c701a8c0@yellobow>
	<BAY141-DAV48A85C5070063A19DD9268F0F0@phx.gbl>
Subject: Re: Running a personal domain
Date: Sat, 30 Jun 2007 18:17:13 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: "Speakup is a screen review system for Linux."
	<speakup@braille.uwo.ca>
List-Id: "Speakup is a screen review system for Linux."
	<speakup.braille.uwo.ca>
List-Unsubscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=unsubscribe>
List-Archive: <http://speech.braille.uwo.ca/pipermail/speakup>
List-Post: <mailto:speakup@braille.uwo.ca>
List-Help: <mailto:speakup-request@braille.uwo.ca?subject=help>
List-Subscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca

Well to run yum you have the following syntax:

yum install package
yum remove package
yum update package
Now in Fedora we have what they call:
what provides
this tells you what a package depends on:

So for an example the statement might look like this:

yum whatprovides perl
or the name of the package.

Do you need to know how to install rpm's?

Scott


----- Original Message ----- 
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Saturday, June 30, 2007 5:57 PM
Subject: Re: Running a personal domain


> Hiya,
>    Well, I'm mostly wondering about how Yum works, and a lot of that basic
> kind of package management stuff.  The problem is that the server I have
> access to is probably customized in some way, so I need to figure out how 
> it
> does things.  I'm afraid of breaking it and needing to call in the tech
> support folks to fix it.
> To quote them, they say that only advanced users need to access the 
> machine
> via SSH.
> Thanks,
> Zack.
>
> ----- Original Message ----- 
> From: "Scott Berry" <sberry@northlc.com>
> To: "Speakup is a screen review system for Linux." 
> <speakup@braille.uwo.ca>
> Sent: Saturday, June 30, 2007 3:52 PM
> Subject: Re: Running a personal domain
>
>
>> What exactly do you want to know I am using Fedora here which is based on
>> the Redhat scheme of things.
>>
>> ----- Original Message ----- 
>> From: "Zachary Kline" <Z_kline@hotmail.com>
>> To: "Speakup is a screen review system for Linux."
>> <speakup@braille.uwo.ca>
>> Sent: Saturday, June 30, 2007 4:40 PM
>> Subject: Running a personal domain
>>
>>
>>> Hiya,
>>>    I recently bought the domain name blindlinux.com from a registrar and
>>> set it's DNS and such using the control panel they provide.  I'm also
>>> allowed a virtual private server for my site and such, which I can 
>>> access
>>> via SSH.  I guess I have a desire to learn how all that works 
>>> internally.
>>> I'm not gonna run a massive site off it or anything, but maybe host some
>>> files and just a personal page.
>>> I was wondering if anybody here is familiar with Cent OS.  I'm not,
>>> though
>>> have heard it's based on Red Hat Enterprise Linux.  I'm not familiar 
>>> with
>>> Red Hat in general.
>>> Any tips from anybody?
>>> Thanks muchly,
>>> Zack.
>>> PS: I wish I could host it myself, but I'd need to talk to my ISP about
>>> getting a static IP, and anyway it isn't my connection.
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@braille.uwo.ca
>>> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>>>
>>>
>>>
>>> -- 
>>> No virus found in this incoming message.
>>> Checked by AVG Free Edition.
>>> Version: 7.5.476 / Virus Database: 269.9.14/880 - Release Date: 
>>> 6/29/2007
>>> 2:15 PM
>>>
>>>
>>
>>
>> _______________________________________________
>> Speakup mailing list
>> Speakup@braille.uwo.ca
>> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>>
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
>
>
> -- 
> No virus found in this incoming message.
> Checked by AVG Free Edition.
> Version: 7.5.476 / Virus Database: 269.9.14/880 - Release Date: 6/29/2007 
> 2:15 PM
>
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

             

r9B 
icAzTeZR
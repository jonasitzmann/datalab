From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 20:23:32 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5N0NWL9011557
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 20:23:32 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id D5B731638F8
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 00:23:29 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: **
X-Spam-Status: No, score=2.1 required=3.8 tests=AWL,BAYES_50,
	DNS_FROM_RFC_POST,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from p02c11o143.mxlogic.net (p02c11o143.mxlogic.net [208.65.144.76])
	by lists.samba.org (Postfix) with ESMTP id 7503A162AFE
	for <samba-technical@lists.samba.org>;
	Sat, 23 Jun 2007 00:22:19 +0000 (GMT)
Received: from unknown [194.178.105.31] (EHLO nlwo01-s-euex01.europe.danka.com)
	by p02c11o143.mxlogic.net (mxl_mta-5.0.0-4)
	with ESMTP id 5c76c764.1970379696.202932.00-003.p02c11o143.mxlogic.net
	(envelope-from <kurt.pfeifle@infotec.com>); 
	Fri, 22 Jun 2007 18:22:29 -0600 (MDT)
Received: from dest01-s-euex01.europe.danka.com ([10.162.0.68]) by
	nlwo01-s-euex01.europe.danka.com with Microsoft
	SMTPSVC(6.0.3790.211); Sat, 23 Jun 2007 02:22:03 +0200
X-PMWin-Version: 2.6.1, Antivirus-Engine: 2.47.0
Thread-Index: Ace1LIWdQZLN3V1XQV2kBEJ2QWA+lA==
Received: from [10.162.7.7] ([10.162.7.7] RDNS failed) by
	dest01-s-euex01.europe.danka.com with Microsoft
	SMTPSVC(6.0.3790.211); Sat, 23 Jun 2007 02:22:02 +0200
Content-class: urn:content-classes:message
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.607
Importance: normal
Priority: normal
Message-ID: <467C6786.4090401@infotec.com>
Date: Sat, 23 Jun 2007 02:21:26 +0200
From: "Kurt Pfeifle" <kurt.pfeifle@infotec.com>
Organization: Infotec Deutschland GmbH
User-Agent: Thunderbird 2.0.0.4 (X11/20070613)
MIME-Version: 1.0
To: "Guenther Deschner" <gd@samba.org>, <samba-technical@lists.samba.org>
References: <467BE8BD.2000704@infotec.com> <467BEE9C.10200@samba.org>
	<467C5D3D.8030903@infotec.com> <467C652E.9050409@infotec.com>
In-Reply-To: <467C652E.9050409@infotec.com>
Content-Type: text/plain;
	charset="iso-8859-1"
X-OriginalArrivalTime: 23 Jun 2007 00:22:02.0653 (UTC)
	FILETIME=[858394D0:01C7B52C]
X-Spam: [F=0.0703161369; S=0.070(2007060101); SS=0.500]
X-MAIL-FROM: <kurt.pfeifle@infotec.com>
X-SOURCE-IP: [194.178.105.31]
Subject: [SOLVED!] Joining AD domain fails: "Failed to set
	servicePrincipalNames. [...] Type or value exists"
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: kurt.pfeifle@infotec.com
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
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5N0NWL9011557

Kurt Pfeifle now responds once more to himself; earlier he wrote:
> Kurt Pfeifle now responds to himself; earlier he wrote:
>> Guenther Deschner wrote:
>>> Hi Kurt,
>>>
>>> Kurt Pfeifle wrote:
>>>> Hi, list,
>>>> I'm having a problem to join a current Debian Sid/unstable system
>>>> (running Samba 3.0.25a) to an AD domain (where the DC is a Windows
>>>> 2003 Server with SP2):
> 
> [....]
> 
>>> Can you run your join with debug level 10 set and see if that is the
>>> case ?
>> Indeed, I see the following lines in the output now:
>>
>> -------------------------------------------------------------------
>> [2007/06/22 22:33:58, 10] lib/util.c:name_to_fqdn(3013)
>>   name_to_fqdn: lookup for PDFMAKER failed.
>> Failed to set servicePrincipalNames. Please ensure that
>> the DNS domain of this server matches the AD domain,
>> -------------------------------------------------------------------
>>
>>> pdfserver and pdfserver.infotecsys.de probably need to resolve to
>>> an ip-address.
>> Which they don't:
>>
>> -------------------------------------------------------------------
>> root@pdfserver:~# nslookup pdfserver.infotecsys.de
>>    Server:         10.162.2.3
>>    Address:        10.162.2.3#53
>>
>>    ** server can't find pdfserver.infotecsys.de: NXDOMAIN
>>
>> root@pdfserver:~# host pdfserver.infotecsys.de
>>    pdfserver.infotecsys.de does not exist (Authoritative answer)
>> -------------------------------------------------------------------
> 
> [...]
> 
>> (I'm still
>> trying to figure out how to teach the ADS DC's DNS service what IP
>> address the pdfserver uses  ...).
> 
> 
> OK, meanwhile I managed to insert the IP<->hostname mapping into the
> DNS of the ADS DC:
> 
> -------------------------------------------------------------------
> root@pdfserver:~# nslookup pdfserver
>    Server:         10.162.2.3
>    Address:        10.162.2.3#53
> 
>    Name:   pdfserver.infotecsys.de
>    Address: 10.162.7.11
> 
> root@pdfserver:~# host pdfserver
>    pdfserver.infotecsys.de A       10.162.7.11
> -------------------------------------------------------------------
> 
> However, the result of my attempt to join the pdfserver to the domain
> is still exactly the same failure as before:
> 
> 
> -------------------------------------------------------------------
> root@pdfserver:~# net ads join -W infotecsys.de -S dc -U Administrator
>    Administrator's password:
>    Using short domain name -- INFOTECSYS
>    Failed to set servicePrincipalNames. Please ensure that
>    the DNS domain of this server matches the AD domain,
>    Or rejoin with using Domain Admin credentials.
>    Deleted account for 'PDFMAKER' in realm 'INFOTECSYS.DE'
>    Failed to join domain: Type or value exists
> -------------------------------------------------------------------
> 
> 
> Interestingly, now the debug level 10 output is a little bit different:
> 
> -------------------------------------------------------------------
> root@pdfserver:~# net ads join -W infotecsys.de -S dc -U Administrator -d 10
>    [2007/06/23 00:53:47, 10] lib/util.c:name_to_fqdn(3009)
>      name_to_fqdn: lookup for PDFMAKER -> PDFMAKER.
>    Failed to set servicePrincipalNames. Please ensure that
>    the DNS domain of this server matches the AD domain,
> -------------------------------------------------------------------
> 
> 
> So, first there was no successful resolution of the pdfserver name to
> an IP address, and debug level 10 showed:
> 
>   "name_to_fqdn: lookup for PDFMAKER failed."
> 
> Now that the pdfserver name is resolved to an IP address, debug level
> 10 shows:
> 
>   "name_to_fqdn: lookup for PDFMAKER -> PDFMAKER."

Oh, my!

It's there, in plain sight: while I had meant to configure everything
to use pdf*server*, in smb.conf a line "netbios name = pdf*maker*"
had slipped in. What a stupid mistake!

Removal of that line then did the magic. Now it's all cool again:

-------------------------------------------------------------------
root@pdfserver:~# net ads join -W infotecsys.de -S dc -U Administrator
   Administrator's password:
   Using short domain name -- INFOTECSYS
   Joined 'PDFSERVER' to realm 'INFOTECSYS.DE'
-------------------------------------------------------------------


Sorry if I wasted everyone's time. (May Google now help other people
to find *that* cause for the error message of "Failed to set
servicePrincipalNames. [...] Type or value exists"  as well... People
remember to never set a different/wrong "netbios name" in smb.conf
when you want to become part of an ADS...)

Cheers & Thanks!
Kurt 
---
Infotec Deutschland GmbH
Hedelfingerstrasse 58
D-70327 Stuttgart
Telefon +49 711 4017-0, Fax +49 711 4017-5752
www.infotec.com
Geschaeftsfuehrer: Elmar Karl Josef Wanderer, Frank Grosch, Heinz-Josef Jansen
Sitz der Gesellschaft: Stuttgart, Handelsregister HRB Stuttgart 20398

Der Inhalt dieser E-Mail ist vertraulich und ist nur f�r den Empf�nger bestimmt. Falls Sie nicht der angegebene Empf�nger sind oder falls diese E-Mail irrt�mlich an Sie adressiert wurde, verst�ndigen Sie bitte den Absender sofort und l�schen Sie die E-Mail sodann. Das unerlaubte Ver�ffentlichen, Kopieren sowie die unbefugte �bermittlung komplett oder in Teilen sind nicht gestattet.Private Ansichten und Meinungen sind, wenn nicht ausdr�cklich erkl�rt, die des Autors und nicht die der Infotec Deutschland GmbH oder deren verantwortliche Direktoren und Angestellte. Eine Haftung f�r Sch�den oder Verlust von Daten durch den Gebrauch dieser Email oder deren Anh�nge wird ausgeschlossen.
Weitere Informationen erhalten Sie im Internet unter www.infotec.com oder in jeder Infotec Niederlassung.
This E-Mail is for the exclusive use of the recipient and may contain information which is confidential. Any disclosure, distribution or copying of this communication, in whole or in part, is not permitted. Any views or opinions presented are those of the author and (unless otherwise specifically stated) do not represent those of Infotec Deutschland GmbH or their directors or officers; none of whom are responsible for any reliance placed on the information contained herein. Although reasonable precautions have been taken to ensure that no viruses are present, all liability is excluded for any loss or damage arising from the use of this email or attachments.
For further information please see our website at www.infotec.com or refer to any Infotec office.

           

wcur/sndho
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 13:47:44 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KHlfL9013132
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 13:47:41 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 3EEEE16397D
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 17:47:39 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from [IPv6:::1] (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 2FA5F162ACE;
	Wed, 20 Jun 2007 17:46:50 +0000 (GMT)
Message-Id: <8153F65B-FC8F-4242-B173-78B393CACFB3@samba.org>
From: James Peach <jpeach@samba.org>
To: Michael Adam <ma@sernet.de>
In-Reply-To: <E1I0xNU-0000kC-HK@intern.SerNet.DE>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed; delsp=yes
Mime-Version: 1.0 (Apple Message framework v890.2)
Date: Wed, 20 Jun 2007 10:46:49 -0700
References: <20070620100832.C3D71162ACE@lists.samba.org>
	<E1I0xNU-0000kC-HK@intern.SerNet.DE>
X-Mailer: Apple Mail (2.890.2)
Cc: samba-technical@lists.samba.org
Subject: Re: svn commit: samba r23553 - in branches: SAMBA_3_0/source/param
	SAMBA_3_0_26/source/param
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
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KHlfL9013132

On Jun 20, 2007, at 3:25 AM, Michael Adam wrote:

> Hi List,
>
> I would like to hear your opinion about this.
> I have added support for activation of global registry options
> in smb.conf (by specifying "include = registry") in r23509.
>
> With this it is in principle possible to create buggy or at least
> strange configurations.

IMO we should help people avoid misconfigurations as much as possible.

> With the idea in mind that the
> "supported" configuration with registry global options would be
> a "registry only configuration like
>
> ~~~~~~~~~~~~~~~~~~~~~~
> [global]
> include = registry
> ~~~~~~~~~~~~~~~~~~~~~~
>
> I have now disabled the interpretation of "include" and "lock
> directory" parameters in loadparm.c.
>
> If this is agreed, I could even disable _setting_ these parameters
> deeper down in the registry code.
>
> Of course, this still does not prevent the admin from creating a
> screwd config like
>
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> [global]
> include = registry
> lock directory = /some/other/dir
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> which effectively replaces the registry used after reading the
> configuration from it. But this would fall under "unsupported
> configurations".

Is it reasonable to expect admins (who have no idea how the registry  
code is implemented) to see this as an obvious misconfiguration?

>
>
> What do you think? Is this a reasonable strategy?
>
> Michael
>
>
> On Mi, Jun 20, 2007 at 10:08:32 +0000, obnox@samba.org wrote:
>> Author: obnox
>> Date: 2007-06-20 10:08:31 +0000 (Wed, 20 Jun 2007)
>> New Revision: 23553
>>
>> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23553
>>
>> Log:
>> Also ignore "lock directory" in registry global options.
>>
>> Michael
>>
>>
>> Modified:
>>   branches/SAMBA_3_0/source/param/loadparm.c
>>   branches/SAMBA_3_0_26/source/param/loadparm.c
>>
>>
>> Changeset:
>> Modified: branches/SAMBA_3_0/source/param/loadparm.c
>> ===================================================================
>> --- branches/SAMBA_3_0/source/param/loadparm.c	2007-06-20 08:47:13  
>> UTC (rev 23552)
>> +++ branches/SAMBA_3_0/source/param/loadparm.c	2007-06-20 10:08:31  
>> UTC (rev 23553)
>> @@ -3163,9 +3163,12 @@
>> 				  &type,
>> 				  &size,
>> 				  &data_p);
>> -		if (strwicmp(valname,"include") == 0) {
>> +		if ((strwicmp(valname,"include") == 0) ||
>> +		    (strwicmp(valname, "lock directory") == 0) ||
>> +		    (strwicmp(valname, "lock dir") == 0))
>> +		{
>> 			DEBUG(10, ("process_registry_globals: Ignoring "
>> -				   "parameter 'include' in registry.\n"));
>> +				   "parameter '%s' in registry.\n", valname));
>> 			continue;
>> 		}
>> 		DEBUG(10, ("process_registry_globals: got value '%s'\n",
>>
>> Modified: branches/SAMBA_3_0_26/source/param/loadparm.c
>> ===================================================================
>> --- branches/SAMBA_3_0_26/source/param/loadparm.c	2007-06-20  
>> 08:47:13 UTC (rev 23552)
>> +++ branches/SAMBA_3_0_26/source/param/loadparm.c	2007-06-20  
>> 10:08:31 UTC (rev 23553)
>> @@ -3164,9 +3164,12 @@
>> 				  &type,
>> 				  &size,
>> 				  &data_p);
>> -		if (strwicmp(valname,"include") == 0) {
>> +		if ((strwicmp(valname,"include") == 0) ||
>> +		    (strwicmp(valname, "lock directory") == 0) ||
>> +		    (strwicmp(valname, "lock dir") == 0))
>> +		{
>> 			DEBUG(10, ("process_registry_globals: Ignoring "
>> -				   "parameter 'include' in registry.\n"));
>> +				   "parameter '%s' in registry.\n", valname));
>> 			continue;
>> 		}
>> 		DEBUG(10, ("process_registry_globals: got value '%s'\n",
>>
>
> -- 
> Michael Adam <ma@sernet.de>
> SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
> phone: +49-551-370000-0, fax: +49-551-370000-9
> AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
> http://www.SerNet.DE, mailto: Info @ SerNet.DE

--
James Peach | jpeach@samba.org




AA3w
From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jul  5 09:39:39 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l65DdcL9026722
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 09:39:39 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id E20FB2E15F; Thu,  5 Jul 2007 13:39:27 +0000 (UTC)
Old-Return-Path: <jean-mudle.mouchel@ccr.jussieu.fr>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=LDOSUBSCRIBER autolearn=ham 
	version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from shiva.jussieu.fr (shiva.jussieu.fr [134.157.0.129])
	by murphy.debian.org (Postfix) with ESMTP id D8C652E0DD
	for <debian-laptop@lists.debian.org>; Thu,  5 Jul 2007 13:39:18 +0000 (UTC)
Received: from moka.ccr.jussieu.fr (moka.ccr.jussieu.fr [134.157.1.23])
          by shiva.jussieu.fr (8.13.8/jtpda-5.4) with ESMTP id l65Dchpp002007
          ; Thu, 5 Jul 2007 15:38:43 +0200 (CEST)
X-Ids: 168
Received: from [127.0.0.1] (moka.ccr.jussieu.fr [134.157.1.23])
          by moka.ccr.jussieu.fr (8.10.0/jtpda-5.3.3) with ESMTP id l65DcgF3334250
          ; Thu, 5 Jul 2007 15:38:42 +0200
Message-ID: <468CF4F2.9080509@ccr.jussieu.fr>
Date: Thu, 05 Jul 2007 15:41:06 +0200
From: Jean-Mudle Mouchel <jean-mudle.mouchel@ccr.jussieu.fr>
Reply-To: jean-mudle.mouchel@ccr.jussieu.fr
User-Agent: IceDove 1.5.0.12 (X11/20070607)
MIME-Version: 1.0
To: roberto <roberto03@gmail.com>
Cc: debian-laptop@lists.debian.org
Subject: Re: etch on latitude
References: <4bcde3e10706290242t36823236t3c5ff835e0da73a@mail.gmail.com>	 <4684E36D.50605@ccr.jussieu.fr> <4bcde3e10707050222p4b5d2c35mba9097031fd260d2@mail.gmail.com>
In-Reply-To: <4bcde3e10707050222p4b5d2c35mba9097031fd260d2@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-3.0 (shiva.jussieu.fr [134.157.0.168]); Thu, 05 Jul 2007 15:38:43 +0200 (CEST)
X-Virus-Scanned: ClamAV 0.88.7/3604/Thu Jul  5 12:33:34 2007 on shiva.jussieu.fr
X-Virus-Status: Clean
X-Miltered: at shiva.jussieu.fr with ID 468CF463.001 by Joe's j-chkmail (http://j-chkmail.ensmp.fr)!
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <ufOi_C.A.1hC.PSPjGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31550
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Thu,  5 Jul 2007 13:39:27 +0000 (UTC)


> On 6/29/07, Jean-Mudle Mouchel <jean-mudle.mouchel@ccr.jussieu.fr> wrote:
>> Hi,
>> I have etch on a latitude D610 (upgraded from Sarge).
>> Most is ok.
>>
>> I had difficulties with the WiFi because the firmware were not at the
>> right place on the disk (probably because of a major change around
>> hotplug/udev). I obtained the last firmware from Intel (ipw2200), which
>> had to be in /lib/firmware. Works well now.
> ok good news
>
>>
>> And one problem with cpu_frequency. A device is not found (I still do
>> not know what should be found!):
>> FATAL: Error inserting acpi_cpufreq
>> (/lib/modules/2.6.18-4-686/kernel/arch/i386/kernel/cpu/cpufreq/acpi-cpufreq.ko):
>>
>> No such device
> two more questions:
> - does etch let you use stand-by or suspend/resume or whatever you
> call it ? i think most ubuntu versions do
Yes, this works, I can suspend or hibernate, and closing the lid
suspends the computer when on battery, and hibernates when on mains.
>
> - and do you use precompiled debian kernel or you cooked one by
> yourself ?
I use the precompiled kernel. I am a poor cook (despite French).
>>
>> roberto a �crit :
>> > hello
>> > i currently use debian 3.1 on latitude d600 and i'd like to know if
>> > anyone has successfully upgraded to debian 4.0 on this or similar
>> > systems
>> >
>> > i plan to do it as soon as possible
>>
>>
>> -- 
>> ------------------------------------------------------------------
>> Jean-Mudle Mouchel

-- 
------------------------------------------------------------------
Jean-Mudle Mouchel

Adresse :
UMR 7619 - Sisyphe
Universite P. et M. Curie
Case 105 - Tour 56/46 - 3ieme etage
4 place Jussieu - 75252 Paris Cedex 05
Programme PIREN-Seine : http://www.sisyphe.upmc.fr/internet/piren

Tel : +33 (0)1 44 27 51 26 - Fax : +33 (0)1 44 27 51 25
courriel : jean-mudle.mouchel@ccr.jussieu.fr
bureau : Bureau 404, Tour 56/55, 4ieme etage
------------------------------------------------------------------


-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

     

W"n6/
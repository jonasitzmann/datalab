From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Thu Jul  5 05:22:52 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l659MqL9024160
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 5 Jul 2007 05:22:52 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 015172E006; Thu,  5 Jul 2007 09:23:11 +0000 (UTC)
Old-Return-Path: <roberto03@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,LDOSUBSCRIBER,SPF_PASS 
	autolearn=ham version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.226])
	by murphy.debian.org (Postfix) with ESMTP id 032562DE02
	for <debian-laptop@lists.debian.org>; Thu,  5 Jul 2007 09:23:05 +0000 (UTC)
Received: by nz-out-0506.google.com with SMTP id q3so1471359nzb
        for <debian-laptop@lists.debian.org>; Thu, 05 Jul 2007 02:22:33 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Q/lpoAYi1XealP9aUFNA2w02w3deBjdBHH7ApGdi9O8YtzDtixh4IPw2qmGOGm+zQKN17II8xNQkNE6B6UyU7GhsA5AUCajS9YnbznHXvSLAIy1eO2dGkmgyS01w6nOzkD4cGRlEc0BQj3tRsIch2FnrwwuWRvFQDsqahK6v+mA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ebmmCzDqyNu1zfWnEOXDOmNFe1z1GlM48ahPCj7yO7r/k2NYfVn5Q8R8FrnHXIOteA1vY094JDTUgVCykB+oVVePtOqlitmDJcr1bJV6C/jZSL2+YPSxh9qSIlUU8flTQodruP6za2TdtcnDSwxQw7j8L9qeGYgio71GQ+NCbCY=
Received: by 10.114.127.1 with SMTP id z1mr8010098wac.1183627352194;
        Thu, 05 Jul 2007 02:22:32 -0700 (PDT)
Received: by 10.114.153.16 with HTTP; Thu, 5 Jul 2007 02:22:27 -0700 (PDT)
Message-ID: <4bcde3e10707050222p4b5d2c35mba9097031fd260d2@mail.gmail.com>
Date: Thu, 5 Jul 2007 11:22:27 +0200
From: roberto <roberto03@gmail.com>
Subject: Re: etch on latitude
Cc: SmartList <debian-laptop@lists.debian.org>
In-Reply-To: <4684E36D.50605@ccr.jussieu.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Disposition: inline
References: <4bcde3e10706290242t36823236t3c5ff835e0da73a@mail.gmail.com>
	 <4684E36D.50605@ccr.jussieu.fr>
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <J7pH4D.A.whF.-hLjGB@murphy>
To: debian-laptop@lists.debian.org
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31549
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Thu,  5 Jul 2007 09:23:11 +0000 (UTC)
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l659MqL9024160

On 6/29/07, Jean-Mudle Mouchel <jean-mudle.mouchel@ccr.jussieu.fr> wrote:
> Hi,
> I have etch on a latitude D610 (upgraded from Sarge).
> Most is ok.
>
> I had difficulties with the WiFi because the firmware were not at the
> right place on the disk (probably because of a major change around
> hotplug/udev). I obtained the last firmware from Intel (ipw2200), which
> had to be in /lib/firmware. Works well now.
ok good news

>
> And one problem with cpu_frequency. A device is not found (I still do
> not know what should be found!):
> FATAL: Error inserting acpi_cpufreq
> (/lib/modules/2.6.18-4-686/kernel/arch/i386/kernel/cpu/cpufreq/acpi-cpufreq.ko):
> No such device
>
> Good luck.
> JM
two more questions:
- does etch let you use stand-by or suspend/resume or whatever you
call it ? i think most ubuntu versions do

- and do you use precompiled debian kernel or you cooked one by yourself ?

>
> roberto a �crit :
> > hello
> > i currently use debian 3.1 on latitude d600 and i'd like to know if
> > anyone has successfully upgraded to debian 4.0 on this or similar
> > systems
> >
> > i plan to do it as soon as possible
>
>
> --
> ------------------------------------------------------------------
> Jean-Mudle Mouchel



-- 
roberto
OS: GNU/Linux, Debian


  

toki@aGe
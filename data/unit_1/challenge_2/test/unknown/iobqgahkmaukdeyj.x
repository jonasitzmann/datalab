From bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jul  2 09:43:33 2007
Return-Path: <bounce-debian-laptop=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62DhXL9014356
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 09:43:33 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 38D502E75E; Mon,  2 Jul 2007 13:43:42 +0000 (UTC)
Old-Return-Path: <celejar@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DATE_IN_PAST_12_24,
	LDOSUBSCRIBER,SPF_PASS autolearn=ham version=3.1.4
X-Original-To: debian-laptop@lists.debian.org
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.176])
	by murphy.debian.org (Postfix) with ESMTP id EDFC62E727
	for <debian-laptop@lists.debian.org>; Mon,  2 Jul 2007 13:43:30 +0000 (UTC)
Received: by py-out-1112.google.com with SMTP id a25so2807323pyi
        for <debian-laptop@lists.debian.org>; Mon, 02 Jul 2007 06:43:04 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:date:from:to:cc:subject:message-id:in-reply-to:references:x-mailer:mime-version:content-type:content-transfer-encoding;
        b=KrZMPQHX7NjSlXOygDDw4Po5SaSFZDp+KX5jf3F7msJym4SFgrw7YbsdVOSpk+SjoiaVft89ouyCsANxuvE7n7oVtXt0wj9ymf/h9QUHVZM7V0I/OrGCfg+VmBd0n/jJqsonozH3YexKOziBz0kjWd8KpcYOZ2XZF0xbM2eZGcM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:date:from:to:cc:subject:message-id:in-reply-to:references:x-mailer:mime-version:content-type:content-transfer-encoding;
        b=osMeZIceeySZChyVhqHa+BBDuHS6/bZaroeONVF4yRWFtoQH8tzpqwN6ISxsr8rcSmRqd47IeBDZ3NFl0QUVZDrR8O9TtR2o3nME1vLG2sUuKNk7+XVXPjynEGUGSq5kA3DJNCrLBsgocSpQjAKOl0j3zWy7NKs8LjdIvx02dsc=
Received: by 10.35.39.2 with SMTP id r2mr5945000pyj.1183383784197;
        Mon, 02 Jul 2007 06:43:04 -0700 (PDT)
Received: from lizzie.villette ( [209.212.21.173])
        by mx.google.com with ESMTP id p57sm11089795pyb.2007.07.02.06.43.03
        (version=TLSv1/SSLv3 cipher=OTHER);
        Mon, 02 Jul 2007 06:43:03 -0700 (PDT)
Date: Sun, 1 Jul 2007 15:27:11 -0400
From: Celejar <celejar@gmail.com>
To: debian-laptop@lists.debian.org
Cc: jean-mudle.mouchel@ccr.jussieu.fr
Subject: Re: etch on latitude
Message-Id: <20070701152711.ae53d5be.celejar@gmail.com>
In-Reply-To: <4684E36D.50605@ccr.jussieu.fr>
References: <4bcde3e10706290242t36823236t3c5ff835e0da73a@mail.gmail.com>
	<4684E36D.50605@ccr.jussieu.fr>
X-Mailer: Sylpheed 2.4.2 (GTK+ 2.10.13; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <E5aZj.A.t5D.OEQiGB@murphy>
Resent-From: debian-laptop@lists.debian.org
X-Mailing-List: <debian-laptop@lists.debian.org> archive/latest/31544
X-Loop: debian-laptop@lists.debian.org
List-Id: <debian-laptop.lists.debian.org>
List-Post: <mailto:debian-laptop@lists.debian.org>
List-Help: <mailto:debian-laptop-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-laptop-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-laptop-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-laptop-request@lists.debian.org
Resent-Date: Mon,  2 Jul 2007 13:43:42 +0000 (UTC)

On Fri, 29 Jun 2007 12:48:13 +0200
Jean-Mudle Mouchel <jean-mudle.mouchel@ccr.jussieu.fr> wrote:

[snip]

> And one problem with cpu_frequency. A device is not found (I still do
> not know what should be found!):
> FATAL: Error inserting acpi_cpufreq
> (/lib/modules/2.6.18-4-686/kernel/arch/i386/kernel/cpu/cpufreq/acpi-cpufreq.ko):
> No such device

The message is trying to say (admittedly not very clearly) that that
particular cpufreq driver doesn't work with your cpu.  The loadcpufreq
script (from cpufrequtils) is incorrect for (at least) Celerons; see
bug #428248.  You can try p4_clockmod, but it doesn't seem to
accomplish very much in the sense of power saving (it does drastically
reduce system responsiveness :( ); see the above bug, and also the 3
bugs mentioned in the loadcpufreq script (#396117, #342014, #367307).

> 
> Good luck.
> JM

Celejar
--
mailmin.sourceforge.net - remote access via secure (OpenPGP) email
ssuds.sourceforge.net - A Simple Sudoku Solver and Generator


-- 
To UNSUBSCRIBE, email to debian-laptop-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

                

te.g eSh r
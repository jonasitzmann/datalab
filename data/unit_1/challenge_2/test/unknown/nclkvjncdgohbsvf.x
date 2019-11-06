From sugar-bounces@lists.laptop.org  Wed Jul  4 08:13:28 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64CDRL9010344
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 08:13:27 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id A60AA58BC7E0;
	Wed,  4 Jul 2007 08:12:15 -0400 (EDT)
Received: from mx1.redhat.com (mx1.redhat.com [66.187.233.31])
	by mail.laptop.org (Postfix) with ESMTP id 4B20758BC7E0
	for <sugar@lists.laptop.org>; Wed,  4 Jul 2007 08:12:14 -0400 (EDT)
Received: from int-mx1.corp.redhat.com (int-mx1.corp.redhat.com
	[172.16.52.254])
	by mx1.redhat.com (8.13.1/8.13.1) with ESMTP id l64CDLD9028087;
	Wed, 4 Jul 2007 08:13:21 -0400
Received: from mail.boston.redhat.com (mail.boston.redhat.com [172.16.76.12])
	by int-mx1.corp.redhat.com (8.13.1/8.13.1) with ESMTP id
	l64CDKfu009253; Wed, 4 Jul 2007 08:13:20 -0400
Received: from localhost.localdomain (vpn-4-55.str.redhat.com [10.32.4.55])
	by mail.boston.redhat.com (8.13.1/8.13.1) with ESMTP id l64CDIJs017899; 
	Wed, 4 Jul 2007 08:13:19 -0400
Message-ID: <468B8CF5.8030600@redhat.com>
Date: Wed, 04 Jul 2007 14:05:09 +0200
From: Marco Pesenti Gritti <mpg@redhat.com>
User-Agent: Thunderbird 2.0.0.4 (X11/20070615)
MIME-Version: 1.0
To: Simon Schamijer <simon@schampijer.de>
References: <468B892C.7020204@schampijer.de>
In-Reply-To: <468B892C.7020204@schampijer.de>
Cc: sugar@lists.laptop.org
Subject: Re: [sugar] notes on sugar-jhbuild
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org

Simon Schamijer wrote:
> In both cases my workaround was to add my standard pkgconfig path to my 
> environment since the packages is installed in my distro.
> PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig/
>
> Is there another way of doing this, or is this the "normal way" of 
> handling this issue?
>   

This is really strange, the prefix pkgconfig is built with is supposed 
to be on the config path by default. What does "which pkg-config" give? 
What is PKG_CONFIG_PATH set to originally?

> Another error is during the build of hulahop:
> /home/erikos/sugar-jhbuild/build/lib/libglib-2.0.so -lxul -lpyxpcom 
> -lxpcomglue_s  -Wl,-soname -Wl,_hulahop.so -o .libs/_hulahop.so
> /usr/bin/ld: cannot find -lxpcomglue_s
> collect2: ld returned 1 exit status
> make[1]: *** [_hulahop.la] Error 1
>
> Which package do I need to install for the shared library xpcomglue_s, 
> googled for it but could not really find out about it?
>
>   

I checked in a fix for this yesterday night. Easier solution to avoid a 
clean rebuild is to "cp build/lib/xulrunner-1.9a5pre/sdk/* 
build/lib/xulrunner-1.9a5pre"

> I am currently running Fedora6 - after the switch I guess it would be 
> recommended to switch to Fedora7?
>
>   

For now I'm not planning to drop "compatibility" with FC6. Though since 
most developers are running F7 you might get less problem if you run on 
it...

Marco
_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

           

ttiVXneo /5a
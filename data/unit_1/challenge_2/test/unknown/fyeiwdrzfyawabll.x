From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jul  3 16:03:58 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63K3vL9000763
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 3 Jul 2007 16:03:57 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id EEE42162BD9
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  3 Jul 2007 20:03:52 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.8 tests=ALL_TRUSTED,AWL,BAYES_00,
	RCVD_IN_DSBL autolearn=ham version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from localhost (dp [66.70.73.150])
	by lists.samba.org (Postfix) with ESMTP id 0EA49162AC0;
	Tue,  3 Jul 2007 20:03:04 +0000 (GMT)
Message-Id: <182DBC42-BCD0-49FD-84A7-1BB9695DE24E@samba.org>
From: James Peach <jpeach@samba.org>
To: samba-technical@lists.samba.org
In-Reply-To: <20070703195504.D0A88162AC0@lists.samba.org>
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Apple Message framework v893)
Date: Tue, 3 Jul 2007 13:02:39 -0700
References: <20070703195504.D0A88162AC0@lists.samba.org>
X-Mailer: Apple Mail (2.893)
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>
Subject: Re: svn commit: samba r23689 - in branches/SAMBA_3_0/source: .
	exports
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


On Jul 3, 2007, at 12:55 PM, jerry@samba.org wrote:

> Author: jerry
> Date: 2007-07-03 19:55:02 +0000 (Tue, 03 Jul 2007)
> New Revision: 23689
>
> WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23689
>
> Log:
> Squashed commit of the following:
>
> commit 0d4bbd197198a94bf4e29e0ccd175a40a60097f3
> Author: Gerald (Jerry) Carter <jerry@samba.org>
> Date:   Mon Jul 2 20:08:19 2007 -0500
>
>    Introduce GNU ld linker export-script for hiding non-public symbols
>    in shared libraries.
>
>    Based on initial patch from Julien Cristau <jcristau@debian.org>
>    and suggestions from James Peach <jpeach@samba.org>.  Currently
>    the libsmbsharemodes libraries still exports *.  Signed off on
>    my Derrell as well.
>
> Added:
>   branches/SAMBA_3_0/source/exports/
>   branches/SAMBA_3_0/source/exports/libsmbclient.syms
>   branches/SAMBA_3_0/source/exports/libsmbsharemodes.syms
>   branches/SAMBA_3_0/source/library-versions.in
> Modified:
>   branches/SAMBA_3_0/source/Makefile.in
>   branches/SAMBA_3_0/source/configure.in
>
>
> Changeset:
> Modified: branches/SAMBA_3_0/source/Makefile.in
> ===================================================================
> --- branches/SAMBA_3_0/source/Makefile.in	2007-07-03 18:00:54 UTC  
> (rev 23688)
> +++ branches/SAMBA_3_0/source/Makefile.in	2007-07-03 19:55:02 UTC  
> (rev 23689)
> @@ -21,6 +21,12 @@
> CC=@CC@
> SHLD=@SHLD@
>
> +## Dynamic shared libraries build settings
> +DSO_EXPORTS_CMD=-Wl,--version-script,exports/`basename $@ | sed 's/ 
> @SHLIBEXT@$$/syms/'`
> +DSO_EXPORTS=@DSO_EXPORTS@
> +SONAME_VER=`grep ^$@ $(srcdir)/library-versions | cut -d: -f2`
> +SHLD_DSO = $(SHLD) $(LDSHFLAGS) $(DSO_EXPORTS)

You should be able to make this

SHLD_DSO = $(SHLD) $(LDSHFLAGS) $(LDFLAGS) $(DSO_EXPORTS) -o $@

--
James Peach | jpeach@samba.org

          

ednr6r
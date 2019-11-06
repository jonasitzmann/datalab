From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 11:49:21 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56FnKhB023407
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 11:49:20 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 8F61216389F
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 15:49:14 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: **
X-Spam-Status: No, score=2.8 required=3.8 tests=AWL,BAYES_50,NO_MORE_FUNN,
	RCVD_IN_DSBL,SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from glaucus.site5.com (glaucus.multisite.site5.com [216.118.97.198])
	by lists.samba.org (Postfix) with ESMTP id EAA6A162AC8;
	Wed,  6 Jun 2007 15:48:46 +0000 (GMT)
Received: from blueice3n1.de.ibm.com ([195.212.29.179] helo=[9.157.126.176])
	by glaucus.site5.com with esmtpa (Exim 4.63)
	(envelope-from <ab@samba.org>)
	id 1Hvxkb-0001qz-82; Wed, 06 Jun 2007 11:48:45 -0400
Message-ID: <4666D758.1030600@samba.org>
Date: Wed, 06 Jun 2007 19:48:40 +0400
From: Alexander Bokovoy <ab@samba.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Alexander Bokovoy <ab@samba.org>
References: <E5BA6A50-730C-4B51-BF5D-B9DECCD27A48@samba.org>	<46646D64.4000301@samba.org>	<5CBFCF76-189D-4799-8DC5-F9A62CED74A8@samba.org>	<46648D7B.4030609@samba.org>	<4664C430.1010009@samba.org>
	<4666A46E.3070800@samba.org> <4666BAC7.8090606@samba.org>
In-Reply-To: <4666BAC7.8090606@samba.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=KOI8-R
Content-Transfer-Encoding: 8bit
X-Antivirus-Scanner: This message has been scanned by ClamAV.
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - glaucus.site5.com
X-AntiAbuse: Original Domain - samba.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - samba.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>, samba-technical@samba.org
Subject: Re: nroff errors in 3.0.35a version of smb.conf.5
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

Alexander Bokovoy �����:
>> Thanks alexander. If you need access to the build machine I'm
>> using, let me know.
> Please try current samba-docs SVN. I've fixed couple of issues,
> including: - generation of quote for man pages using the same
> highlighting sequence as emphasis (\fB ... \fR) - Proper escaping of
> \ in the XML/MAN -- you have to use \\ as in normal POSIX :-) - wrong
> attribution file for Samba3 HOWTO - generation of attribution files
> w/o warnings
I added more fixes to escape slashes in CIFS URIs in man pages. Now when
you write then in <command/> and <value/> elements you don't need to
escape them, this should be done automatically by wrapping them to
<literal/> in expand-smbconfdoc.xsl and further escaping them when
processing <literal/> in man page generator.

-- 
/ Alexander Bokovoy
Samba Team                      http://www.samba.org/
ALT Linux Team                  http://www.altlinux.org/
Midgard Project Ry              http://www.midgard-project.org/

              

,�9ce bR
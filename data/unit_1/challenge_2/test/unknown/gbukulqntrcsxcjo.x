From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Tue Jun  5 07:14:09 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55BE9hB007977
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 07:14:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 06E3116389A
	for <ktwarwic@speedy.uwaterloo.ca>; Tue,  5 Jun 2007 11:14:03 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 07708162AC5;
	Tue,  5 Jun 2007 11:13:29 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 7A40C20C54C; Tue,  5 Jun 2007 13:12:47 +0200 (CEST)
Message-ID: <4665455E.5020508@samba.org>
Date: Tue, 05 Jun 2007 13:13:34 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: "Stefan (metze) Metzmacher" <metze@samba.org>
References: <46642560.7060101@samba.org>
In-Reply-To: <46642560.7060101@samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
Subject: Re: samba3 crash
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Stefan (metze) Metzmacher schrieb:
> Hi,
> 
> I just noticed this while manually run make test in samba3
> on host hape HP-UX 11.00. Maybe the build-farm will show this
> also in the next run...

strange that BASE-LOCK-LOCK3 from samba4 smbtorture doesn't trigger this...

a backtrace with smbd/*.o locking/*.o lib/talloc/*.o and lib/fault.o
lib/util.o compiled with -g1:

I'll try with -g now:

warning: reading `r3' register: No data
0xc01f5b78 in _waitpid_sys+0x10 () from /usr/lib/libc.2
#0  0xc01f5b78 in _waitpid_sys+0x10 () from /usr/lib/libc.2
No symbol table info available.
#1  0xc0202d04 in waitpid+0x64 () from /usr/lib/libc.2
No symbol table info available.
#2  0xc01ec760 in _system_sys+0x1b0 () from /usr/lib/libc.2
No symbol table info available.
#3  0xc0202714 in system+0x5c () from /usr/lib/libc.2
No symbol table info available.
#4  0x3fa5d4 in smb_panic (why=<incomplete type>) at lib/util.c:0
No locals.
#5  0x374ecc in byte_range_lock_destructor (br_lck=0x40167538) at
locking/brlock.c:0
No locals.
#6  0x3c862c in _talloc_free (ptr=0x40167538) at lib/talloc/talloc.c:0
No locals.
#7  0x3c9630 in talloc_free (ptr=0x40167538) at lib/talloc/talloc.c:0
No locals.
#8  0x177114 in reply_lockingX (conn=0x401b0b90, inbuf=0x4016d880 "",
outbuf=0x4018dcd0 "", length=65, bufsize=131072)
    at smbd/reply.c:3221
No locals.
#9  0x1dd9f4 in switch_message (type=36, inbuf=0x4016d880 "",
outbuf=0x4018dcd0 "", size=65, bufsize=131072)
    at smbd/process.c:0
No locals.
#10 0x1ddb70 in construct_reply (inbuf=0x4016d880 "", outbuf=0x4018dcd0
"", size=65, bufsize=131072) at smbd/process.c:0
No locals.
#11 0x1ddfcc in process_smb (inbuf=0x4016d880 "", outbuf=0x4018dcd0 "")
at smbd/process.c:0
No locals.
#12 0x1dfb6c in smbd_process () at smbd/process.c:0
No locals.
#13 0x626aec in main (argc=7, argv=0x7f7f1064) at smbd/server.c:865
No locals.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGZUVem70gjA5TCD8RAj3bAKC1DenLtAfuzVZ0IcQatIpHuSdWAACfeIkb
W8lkTO0C0QLCBac6F+9JEZ0=
=OtIu
-----END PGP SIGNATURE-----

     

>Wt -/ o/t
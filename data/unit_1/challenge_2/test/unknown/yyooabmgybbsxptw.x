From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun  4 10:45:46 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54EjkhB029210
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 10:45:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7FFB916381E
	for <ktwarwic@speedy.uwaterloo.ca>; Mon,  4 Jun 2007 14:45:37 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,SPF_NEUTRAL 
	autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id C7821162ACB
	for <samba-technical@samba.org>; Mon,  4 Jun 2007 14:44:40 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP id 462C720C54C
	for <samba-technical@samba.org>; Mon,  4 Jun 2007 16:43:59 +0200 (CEST)
Message-ID: <46642560.7060101@samba.org>
Date: Mon, 04 Jun 2007 16:44:48 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: samba3 crash
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

Hi,

I just noticed this while manually run make test in samba3
on host hape HP-UX 11.00. Maybe the build-farm will show this
also in the next run...

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
#4  0x397224 in smb_panic+0x16c ()
No symbol table info available.
#5  0x317aa0 in byte_range_lock_destructor+0x290 ()
No symbol table info available.
#6  0x368910 in _talloc_free+0x118 ()
No symbol table info available.
#7  0x3695c0 in talloc_free+0x10 ()
No symbol table info available.
#8  0x14f484 in reply_lockingX+0xb74 ()
No symbol table info available.
#9  0x191094 in switch_message+0x5cc ()
No symbol table info available.
#10 0x1911b0 in construct_reply+0xa0 ()
No symbol table info available.
#11 0x191518 in process_smb+0x2c8 ()
No symbol table info available.
#12 0x192820 in smbd_process+0x1c0 ()
No symbol table info available.
#13 0x5d74c0 in main+0x1140 ()
No symbol table info available.
TEST OUTPUT:
host=127.0.0.2 share=tmp user=build myname=hape
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGZCVgm70gjA5TCD8RAr8oAKCFp/SUl8v4xLWXR8barA1jnU4f1wCfWCq6
h6fxUduijeWEbGP7RqjNUjs=
=Bdde
-----END PGP SIGNATURE-----

                 

tdanrxAy
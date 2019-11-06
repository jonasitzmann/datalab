From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 09:02:11 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56D2AhB021714
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 09:02:10 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1B10A163861
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 13:02:04 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id E11CA162AC3;
	Wed,  6 Jun 2007 13:01:18 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 8659D20C54C; Wed,  6 Jun 2007 15:00:34 +0200 (CEST)
Message-ID: <4666B023.8050909@samba.org>
Date: Wed, 06 Jun 2007 15:01:23 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: Jeremy Allison <jra@samba.org>
References: <46642560.7060101@samba.org> <4665455E.5020508@samba.org>
	<46654E5F.8080909@samba.org> <4665552C.8040600@samba.org>
	<46655766.4080006@samba.org> <20070605174424.GA23725@samba1>
In-Reply-To: <20070605174424.GA23725@samba1>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: Andrew Tridgell <tridge@samba.org>,
   Multiple recipients of list SAMBA-TECHNICAL <samba-technical@samba.org>
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

Jeremy Allison schrieb:
> On Tue, Jun 05, 2007 at 02:30:30PM +0200, Stefan (metze) Metzmacher wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>>
>>>> home/build/build_farm/samba_3_0.metze/source/bin/smbd"
>>>>         result = 1696625253
>>>> #5  0x374ecc in byte_range_lock_destructor (br_lck=0x40164868) at
>>>> locking/brlock.c:1578
>>>>         data = {dptr = 0x401b90c8 "", dsize = 8832}
>>>>         status = {v = 3221225473}
>>>>         key = {dptr = 0x40164878 "", dsize = 16}
>>>> #6  0x3c862c in _talloc_free (ptr=0x40164868) at lib/talloc/talloc.c:0
>>>> No locals.
>>>> #7  0x3c9630 in talloc_free (ptr=0x40164868) at lib/talloc/talloc.c:0
>> I just found the difference between LOCK3 and BASE-LOCK-LOCK3
>> samba has torture_numops=100 and samba4 has torture_numops=10
>>
>> when I change it to 10 in samba3 it also doesn't appear...
>>
>> should we change samba4 to 100 again?
> 
> Oh, is this on HPUX ? HPUX is one of the insane
> systems that has a hard coded limit on the number
> of allowable fcntl locks. You have to change a
> kernel tunable and reboot to fix this.
> 
> If it's running out of fcntl locks on HPUX this
> is a known HPUX bug - we tell people to up the
> number of allowable locks and reboot.

Hi Jeremy,

thanks! we changed nflock from 200 to 500 and it works fine now.

Another workaround is "posix locking = no"...

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGZrAim70gjA5TCD8RAq0oAJ9zfgcQ0sJ/WO40f1LVkNlaMcu4HgCgwVVy
1yIQt9U9jcT84utMvs7EhD8=
=AUey
-----END PGP SIGNATURE-----

    

0.a/3
Ugir: Se
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Sat Jun  2 03:43:14 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l527hDhB020226
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 2 Jun 2007 03:43:13 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 1ED34162C2A
	for <ktwarwic@speedy.uwaterloo.ca>; Sat,  2 Jun 2007 07:43:08 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_NEUTRAL,UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.mx-netz.de (ip-217-172-181-76.mx-netz.de [217.172.181.76])
	by lists.samba.org (Postfix) with ESMTP id 4F7EE162AC8
	for <samba-technical@lists.samba.org>;
	Sat,  2 Jun 2007 07:42:38 +0000 (GMT)
Received: from [172.30.76.9] (unknown [172.30.76.9])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	(SASL METHOD:[PLAIN] USERNAME:[metze])
	by mail.mx-netz.de (SMTP-MAIL-SERVER) with ESMTP
	id 256E920C54C; Sat,  2 Jun 2007 09:41:58 +0200 (CEST)
Message-ID: <46611F72.2050701@samba.org>
Date: Sat, 02 Jun 2007 09:42:42 +0200
From: "Stefan (metze) Metzmacher" <metze@samba.org>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: samba-technical@lists.samba.org
References: <20070602033102.B27F8162AD1@lists.samba.org>
In-Reply-To: <20070602033102.B27F8162AD1@lists.samba.org>
X-Enigmail-Version: 0.94.2.0
OpenPGP: id=0E53083F
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: samba-cvs@samba.org
Subject: Re: Rev 432: make test now works again in
	http://samba.org/~tridge/ctdb
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

> --- a/tests/bench.sh	2007-06-02 03:16:11 +0000
> +++ b/tests/bench.sh	2007-06-02 03:31:36 +0000
> @@ -20,8 +20,8 @@
>  killall -9 ctdb_bench
>  echo "Trying $NUMNODES nodes"
>  for i in `seq 1 $NUMNODES`; do
> -  $VALGRIND bin/ctdb_bench --nlist nodes.txt --socket sock.$i $* &
> +  valgrind -q $VALGRIND bin/ctdb_bench --socket sock.$i -n $NUMNODES $*  &


Hi Tridge,

why hardcoded valgrind -q here?

metze
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.5 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFGYR9ym70gjA5TCD8RAujyAJ9e84tPWBGvd1v61hftMhQ8Tt4FhwCfX/1D
/r8LFhskdQSoXRa7PLdZYIM=
=YLd/
-----END PGP SIGNATURE-----

  


elIPppt= pn
From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun 20 19:25:30 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KNPTL9016160
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 19:25:29 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 7D235163849
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 20 Jun 2007 23:25:27 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=3.8 tests=AWL,BAYES_00,NO_RELAYS,
	RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: by lists.samba.org (Postfix, from userid 549)
	id 508BC162AD1; Wed, 20 Jun 2007 23:24:35 +0000 (GMT)
Date: Wed, 20 Jun 2007 16:23:52 -0700
From: Jeremy Allison <jra@samba.org>
To: Atsushi Nakabayashi <nakabayashi@miraclelinux.com>
Message-ID: <20070620232352.GE7702@samba1>
References: <4678906D.6090206@miraclelinux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4678906D.6090206@miraclelinux.com>
User-Agent: Mutt/1.5.11
Cc: samba-technical@samba.org
Subject: Re: Memory leaks
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Jeremy Allison <jra@samba.org>
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

On Wed, Jun 20, 2007 at 11:26:53AM +0900, Atsushi Nakabayashi wrote:
> Hi, samba-tech,
> 
> I have found a memory leak in the error route of the samba-3.0.24.
> 
> --- source/nmbd/nmbd_winsserver.c
> 2327         /* We will do the writing in a child process to ensure 
> that the parent doesn't block while this is done */
> 2328         if (background) {
> 2329                 CatchChild();
> 2330                 if (sys_fork()) {
> 2331                         return;
> 2332                 }
> 2333                 if (tdb_reopen(wins_tdb)) {
> 2334                         DEBUG(0,("wins_write_database: tdb_reopen 
> failed. Error was %s\n",
> 2335                                 strerror(errno)));
> 2336                         return;
> 2337                 }
> 
> The child process is not released, when the tdb_reopen function returns 
> false(-1).
> 

> diff -uNrp samba-3.0.24.org/source/nmbd/nmbd_winsserver.c samba-3.0.24/source/nmbd/nmbd_winsserver.c
> --- samba-3.0.24.org/source/nmbd/nmbd_winsserver.c	2007-06-19 23:38:38.000000000 +0900
> +++ samba-3.0.24/source/nmbd/nmbd_winsserver.c	2007-06-19 23:39:05.000000000 +0900
> @@ -2333,6 +2333,7 @@ void wins_write_database(time_t t, BOOL 
>  		if (tdb_reopen(wins_tdb)) {
>  			DEBUG(0,("wins_write_database: tdb_reopen failed. Error was %s\n",
>  				strerror(errno)));
> +				_exit(0);
>  			return;
>  		}
>  	}

Perfectly correct - applied - thanks !

Jeremy.

            

rukte�" 
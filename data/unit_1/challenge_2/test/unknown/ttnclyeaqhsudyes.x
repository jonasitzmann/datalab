From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Thu Jun 21 11:09:47 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LF9kL9025583
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 11:09:46 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 801CC163943
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 21 Jun 2007 15:09:44 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id E32C7162BBC;
	Thu, 21 Jun 2007 15:08:58 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1I1OHJ-0001lk-Vv; Thu, 21 Jun 2007 17:08:57 +0200
Received: by intern.SerNet.DE
	id 1I1OHJ-0006cR-Nk; Thu, 21 Jun 2007 17:08:57 +0200
Received: by intern.SerNet.DE
	id 1I1OHJ-0006cO-H7; Thu, 21 Jun 2007 17:08:57 +0200
Received: from bjacke by pell.sernet.de with local (Exim 4.63)
	(envelope-from <bjacke@sernet.de>)
	id 1I1OHb-0006jZ-WB; Thu, 21 Jun 2007 17:09:16 +0200
Date: Thu, 21 Jun 2007 17:09:15 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= JACKE <bj@SerNet.DE>
To: jpeach@samba.org
Mail-Followup-To: jpeach@samba.org, samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Message-Id: <E1I1OHJ-0006cR-Nk@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: samba-technical@lists.samba.org
Subject: logic error in sys_bsd_setgroups?
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

Hi James,

while debugging some problems with the FreeBSD setgroups() workaround today
I found in sys_bsd_setgroups():

#if defined(BROKEN_GETGROUPS)
        ret = sys_broken_setgroups(setlen, new_gidset ? new_gidset : gidset);
#else
	        ret = setgroups(setlen, new_gidset ? new_gidset : gidset);
#endif

I think BROKEN_GETGROUPS should be HAVE_BROKEN_GETGROUPS, sholdn't it?

Then taking a look at sys_setgroups():

int sys_setgroups(gid_t UNUSED(primary_gid), int setlen, gid_t *gidset)
{
#if !defined(HAVE_SETGROUPS)
        errno = ENOSYS;
        return -1;
#endif /* HAVE_SETGROUPS */

#if defined(HAVE_BROKEN_GETGROUPS)
        return sys_broken_setgroups(setlen, gidset);
#elif defined(USE_BSD_SETGROUPS)
        return sys_bsd_setgroups(primary_gid, setlen, gidset);
#else
        return setgroups(setlen, gidset);
#endif
}

... when we HAVE_BROKEN_GETGROUPS sys_bsd_setgroups isn't called at all. But
why do we check for BROKEN_GETGROUPS in sys_bsd_setgroups then?


thanks ...
Bjoern
-- 
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen

          

ur-thdahCMV	o
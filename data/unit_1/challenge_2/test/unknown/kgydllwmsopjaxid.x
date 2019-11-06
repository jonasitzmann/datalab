From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 25 17:51:08 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PLp8L9001978
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 17:51:08 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A1D6616389D
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 25 Jun 2007 21:51:05 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: **
X-Spam-Status: No, score=2.4 required=3.8 tests=AWL,BAYES_50,HTML_30_40,
	HTML_MESSAGE,NORMAL_HTTP_TO_IP,RCVD_IN_DSBL,SPF_PASS autolearn=no 
	version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.172])
	by lists.samba.org (Postfix) with ESMTP id 0C807162ADF
	for <samba-technical@lists.samba.org>;
	Mon, 25 Jun 2007 21:50:37 +0000 (GMT)
Received: by ug-out-1314.google.com with SMTP id b27so1529625ugd
	for <samba-technical@lists.samba.org>;
	Mon, 25 Jun 2007 14:50:37 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type;
	b=BpB312xbnzi6A7z2+OezjDNZNguwFysqGTHj0H7X29DBIv5nRaTKyL1Ea/u17NsI1qFpxLZK3j/nZouSjfjPhxGp6etrOuZPdE4nQho+rEX4ritbeJE99PNXirrDkhVXq6PYzniSJBmvG91LBNN/CT5BucUS7HDbpnl8oG9raoE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=beta;
	h=received:message-id:date:from:to:subject:mime-version:content-type;
	b=LrrDcCmPJD6dw9oW9p7GAC9bS+RuIBcfmApXwDG0/ReEUSr6X0SYP0fa5l9aQ/jn5D7G2j9zjbZwYGXEpru5wFMhTwnZ+jTEEE8fja5Z1Yv0inKfq+ffv3YpI1g7FxsaWX+Gc+hb6di7FaDBFpJJfPc6YdX4lGtGF5NSujPc4CI=
Received: by 10.82.174.20 with SMTP id w20mr13487582bue.1182808237092;
	Mon, 25 Jun 2007 14:50:37 -0700 (PDT)
Received: by 10.82.170.12 with HTTP; Mon, 25 Jun 2007 14:50:37 -0700 (PDT)
Message-ID: <f0a71180706251450q655f08fxff0e0b9d387785f2@mail.gmail.com>
Date: Mon, 25 Jun 2007 17:50:37 -0400
From: "Robert Rappaport" <robert.rappaport@gmail.com>
To: samba-technical@lists.samba.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.5
Subject: samba not responding to linux __break_lease() call.
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

A couple of weeks ago I posted a message with the above subject to the samba
general interest list and I received a response from Volker Lendecke.  We
subsequently interchanged several mail messages on this subject.  I now have
some more evidence about my problem and I would like to know if anyone can
help.

Basically I see the foolwoing sequence of calls:

  First  __break_lease() is called and it then calls:

      lease_break_callback() => kill_fasync() => __kill_fasync() =>
send_sigio() => send_sigio_to_task() => sigio_perm()

This is where it fails because sigio_perm() is called in
send_sigio_to_task() with the following lines of code:

        if (!sigio_perm(p, fown, fown->signum))
                return;

And I am seeing an early return from send_sigio_to_task() with ever having
called the following sequence:

       group_send_sig_info() => __group_send_sig_info() => send_signal()

Because send_signal() is not being called the signal is not delivered to the
smbd task and the lease is not being released.

Routine, sigio_perm() is very simple:

static inline int sigio_perm(struct task_struct *p,
                             struct fown_struct *fown, int sig)
{
        return (((fown->euid == 0) ||
                 (fown->euid == p->suid) || (fown->euid == p->uid) ||
                 (fown->uid == p->suid) || (fown->uid == p->uid)) &&
                !security_file_send_sigiotask(p, fown, sig));
}

and the problem I see is that it is returning the value zero because:

           fown->euid is 500
           fown-> uid  is 500
           p->uid        is 0
           p->suid      is 0

where p is a pointer to the task_stuct of the smbd task.

It appears to me that the euid and the uid of the file owner being 500 is
probably correct in that that should reflect the properties of the PC client
for whom samba has opened the file.  But I am not sure what the smbd task
should have in its task_struct and if the values I see represent an error.

I am running samba-3.0.24-3.fc6 on linux 2.6.19.5.

I have observed this behavior when running with my own file system and also
with an ext3 file system served to a PC client.

I would be grateful for any help in resolving this.

- Robert Rappaport



Kwafgs/e01loqoo
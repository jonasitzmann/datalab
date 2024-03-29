From beginners-return-92738-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 05:16:26 2007
Return-Path: <beginners-return-92738-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P9FjL9023596
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 05:15:45 -0400
Received: (qmail 8512 invoked by uid 514); 25 Jun 2007 09:15:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8503 invoked from network); 25 Jun 2007 09:15:37 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 25 Jun 2007 09:15:37 -0000
Received: (qmail 8469 invoked by uid 225); 25 Jun 2007 09:15:37 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8452 invoked by alias); 25 Jun 2007 09:15:36 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from mail-in-08.arcor-online.net (HELO mail-in-08.arcor-online.net) (151.189.21.48)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 25 Jun 2007 02:15:29 -0700
Received: from mail-in-14-z2.arcor-online.net (mail-in-14-z2.arcor-online.net [151.189.8.31])
	by mail-in-08.arcor-online.net (Postfix) with ESMTP id D39B727AC36
	for <beginners@perl.org>; Mon, 25 Jun 2007 11:15:23 +0200 (CEST)
Received: from mail-in-10.arcor-online.net (mail-in-10.arcor-online.net [151.189.21.50])
	by mail-in-14-z2.arcor-online.net (Postfix) with ESMTP id C3D8F100C2
	for <beginners@perl.org>; Mon, 25 Jun 2007 11:15:23 +0200 (CEST)
Received: from localhost (dslb-084-056-065-032.pools.arcor-ip.net [84.56.65.32])
	(Authenticated sender: micha105@arcor.de)
	by mail-in-10.arcor-online.net (Postfix) with ESMTP id 6592424D832
	for <beginners@perl.org>; Mon, 25 Jun 2007 11:15:23 +0200 (CEST)
From: Michael Scondo <michael.scondo@phil.stud.uni-erlangen.de>
To: beginners@perl.org
Subject: Re: strange unexpected deadlock
Date: Mon, 25 Jun 2007 11:08:54 +0000
User-Agent: KMail/1.9.5
References: <200706231220.37892.michael.scondo@phil.stud.uni-erlangen.de> <31086b240706230808h2392d0u8108c5850748b807@mail.gmail.com>
In-Reply-To: <31086b240706230808h2392d0u8108c5850748b807@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706251108.54512.michael.scondo@phil.stud.uni-erlangen.de>
X-Virus-Scanned: ClamAV version 0.90.3, clamav-milter version 0.90.3 on mail-in-10.arcor-online.net
X-Virus-Status: Clean

On Saturday 23 June 2007 15:08, Tom Phoenix wrote:
> On 6/23/07, Michael Scondo <michael.scondo@phil.stud.uni-erlangen.de> wrote:
> > sub thread1{
> >                 print "1\n";
> >                 lock $x;
> >                 print "locked x: 1\n";
> >                 cond_wait $x;
>
> Can't get past here until $x is signalled by another thread, and
> unlocked by all other threads.
>

> As written, this is the end-of-scope for the lock on $x (as well as
> the one on $y). But unless some third thread can rescue these first
> two, they seem to be deadlocked, with the first waiting for $x to be
> unlocked and the second waiting for $y to be signalled.
>


Thanks a lot for you explanation !
I didn't read the manual carefully enough....

Therefore I didn't realize that cond_wait locks a variable again AFTER it has 
been signalled.


> As you discovered, using the inner braces will release the lock on $x
> soon enough to avoid the deadlock.
>
> By the way, thanks greatly for the detailed, self-contained test case;
> it showed exactly what you were doing.
>
DNRTFM
Did not read the fucking manual...


Thanks again for your help,
Michael

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

2se,Nd:id
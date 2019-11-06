From beginners-return-92613-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 22:47:02 2007
Return-Path: <beginners-return-92613-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5L2l1L9017739
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 22:47:01 -0400
Received: (qmail 11367 invoked by uid 514); 21 Jun 2007 02:46:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 11358 invoked from network); 21 Jun 2007 02:46:54 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 02:46:54 -0000
Received: (qmail 8414 invoked by uid 225); 21 Jun 2007 02:46:54 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8401 invoked by alias); 21 Jun 2007 02:46:53 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web53005.mail.re2.yahoo.com (HELO web53005.mail.re2.yahoo.com) (206.190.49.35)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 20 Jun 2007 19:46:39 -0700
Received: (qmail 9913 invoked by uid 60001); 21 Jun 2007 02:46:35 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type:Message-ID;
  b=XG5Q8PxvVH/MBewGcFGF4Kaa9Gaj1jRIqOS2tAaQUn0+Foj4R1tYhL/4BUk45IJzS0C81e+b6xrMXOjTub27yvqZB/nQBd337iU3FMo6xRLOye0onklmfaEfMfzsQl1qX0rWWZA6YT11YR8dKxfWXJKW5fem6koFx7m5oapeoPA=;
X-YMail-OSG: IgclsZsVM1nZIBYrPwLkHjkB8gVXqyFhBOVh.sfQNU_g.8OneEeAcSIhUnoJdcHsIFhG6a6Epp4XGtW7y2C0wmGG29H23n80Z8bRrIY9TS_ren9on0oTo.i0TbCzUdct5GgwI.BfRAUfOhDfhjnXl9K83w--
Received: from [209.73.178.42] by web53005.mail.re2.yahoo.com via HTTP; Wed, 20 Jun 2007 19:46:35 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Wed, 20 Jun 2007 19:46:35 -0700 (PDT)
From: Ravi Malghan <rmalghan@yahoo.com>
Subject: Re: [RESOLVED]Unable to run perl script within cron
To: beginners@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Message-ID: <391681.9114.qm@web53005.mail.re2.yahoo.com>

I had to set the LD_LIBRARY_PATH in the cron as following

0,5,10,15,20,25,30,35,40,45,50,55 * * * * LD_LIBRARY_PATH=/export/home/netcool/oracle/instantclient_10_2:/usr/arsapi/lib:/usr/local/lib /exp
ort/home/netcool/lookForNewRequests.pl

----- Original Message ----
From: Ravi Malghan <rmalghan@yahoo.com>
To: beginners@perl.org
Sent: Wednesday, June 20, 2007 10:42:20 PM
Subject: Unable to run perl script within cron


Hi: I have a script which runs fine when I run it from the shell prompt. My LD_LIBRARY_PATH in the shell is as shown below

bash-2.05$ env |grep LD_LIBRARY_PATH
LD_LIBRARY_PATH=/export/home/netcool/oracle/instantclient_10_2:/usr/arsapi/lib:/usr/local/lib

But the same script when I run from crontab (same user as above), I get the following error in my mailbox generated by cron.

Can't load '/usr/local/lib/perl5/site_perl/5.8.7/sun4-solaris/auto/ARS/ARS.so' for module ARS: ld.so.1: perl: fatal: libicudatabmc.so.32: open failed: No such file or directory at /usr/local/lib/perl5/5.8.7/sun4-solaris/DynaLoader.pm line 230.
at /export/home/netcool/lookForNewRequests.pl line 10
Compilation failed in require at /export/home/netcool/lookForNewRequests.pl line 10.
BEGIN failed--compilation aborted at /export/home/netcool/lookForNewRequests.pl line 10.

I have the following lines in my script at the beginning and the file libicudatabmc.so.32 is in /usr/arsapi/lib.

$ENV{'LD_LIBRARY_PATH'} = '/export/home/netcool/oracle/instantclient_10_2:/usr/arsapi/lib:/usr/local/lib';

Can someone help?
Thanks
Ravi


       
____________________________________________________________________________________
Boardwalk for $500? In 2007? Ha! Play Monopoly Here and Now (it's updated for today's economy) at Yahoo! Games.
http://get.games.yahoo.com/proddesc?gamekey=monopolyherenow  

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       
____________________________________________________________________________________
Yahoo! oneSearch: Finally, mobile search 
that gives answers, not web links. 
http://mobile.yahoo.com/mobileweb/onesearch?refer=1ONXIC

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

E/0A_>oi
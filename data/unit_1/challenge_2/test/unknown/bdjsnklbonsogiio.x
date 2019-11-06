From beginners-return-92360-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 13:30:20 2007
Return-Path: <beginners-return-92360-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DHUJL9010354
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 13:30:20 -0400
Received: (qmail 29759 invoked by uid 514); 13 Jun 2007 17:30:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29750 invoked from network); 13 Jun 2007 17:30:10 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 17:30:10 -0000
Received: (qmail 13639 invoked by uid 225); 13 Jun 2007 17:30:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13631 invoked by alias); 13 Jun 2007 17:30:09 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of lakshmi.sailaja@supersolution.com designates 209.23.137.118 as permitted sender)
Received: from mail.supersolution.com (HELO mail.supersolution.com) (209.23.137.118)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 10:30:05 -0700
Received: from cornelia (cornelia.supersolution.com [192.168.78.137])
	by mail.supersolution.com (Postfix) with ESMTP id CFEE39200;
	Wed, 13 Jun 2007 12:30:00 -0500 (CDT)
Reply-To: <lakshmi.sailaja@supersolution.com>
From: "Lakshmi Sailaja" <lakshmi.sailaja@supersolution.com>
To: "Chas Owens" <chas.owens@gmail.com>
Cc: <beginners@perl.org>
Subject: RE: Prompt in Net::Telnet
Date: Wed, 13 Jun 2007 12:30:00 -0500
Message-ID: <EIEIIAMKDIBPECOEKDIKAEMNCDAA.lakshmi.sailaja@supersolution.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.6604 (9.0.2911.0)
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1441
Importance: Normal
In-Reply-To: <58ce48dc0706121640j9157250t4bced2b3e6a3952f@mail.gmail.com>

You are right that I am trying to connect to a Windows m/c from a Solaris
server.

But when I used the below code, it gets connected but I am having problem
displaying the output:


 my $telnet = Net::Telnet->new(HOST => "$server",
                Dump_log => "telnetdump.txt",
                PROMPT => '/[>]/');
 $telnet->login('user', 'pass');
 $telnet->cmd('ls -l >lsop.log');

after running this program, lsop.log is being created but I don't see
anything in it.

If I can display the output, I am all good. Please suggest!!!

Thanks in Advance.

Regards,
Lakshmi
952-833-1220

-----Original Message-----
From: Chas Owens [mailto:chas.owens@gmail.com]
Sent: Tuesday, June 12, 2007 6:41 PM
To: lakshmi.sailaja@supersolution.com
Cc: beginners@perl.org
Subject: Re: Prompt in Net::Telnet


On 6/12/07, Lakshmi Sailaja <lakshmi.sailaja@supersolution.com> wrote:
> Hello,
>
> I am supposed to write a program that will telnet to a remote server and
> execute some commands. I get the following error:
> "timed-out waiting for command prompt at <file name> line <line number>"
>
> This is because the prompt is not set correctly. Can you please tell me
what
> the prompt value should be set to?
>
> how can I determine my remote machines prompt?
>
> Thanks in advance!!
>
> Regards,
> Sailaja
>
>
> --
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
>
>
>

If you are trying to connect to the "telnet" server that comes with
Microsoft OSes then you are SOL.  If you are trying to connect to a
different telnet server, then please provide the name of the server
and operating system it is running under so we can duplicate your
environment.

from Perldoc Net::Telnet
       Connecting to a Remote MS-Windows Machine

       By default MS-Windows doesn't come with a TELNET server.  However
third
       party TELNET servers are available.  Unfortunately many of these
       servers falsely claim to be a TELNET server.  This is especially true
       of the so-called "Microsoft Telnet Server" that comes installed with
       some newer versions MS-Windows.

       When a TELNET server first accepts a connection, it must use the
ASCII
       control characters carriage-return and line-feed to start a new line
       (see RFC854).  A server like the "Microsoft Telnet Server" that
doesn't
       do this, isn't a TELNET server.  These servers send ANSI terminal
       escape sequences to position to a column on a subsequent line and to
       even position while writing characters that are adjacent to each
other.
       Worse, when sending output these servers resend previously sent
command
       output in a misguided attempt to display an entire terminal screen.

       Connecting Net::Telnet to one of these false TELNET servers makes
your
       job of parsing command output very difficult.  It's better to replace
a
       false TELNET server with a real TELNET server.  The better TELNET
       servers for MS-Windows allow you to avoid the ANSI escapes by turning
       off something some of them call console mode.



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




iFwamT	I+
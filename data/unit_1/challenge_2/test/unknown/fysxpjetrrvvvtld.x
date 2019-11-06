From beginners-return-93080-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 08:18:19 2007
Return-Path: <beginners-return-93080-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l65CIHL9025806
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 08:18:18 -0400
Received: (qmail 3431 invoked by uid 514); 5 Jul 2007 12:18:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3422 invoked from network); 5 Jul 2007 12:18:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 12:18:06 -0000
Received: (qmail 14433 invoked by uid 225); 5 Jul 2007 12:17:59 -0000
Delivered-To: beginners@perl.org
Received: (qmail 14332 invoked by alias); 5 Jul 2007 12:17:52 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of sscott@locationinc.com designates 205.237.109.141 as permitted sender)
Received: from mail.locationinc.com (HELO mail.locationinc.com) (205.237.109.141)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 05 Jul 2007 05:17:48 -0700
Received: from [192.168.200.88] (static-70-16-111-98.ptldme.east.verizon.net [70.16.111.98])
	(authenticated bits=0)
	by mail.locationinc.com (8.12.11.20060308/8.12.11) with ESMTP id l65CHTaU000310
	for <beginners@perl.org>; Thu, 5 Jul 2007 08:17:30 -0400
Message-ID: <468CE15A.5030307@locationinc.com>
Date: Thu, 05 Jul 2007 08:17:30 -0400
From: Shannon Scott <sscott@locationinc.com>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: beginners@perl.org
Subject: SWF::Builder ActionScript classpath
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I have been using SWF::Builder to create swf files from actionscript ( 
.as files ).  It works great until I try to use some actionscript with 
an import statement, then I get this error:
Syntax error. ';' is expected. in 1

I don't think there are any issues with the code because it is part of a 
sample provided.  I think my probelm is that I don't have the classpath 
set right.  I found this line in the sample instructions:
"If you want to use the accompanying ActionScript libraries, you will 
want to add the |/lib/| directory to your Classpath in the Flash 
authoring environment."
How do I add to the Flash Authoring Environment Classpath when I am 
using SWF::Builder to generate the swf files?
I tried using:
$ENV{'CLASSPATH'} = '/path/to/lib';
in the perl script, but it did not help.
Any help is appreciated.
Thank you.
Shannon



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

AW7t10r 3s0pf
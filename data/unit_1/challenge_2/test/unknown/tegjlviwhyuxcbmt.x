From beginners-return-92510-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 08:26:20 2007
Return-Path: <beginners-return-92510-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ICQJL9017386
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 08:26:20 -0400
Received: (qmail 20926 invoked by uid 514); 18 Jun 2007 12:26:14 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20917 invoked from network); 18 Jun 2007 12:26:13 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 18 Jun 2007 12:26:13 -0000
Received: (qmail 1390 invoked by uid 225); 18 Jun 2007 12:26:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 1355 invoked by alias); 18 Jun 2007 12:26:10 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web35712.mail.mud.yahoo.com (HELO web35712.mail.mud.yahoo.com) (66.163.179.166)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 18 Jun 2007 05:26:07 -0700
Received: (qmail 22837 invoked by uid 60001); 18 Jun 2007 12:26:02 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type:Message-ID;
  b=X5a3c02mzIH9eswTqlP5qZf+1E2MFen0FsKMy3Dqh90JMvqyho+VBdcjGtW9MYygJXXbefptRnp8rV7LuRwXfbog1zMT7P5qCEBTFhwxx+u5y22WTOqskoajivHc3KUNbVfyT1yL3pYmSF642kduABy8Zda1Ln5T5LwSMw6Wm9E=;
X-YMail-OSG: alzgTqwVM1kjvFTU4vNOEcV1solKQh3UniBc5rZscYI_W3_Erz3lq4kVvc8TM8HsWA--
Received: from [209.191.106.126] by web35712.mail.mud.yahoo.com via HTTP; Mon, 18 Jun 2007 05:26:02 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Mon, 18 Jun 2007 05:26:02 -0700 (PDT)
From: John Degen <jeehannes@yahoo.com>
Subject: [Perl 5.8.8 on WinXP] Command line usage
To: beginners@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Message-ID: <901883.22178.qm@web35712.mail.mud.yahoo.com>

Hello,

I'm using Perl 5.8.8 from ActiveState on Windows XP. I'm trying to accomplish a search and replace in a number of files in the same directory from the command line (cmd.exe). The problem is that the command perl -i -e "s/old/new/" * fails silently, i.e. no changes take place. My question is: does * indicate all files in the current directory (this did work in the Windows version of sed I tried)? I cannot find this in the docs or using Google. Or am I making another mistake?

Thank you for your time.

John Degen 

-- 
Sane sicut lux seipsam, & tenebras manifestat, sic veritas norma sui, & falsi est. -- Spinoza




 
____________________________________________________________________________________
Get your own web address.  
Have a HUGE year through Yahoo! Small Business.
http://smallbusiness.yahoo.com/domains/?p=BESTDEAL

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

0woemdx
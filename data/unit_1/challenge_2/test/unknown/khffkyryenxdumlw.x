From beginners-return-92110-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 09:43:25 2007
Return-Path: <beginners-return-92110-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53DhOhB016097
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 09:43:24 -0400
Received: (qmail 28539 invoked by uid 514); 3 Jun 2007 13:43:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28524 invoked from network); 3 Jun 2007 13:43:14 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jun 2007 13:43:14 -0000
Received: (qmail 17085 invoked by uid 225); 3 Jun 2007 13:43:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17078 invoked by alias); 3 Jun 2007 13:43:13 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pop-savannah.atl.sa.earthlink.net (HELO pop-savannah.atl.sa.earthlink.net) (207.69.195.69)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 03 Jun 2007 06:42:21 -0700
Received: from dialup-4.154.253.28.dial1.boston1.level3.net ([4.154.253.28] helo=[10.0.1.2])
	by pop-savannah.atl.sa.earthlink.net with esmtp (Exim 3.36 #1)
	id 1HuqLY-0001WZ-00
	for beginners@perl.org; Sun, 03 Jun 2007 09:42:17 -0400
Mime-Version: 1.0 (Apple Message framework v752.2)
Content-Transfer-Encoding: 7bit
Message-Id: <B10E7F7C-1342-4A53-B4AC-66860F9EC452@earthlink.net>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
To: Beginners Perl <beginners@perl.org>
From: Mike Lesser <exceptions@earthlink.net>
Subject: Paths, Spaces, Getopt::Long
Date: Sun, 3 Jun 2007 09:44:40 -0400
X-Mailer: Apple Mail (2.752.2)

Hi all. I have a problem that _must_ have a very simple solution  
(that I can't find).

I use the module Getopt::Long to read arguments, one of which is a  
file path that may have spaces. The path string that is returned from  
Getopt has spaces without escape chars.  The string seems to be fine  
for Perl use, but not so great for other things, such as the Shell  
module, which can't handle the spaces.

I have to assume that paths can be converted easily for use in shells  
and such, without resorting to RegEx. Any ideas?

Mike



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

/fQ o=e/g
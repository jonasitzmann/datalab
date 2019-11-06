From beginners-return-92625-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 08:48:32 2007
Return-Path: <beginners-return-92625-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LCmUL9023914
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 08:48:31 -0400
Received: (qmail 31961 invoked by uid 514); 21 Jun 2007 12:48:25 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31950 invoked from network); 21 Jun 2007 12:48:24 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 12:48:24 -0000
Received: (qmail 4060 invoked by uid 225); 21 Jun 2007 12:48:24 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4053 invoked by alias); 21 Jun 2007 12:48:24 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pearl.ibctech.ca (HELO pearl.ibctech.ca) (208.70.104.210)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 05:48:22 -0700
Received: (qmail 47353 invoked by uid 1002); 21 Jun 2007 12:48:17 -0000
Received: from iaccounts@ibctech.ca by pearl.ibctech.ca by uid 89 with qmail-scanner-1.22 
 (spamassassin: 2.64.  Clear:RC:1(208.70.107.100):. 
 Processed in 6.279097 secs); 21 Jun 2007 12:48:17 -0000
Received: from unknown (HELO ?192.168.1.210?) (steve@ibctech.ca@208.70.107.100)
  by pearl.ibctech.ca with (DHE-RSA-AES256-SHA encrypted) SMTP; 21 Jun 2007 12:48:10 -0000
Message-ID: <467A7390.2010500@ibctech.ca>
Date: Thu, 21 Jun 2007 08:48:16 -0400
From: Steve Bertrand <iaccounts@ibctech.ca>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Luba Pardo <lubapardo@gmail.com>
CC: beginners@perl.org
Subject: Re: read a list of subdirectories
References: <58ff33550706210515o264c9ccdp5a129856cb6789e9@mail.gmail.com>
In-Reply-To: <58ff33550706210515o264c9ccdp5a129856cb6789e9@mail.gmail.com>
X-Enigmail-Version: 0.95.1
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Luba Pardo wrote:
> Dear list,
> I want to parse through some files of a list of directories. Every
> directory
> have the same files, which means that I can make a loop and repeat the
> process for each directory. I managed to write the code to process the
> files
> of a single directory but I do not exaclty how to read a list of
> directories
> and open one by one. I can only print the directories that are in the
> parental directory , but I can't make the script to open the directory and
> read the list of files. I do not what is the function to use to either open
> everydir or read the 'subdirectories'. 

You may find it advantageous to read:

perldoc File::Find

Steve

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

/3
bt
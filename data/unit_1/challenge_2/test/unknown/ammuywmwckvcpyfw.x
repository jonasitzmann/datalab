From beginners-return-92070-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 11:18:29 2007
Return-Path: <beginners-return-92070-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51FIShB011432
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 11:18:28 -0400
Received: (qmail 23899 invoked by uid 514); 1 Jun 2007 15:18:14 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 23890 invoked from network); 1 Jun 2007 15:18:13 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 15:18:13 -0000
Received: (qmail 31842 invoked by uid 225); 1 Jun 2007 15:18:13 -0000
Delivered-To: beginners@perl.org
Received: (qmail 31836 invoked by alias); 1 Jun 2007 15:18:12 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pearl.ibctech.ca (HELO pearl.ibctech.ca) (208.70.104.210)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 08:14:36 -0700
Received: (qmail 21714 invoked by uid 1002); 1 Jun 2007 15:14:31 -0000
Received: from iaccounts@ibctech.ca by pearl.ibctech.ca by uid 89 with qmail-scanner-1.22 
 (spamassassin: 2.64.  Clear:RC:1(208.70.107.100):. 
 Processed in 15.944737 secs); 01 Jun 2007 15:14:31 -0000
Received: from unknown (HELO ?192.168.1.210?) (steve@ibctech.ca@208.70.107.100)
  by pearl.ibctech.ca with (DHE-RSA-AES256-SHA encrypted) SMTP; 1 Jun 2007 15:14:14 -0000
Message-ID: <466037F2.5010406@ibctech.ca>
Date: Fri, 01 Jun 2007 11:14:58 -0400
From: Steve Bertrand <iaccounts@ibctech.ca>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: Ben Edwards <funkytwig@gmail.com>
CC: beginners@perl.org
Subject: Re: pr warn die question
References: <32b873ff0706010748k176fe43cr3cc9ed06551db126@mail.gmail.com>
In-Reply-To: <32b873ff0706010748k176fe43cr3cc9ed06551db126@mail.gmail.com>
X-Enigmail-Version: 0.95.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

You may want to change this line:

>      print LOGFILE "failed to connect to $remote_host\n"

to the following:

print LOGFILE "failed to connect to $remote_host: $@\n"

...and it will print the reason why it could not connect as well.

Steve

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

>EI9pfDiRL
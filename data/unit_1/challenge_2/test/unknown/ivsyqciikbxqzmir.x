From beginners-return-92623-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 05:31:41 2007
Return-Path: <beginners-return-92623-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5L9VYL9022323
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 05:31:37 -0400
Received: (qmail 31756 invoked by uid 514); 21 Jun 2007 09:31:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31745 invoked from network); 21 Jun 2007 09:31:27 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 09:31:27 -0000
Received: (qmail 24639 invoked by uid 225); 21 Jun 2007 09:31:26 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24609 invoked by alias); 21 Jun 2007 09:31:22 -0000
X-Spam-Status: No, hits=2.4 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,RCVD_IN_BH_CNKR,RCVD_IN_NERD_CN,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-spurfowl.atl.sa.earthlink.net (HELO elasmtp-spurfowl.atl.sa.earthlink.net) (209.86.89.66)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 02:31:18 -0700
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk20050327; d=earthlink.net;
  b=IiK52XgM5CfwNJrgP+Kos3y3R0N4kpv/SPB9xZNbgF1IGY+zDtROEafu8wQM2oMZ;
  h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-ELNK-Trace:X-Originating-IP;
Received: from [218.19.160.9] (helo=[192.168.1.225])
	by elasmtp-spurfowl.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I1J09-0005UV-2l; Thu, 21 Jun 2007 05:30:53 -0400
Message-ID: <467A453D.7010106@earthlink.net>
Date: Thu, 21 Jun 2007 17:30:37 +0800
From: Jeff Pang <pangj@earthlink.net>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: "Sayed, Irfan (Irfan)" <isayed@avaya.com>
CC: beginners@perl.org
Subject: Re: change directory help in perl
References: <3D84CD6F82C0BF478B872930B44A99D10E55CA@301081ANEX1.global.avaya.com>
In-Reply-To: <3D84CD6F82C0BF478B872930B44A99D10E55CA@301081ANEX1.global.avaya.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ELNK-Trace: 7070c57df59c6c2974bf435c0eb9d478eee15ddb228a014ad6d8f73b731568944ea701ec0c97dc1a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 218.19.160.9

Sayed, Irfan (Irfan) 写道:
> Hi ,
>  
> I have written following script. Problem with the script is that it is
> not changing the directory as per the foreach loop and because of that
> cleartool command is failing. can somebody please help.
>  
> Here is the script.
>  
> #!/usr/bin/perl -w
> @arr = `cleartool lsvob -s`;
> foreach(@arr)
> {
>   `cd $_`;

Replace `cd $path` to chdir($path).
`..` start a shell which was not the environment of the left perl codes 
run in.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

UuNYtD2Jd
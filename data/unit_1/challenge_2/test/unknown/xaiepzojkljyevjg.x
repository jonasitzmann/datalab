From beginners-return-92875-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 23:23:28 2007
Return-Path: <beginners-return-92875-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5T3NRL9019136
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 23:23:28 -0400
Received: (qmail 18086 invoked by uid 514); 29 Jun 2007 03:23:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 18070 invoked from network); 29 Jun 2007 03:23:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 03:23:09 -0000
Received: (qmail 2352 invoked by uid 225); 29 Jun 2007 03:23:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2337 invoked by alias); 29 Jun 2007 03:23:08 -0000
X-Spam-Status: No, hits=0.4 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from mailx.servervault.com (HELO mailx.servervault.com) (216.12.128.138)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 20:23:05 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mailx.servervault.com with Microsoft SMTPSVC(6.0.3790.1830);
	 Thu, 28 Jun 2007 23:22:59 -0400
Message-ID: <46847B13.8050805@yahoo.com>
Date: Thu, 28 Jun 2007 23:22:59 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Paul Johnson <paul@pjcj.net>
CC: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>,
   Beginners List <beginners@perl.org>
Subject: Re: using a homemade perl module
References: <20070614112553.5b51a309@nietzsche> <4671F7CE.4030807@yahoo.com> <1181916884.616351.299860@g4g2000hsf.googlegroups.com> <46836A86.9090904@yahoo.com> <4683A26C.4010408@earthlink.net> <20070628124639.GQ20560@pjcj.net>
In-Reply-To: <20070628124639.GQ20560@pjcj.net>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 29 Jun 2007 03:22:59.0710 (UTC) FILETIME=[CB4D81E0:01C7B9FC]

Paul Johnson wrote:
> On Thu, Jun 28, 2007 at 06:58:36AM -0500, Mumia W. wrote:
> 
>> On 06/28/2007 03:00 AM, Mathew Snyder wrote:
>>> our @ISA                 = qw(Exporter);
>>> our @EXPORT      = qw(startDate endDate searchStart searchEnd);
>>> our $VERSION     = '1';
>> Those lines need to be within a BEGIN block. See perlmod:
> 
> Are you sure?
> 
> The package name should be Reports::Dates, not just Dates.
> 

I'm getting a strange bit of behaviour.  I have everything set up right and my
dates are getting made up properly however, one sub which creates the searchDate
array isn't being called.  I have to enter the full module path
(Reports::Dates::searchDate) for it to work while all of the other dates are
called without problem using just the sub name.  Any thoughts on why this might be?

Mathew
Keep up with me and what I'm up to: http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

kb x1o31<
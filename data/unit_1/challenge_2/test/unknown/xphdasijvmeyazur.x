From beginners-return-92499-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 04:21:41 2007
Return-Path: <beginners-return-92499-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5H8LeL9024550
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 04:21:40 -0400
Received: (qmail 6258 invoked by uid 514); 17 Jun 2007 08:21:34 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6249 invoked from network); 17 Jun 2007 08:21:34 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 17 Jun 2007 08:21:34 -0000
Received: (qmail 31583 invoked by uid 225); 17 Jun 2007 08:21:34 -0000
Delivered-To: beginners@perl.org
Received: (qmail 31571 invoked by alias); 17 Jun 2007 08:21:33 -0000
X-Spam-Status: No, hits=3.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from office.servervault.com (HELO mail1.dulles.sv.int) (216.12.128.136)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 17 Jun 2007 01:21:31 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mail1.dulles.sv.int with Microsoft SMTPSVC(6.0.3790.1830);
	 Sun, 17 Jun 2007 04:21:25 -0400
Message-ID: <4674EF06.9060001@yahoo.com>
Date: Sun, 17 Jun 2007 04:21:26 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
CC: Beginners List <beginners@perl.org>
Subject: Re: value of variable switches from ' ' to 'value'
References: <4674C85F.3010405@yahoo.com> <4674E7F0.3080907@earthlink.net>
In-Reply-To: <4674E7F0.3080907@earthlink.net>
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 17 Jun 2007 08:21:25.0320 (UTC) FILETIME=[7EEBC480:01C7B0B8]

Mumia W. wrote:
> On 06/17/2007 12:36 AM, Mathew Snyder wrote:
>> [...]
>> In the debugger I've set the 'w' command to watch the variable
>> containing the
>> day being looked for ($day).  I would have thought $day stays the same
>> throught
>> an iteration of the while loop but the debugger keeps stopping to tell
>> me it
>> switched from '2007-06-15' (for instance) to ''.  I then continue and
>> it tells
>> me it switched back from '' to '2007-06-15'.  Is it supposed to do that?
>> Shouldn't the $day variable remain constant?
>> [...]
> 
> The variable $day on line 50 is restricted to the scope of the for loop.
> I suspect that $day becomes empty or undefined when execution goes into
> a subroutine who's scope is outside of the for loop.
> 
> 
> 
> 

That actually makes sense.  It hadn't occurred to me that it would be
reinitialized during each iteration.

Thanks
Mathew
--
Keep up with me and what I'm up to: http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

�,a02
 u/-pli 
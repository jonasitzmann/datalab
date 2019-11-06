From beginners-return-92539-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 08:55:51 2007
Return-Path: <beginners-return-92539-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JCtoL9029564
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:55:50 -0400
Received: (qmail 23650 invoked by uid 514); 19 Jun 2007 12:55:44 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 23641 invoked from network); 19 Jun 2007 12:55:44 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 19 Jun 2007 12:55:44 -0000
Received: (qmail 19979 invoked by uid 225); 19 Jun 2007 12:55:42 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19959 invoked by alias); 19 Jun 2007 12:55:40 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from smtp.fast4.net (HELO smtp.njpservices.co.uk) (84.45.106.4)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 19 Jun 2007 05:55:36 -0700
Received: from [85.92.185.116] (85-92-185-116.eurisp.net [85.92.185.116] (may be forged))
	by smtp.njpservices.co.uk (8.10.2/8.10.2) with ESMTP id l5JCtOF31440;
	Tue, 19 Jun 2007 13:55:24 +0100
Message-ID: <4677D23A.3040204@350.com>
Date: Tue, 19 Jun 2007 13:55:22 +0100
From: Rob Dixon <rob.dixon@350.com>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: beginners@perl.org
CC: pauld <pdcooper@blueyonder.co.uk>
Subject: Re: perl sort query
References: <1182177073.163274.231200@x35g2000prf.googlegroups.com>   <4677017F.5010701@telus.net> <1182249120.616483.7950@q69g2000hsb.googlegroups.com>
In-Reply-To: <1182249120.616483.7950@q69g2000hsb.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

pauld wrote:
>
> John W. Krahn wrote:
>> 
>> It sorts fine here:
>> 
>> $ perl -le'
>> print for @x = qw/200610011733 200610012057 200610011029 200610010928 200610011220/, "";
>> 
>> print for sort @x;
>> '
>> 200610011733
>> 200610012057
>> 200610011029
>> 200610010928
>> 200610011220
>> 
>> 200610010928
>> 200610011029
>> 200610011220
>> 200610011733
>> 200610012057
> 
> the time is the last 4 digits (hhmm)
> so the first is 17:33
> then 20:57
> then 10:29
> then 09:28
> 
> i want them chronologically
> ie
> 09:28
> 10:29
> 17:33
> 20:57

Your post misquoted John. This is his full response.

His program shows first the unsorted data and then the same information after
sorting. As he says, it seems to work fine.

Rob





-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

imdetw/gAbc7ubV
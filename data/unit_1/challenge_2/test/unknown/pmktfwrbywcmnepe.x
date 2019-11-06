From beginners-return-92674-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:56:10 2007
Return-Path: <beginners-return-92674-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMu9L9010294
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:56:10 -0400
Received: (qmail 28495 invoked by uid 514); 22 Jun 2007 17:56:51 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28486 invoked from network); 22 Jun 2007 17:56:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 17:56:51 -0000
Received: (qmail 24713 invoked by uid 225); 22 Jun 2007 17:56:50 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24696 invoked by alias); 22 Jun 2007 17:56:49 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from mta1.siol.net (HELO mta1.siol.net) (193.189.160.86)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 10:56:45 -0700
Received: from mailhub-5.siol.net ([10.10.10.105]) by mta1.siol.net
          with ESMTP
          id <20070622175639.RVUQ21179.mta1.siol.net@mailhub-5.siol.net>;
          Fri, 22 Jun 2007 19:56:39 +0200
Received: from [192.168.1.100] (really [193.95.242.186])
          by mailhub-5.siol.net with ESMTP
          id <20070622175646.MAVA16965.mailhub-5.siol.net@[192.168.1.100]>;
          Fri, 22 Jun 2007 19:56:46 +0200
Message-ID: <467C0D54.3000108@siol.net>
Date: Fri, 22 Jun 2007 19:56:36 +0200
From: Andrej Kastrin <andrej.kastrin@siol.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070509)
MIME-Version: 1.0
To: Paul Lalli <mritty@gmail.com>
CC: beginners@perl.org
Subject: Re: Count co-occurrences
References: <467BFD51.3000405@siol.net> <1182534344.792664.34680@n60g2000hse.googlegroups.com>
In-Reply-To: <1182534344.792664.34680@n60g2000hse.googlegroups.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Paul Lalli wrote:
> On Jun 22, 12:48 pm, andrej.kast...@siol.net (Andrej Kastrin) wrote:
>
>   
>> I wrote a simple sql querry to count co-occurrences between words but it
>> performs very very slow on large datasets. So, it's time to do it with
>> Perl. I need just a short tip to start out: which structure to use to
>> count all possible occurrences between letters (e.g. A, B and C) under
>> the particular document number. My dataset looks like following:
>>
>> 1 A
>> 1 B
>> 1 C
>> 1 B
>> 2 A
>> 2 A
>> 2 B
>> 2 C
>> etc. till doc. number 100.000
>>
>> The result file should than be similar to:
>> A B 4   ### 2 co-occurrences under doc. number 1 + 2 co-occurrences
>> under doc. number 2
>> A C 3   ### 1 co-occurrence under doc. number 1 + 2 co-occurrences under
>> doc. number 2
>> B C 3   ### 2 co-occurrences under doc. number 1 + 1 co-occurrence under
>> doc. number 2
>>     
>
> Maybe I'm just a little slow on the uptake, but I don't at all
> understand the correlation between your sample input and sample
> output.  Where did "A B 4" come from, and what does it mean for "2 co-
> ocurrences" under doc number 1?  What is a co-occurrence? I see one
> instance of "1 A", and two instances of "1 B".  How does that
> translate to "2 co-ocurrences" of "A B"?
>
> Can you explain your desired goal a little better?
>
> Paul Lalli
>
>
>   
1. under document number 1 letter A co-occurr two times with letter B 
(there are two A-B pairs: two As and one B);
2. under document number 2 letter A co-occur two times with letter B 
(the is one A and two Bs)
3. then you sum up and the result is 4 A-B pairs

Andrej

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

 2 NYf4zd
From beginners-return-92442-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 20:12:22 2007
Return-Path: <beginners-return-92442-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F0CLL9027865
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 20:12:22 -0400
Received: (qmail 2559 invoked by uid 514); 15 Jun 2007 00:12:16 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2550 invoked from network); 15 Jun 2007 00:12:15 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 00:12:15 -0000
Received: (qmail 12176 invoked by uid 225); 15 Jun 2007 00:12:15 -0000
Delivered-To: beginners@perl.org
Received: (qmail 12169 invoked by alias); 15 Jun 2007 00:12:14 -0000
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from smtp106.plus.mail.re2.yahoo.com (HELO smtp106.plus.mail.re2.yahoo.com) (206.190.53.31)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Thu, 14 Jun 2007 17:12:11 -0700
Received: (qmail 38684 invoked from network); 14 Jun 2007 12:31:50 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=Received:X-YMail-OSG:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
  b=QHEzbAO9ybCIZIvGqZnFZVbdi4Ayg+8LOi5naUbZptZLmjjse0+jTQpi2xn2vflJ4AihX6gm8Ti0DAv3hrEiXqeyHZHIAlU547AJ5ulENF4AOWM0axmQJL4RxD2DZTZ0BfJ5MP4sAOCQBUJSazQMTS63bLQATge9owYrOMQ+3EE=  ;
Received: from unknown (HELO ?127.0.0.1?) (theillien@76.21.182.124 with plain)
  by smtp106.plus.mail.re2.yahoo.com with SMTP; 14 Jun 2007 12:31:50 -0000
X-YMail-OSG: YZRcICsVM1kMPlpwTP3pM3t0PJsRgPNJj1fXdUHvn3J1J3OshUomjqPfGWg842PNUiEdBsGcYEROvzvrioNUgIYeBqXuDPhNwBHXrHB9e2H2RzOjs.0-
Message-ID: <467134B9.1020702@yahoo.com>
Date: Thu, 14 Jun 2007 08:29:45 -0400
From: Mathew <theillien@yahoo.com>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: Chas Owens <chas.owens@gmail.com>
CC: Perl Beginners <beginners@perl.org>
Subject: Re: Hash Key is a Null Value
References: <467118A4.4080809@yahoo.com> <58ce48dc0706140522t2b30c916pcc0fe5d83c3506e4@mail.gmail.com>
In-Reply-To: <58ce48dc0706140522t2b30c916pcc0fe5d83c3506e4@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The purpose of getting the data in the first place is to allow my boss
to see that people are still not doing things they are supposed to.  He
can then send out reminders so we can establish better habits.  My plan
is to replace the null value with a description making it obvious that
the value had not been set instead of just leaving a big ugly blank spot.

Keep up with my goings on at http://theillien.blogspot.com

Chas Owens wrote:
> On 6/14/07, Mathew Snyder <theillien@yahoo.com> wrote:
>> I'm building a hash using values from a database backend to an
>> application we
>> use in house.  The application has a field which contains a customer
>> name.  This
>> values is supposed to be set by the person handling the work but
>> sometimes
>> doesn't get done.  This leaves a NULL value in the database which, in
>> turn,
>> leaves me with a null key in my hash.
>>
>> I've tried resetting it by assigning the value to another key so I can
>> delete
>> the element but so far nothing has worked.  I've tried to access it with
>> $hash{}, $hash{""}, and $hash{''}.  None of these will allow me to
>> access the data.
>>
>> I could probably reassign it through more complicated means but that
>> would
>> require creating objects and accessing methods I'm not familiar with. 
>> If anyone
>> knows an easier way to access a null key I'd appreciate hearing it.
>>
>> Thanks
>> Mathew
>> -- 
>> Keep up with me and what I'm up to: http://theillien.blogspot.com
> 
> Jenda's solution should work, but if you are just going to throw it
> away (instead of logging it as a problem) then why fetch it from the
> database in the first place?  Add "customer_name is not null" to the
> where clause.  Fetching data you are not going to use is unkind to the
> database, the network, and your program.
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




shsapi
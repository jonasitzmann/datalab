From beginners-return-92927-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 11:11:04 2007
Return-Path: <beginners-return-92927-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61FB1L9002116
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 11:11:02 -0400
Received: (qmail 26542 invoked by uid 514); 1 Jul 2007 15:10:52 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26533 invoked from network); 1 Jul 2007 15:10:52 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jul 2007 15:10:52 -0000
Received: (qmail 11254 invoked by uid 225); 1 Jul 2007 15:10:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11248 invoked by alias); 1 Jul 2007 15:10:50 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from smtp106.plus.mail.re1.yahoo.com (HELO smtp106.plus.mail.re1.yahoo.com) (69.147.102.69)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Sun, 01 Jul 2007 08:10:47 -0700
Received: (qmail 44818 invoked from network); 1 Jul 2007 15:10:43 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=Received:X-YMail-OSG:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
  b=LBflJpn3h0hxaYKlBPj/4ZOPfMVg5w9iKjaMQHbQT712kUprAn9UdnwkHxPCJIsAAFhu9LUNp/jvUiw+q1PxxuBa8oJw5yx82T18P25iLlGiXl4agvmtLporoWvyCJT7NJs2djC44vtINnf8RuAopk0BFyfF27aAKfNTnNqK2Ac=  ;
Received: from unknown (HELO ?127.0.0.1?) (theillien@76.21.182.124 with plain)
  by smtp106.plus.mail.re1.yahoo.com with SMTP; 1 Jul 2007 15:10:42 -0000
X-YMail-OSG: bHxsOAoVM1ng.WNIeyNE0Syr_04LmzjKRBwHnNW68PNxri5V1B8Vm.t9_NPqdVj3HNnsMneIIY56v4WKgaL2c0Ae
Message-ID: <4687C332.1040005@yahoo.com>
Date: Sun, 01 Jul 2007 11:07:30 -0400
From: Mathew <theillien@yahoo.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Ken Foskey <foskey@optushome.com.au>
CC: beginners@perl.org
Subject: Re: Problem with runaway format
References: <4687767F.9070206@yahoo.com> <1183298062.29788.4.camel@localhost.localdomain>
In-Reply-To: <1183298062.29788.4.camel@localhost.localdomain>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

:D Funny you should say that...

Actually, all the data is being pulled in from a database already.

Keep up with my goings on at http://theillien.blogspot.com

Ken Foskey wrote:
> On Sun, 2007-07-01 at 05:40 -0400, Mathew Snyder wrote:
>> I have a script which places data 4 levels deep in a HoHoHoH.  It grabs tickets
>> in our ticket system using the systems API and places attributes about each
>> piece of activity into the hash. The has is called %tickets.  It looks like
>>
>> $tickets{action_creator}{ticket_customer}{ticket_number}{ticket_subject}.
> 
> This just looks wrong...  Looks like you are trying to create a sorted
> group of tickets from the original data.
> 
> I personally would be using a Database,  loading it in if necessary and
> then doing a simple select:
> 
> select action_creator, ticket_customer, ticket_number, ticket_subject
> from my_table
> order by action_creator, ticket_customer, ticket_number, ticket_subject
> 
> In fact the whole thing looks like a database application waiting to
> happen.
> 
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

uTh:2swdoa0qcil
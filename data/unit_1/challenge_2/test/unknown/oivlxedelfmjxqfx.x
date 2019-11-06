From perl6-all-return-82086-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 06:14:03 2007
Return-Path: <perl6-all-return-82086-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JAE2L9028191
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 06:14:02 -0400
Received: (qmail 6816 invoked by uid 514); 19 Jun 2007 10:13:59 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6807 invoked from network); 19 Jun 2007 10:13:58 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of andy@hexten.net designates 63.247.80.26 as permitted sender)
In-Reply-To: <493fbf7b54258e09b04f7dbcac4b843c@gmail.com>
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com> <493fbf7b54258e09b04f7dbcac4b843c@gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.2)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <8C4705AC-5999-4666-9880-55B7355FFCC3@hexten.net>
Cc: Andy Lester <andy@petdance.com>,
   Perl 6 Internals <perl6-internals@perl.org>
Content-Transfer-Encoding: 7bit
From: Andy Armstrong <andy@hexten.net>
Subject: Re: memcpy
Date: Tue, 19 Jun 2007 11:13:04 +0100
To: Joshua Isom <jrisom@gmail.com>
X-Mailer: Apple Mail (2.752.2)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On 19 Jun 2007, at 08:48, Joshua Isom wrote:
> On Jun 18, 2007, at 4:48 PM, Andy Lester wrote:
>
>> Is there a reason we use
>>
>>   memcpy( dest, src, sizeof(FOO) );
>>
>> instead of
>>
>>   *dest = *src;
>>
>> The latter should be the exact same code, but be much less likely  
>> to be screwed up.
>
> No, they're extremely different.  In the first, the data of FOO is  
> copied to dest, so dest can be modified without changing src.  In  
> the second, src and dest point to the same data.  If you modify  
> one, all are modified.

Nonsense :)

>   If you want to clone something, or just move it to a new  
> location, you can't just set the pointer.  If I'm missing  
> something, well maybe someone who knows more can provide more advice.

You're thinking of pointer assignment. Andy is assigning the pointed- 
to structures. Consider with ints instead of structs

int *p, *q;

memcpy(p, q, sizeof(int)); /* copy int at q into int at p */
*p = *q;                   /* the same */
p = q;                     /* p and q point to same memory */

You're thinking of the third case - Andy is doing the second.

-- 
Andy Armstrong, hexten.net

            

 = g/u
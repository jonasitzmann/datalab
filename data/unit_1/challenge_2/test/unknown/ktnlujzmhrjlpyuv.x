From perl6-all-return-82176-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 10:21:38 2007
Return-Path: <perl6-all-return-82176-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LELbL9025017
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 10:21:37 -0400
Received: (qmail 4343 invoked by uid 514); 21 Jun 2007 14:21:34 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 4338 invoked from network); 21 Jun 2007 14:21:34 -0000
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
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
In-Reply-To: <467A1D2A.5030305@perl.org>
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com> <200706192219.34450.lt@toetsch.at> <46795AD8.20204@perl.org> <E1B1BD37-95E8-48AD-BFDD-83E981A94F7A@petdance.com> <467A1D2A.5030305@perl.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <DF8F2F48-F616-4330-96B4-9EA4C63A7910@petdance.com>
Cc: perl6-internals@perl.org
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: memcpy
Date: Thu, 21 Jun 2007 09:20:46 -0500
To: Allison Randal <allison@perl.org>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME


On Jun 21, 2007, at 1:39 AM, Allison Randal wrote:

> Andy Lester wrote:
>> I guess I don't see the need to document a standard C behavior  
>> with a macro.
>
> If you had read all the way through the message, you would see that  
> the biggest benefit is the ability to hang debugging hooks off the  
> macro.
> We have a number of these kinds of debugging hooks throughout  
> Parrot (src/gc/memory.c is a good example).

No, I saw that, too.  My point was just about documentation.

If we're set on using a macro for doing struct copies, then it needs  
to handle copying multiple structs, since there a bunch of places  
we're doing memcpy()s with math for multiple structs.  I'll work on  
that today.  Getting rid of the math may be the best reason to use a  
macro yet.

Andy

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




        


neKPL
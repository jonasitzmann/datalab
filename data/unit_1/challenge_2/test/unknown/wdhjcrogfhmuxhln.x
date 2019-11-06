From perl6-all-return-82146-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 14:44:28 2007
Return-Path: <perl6-all-return-82146-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KIiSL9013642
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 14:44:28 -0400
Received: (qmail 28501 invoked by uid 514); 20 Jun 2007 18:44:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28496 invoked from network); 20 Jun 2007 18:44:24 -0000
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
In-Reply-To: <f60fe000706201105o1197b7c2rb00435fea060c31d@mail.gmail.com>
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com> <200706192219.34450.lt@toetsch.at> <46795AD8.20204@perl.org> <E1B1BD37-95E8-48AD-BFDD-83E981A94F7A@petdance.com> <f60fe000706201105o1197b7c2rb00435fea060c31d@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <CDC06E71-C914-4234-B255-2326BB83AD14@petdance.com>
Cc: "Allison Randal" <allison@perl.org>, "Leopold Toetsch" <lt@toetsch.at>,
   perl6-internals@perl.org
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: memcpy
Date: Wed, 20 Jun 2007 13:23:34 -0500
To: "Mark J. Reed" <markjreed@mail.com>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME


On Jun 20, 2007, at 1:05 PM, Mark J. Reed wrote:

> Incrementing a var is much less likely to have unpredictable effects
> due to modifying the wrong memory.  Sure, x might be a pointer, and
> things might gang agley there, but pointers getting set to the wrong
> type of pointee is a pretty common problem, and one that I'm happy to
> have some runtime support in locating.

My point is that

   *d = *s;

is no more a weird cryptic construct than

   n++;

or

   while (*s)
     *d++ = *s++;

for that matter.

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




                  

rQO>8c.iFcaIy2
From perl6-all-return-82027-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 02:42:12 2007
Return-Path: <perl6-all-return-82027-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5H6gBL9023497
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 02:42:11 -0400
Received: (qmail 20252 invoked by uid 514); 17 Jun 2007 06:42:08 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20247 invoked from network); 17 Jun 2007 06:42:08 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Transfer-Encoding: 7bit
Message-Id: <6CE946D9-1FE7-4065-B3E3-B8B51C043305@petdance.com>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
To: perl6-internals List <perl6-internals@perl.org>
From: Andy Lester <andy@petdance.com>
Subject: Parrot_get_runtime_prefix has a bad interface
Date: Sun, 17 Jun 2007 01:41:30 -0500
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME

I cringe at functions where the behavior is dependent on parms passed  
in.  In the case of Parrot_get_runtime_prefix, if you call it as  
Parrot_get_runtime_prefix(&str) then str is populated, or if you call  
Parrot_get_runtime_prefix(NULL) then you get a malloced string.

It should be split into Parrot_get_runtime_prefix_string and  
Parrot_get_runtime_prefix_cstring.

Anything I'm missing?  Dissent?

xoxo,
Andy

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




                 

g0a=b>&HTt
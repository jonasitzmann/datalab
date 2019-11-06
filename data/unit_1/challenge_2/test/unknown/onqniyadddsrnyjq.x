From perl6-all-return-82057-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 17:49:32 2007
Return-Path: <perl6-all-return-82057-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ILnVL9022238
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 17:49:31 -0400
Received: (qmail 10211 invoked by uid 514); 18 Jun 2007 21:49:28 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 10206 invoked from network); 18 Jun 2007 21:49:28 -0000
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
Message-Id: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
To: Perl 6 Internals <perl6-internals@perl.org>
From: Andy Lester <andy@petdance.com>
Subject: memcpy
Date: Mon, 18 Jun 2007 16:48:42 -0500
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME

Is there a reason we use

   memcpy( dest, src, sizeof(FOO) );

instead of

   *dest = *src;

The latter should be the exact same code, but be much less likely to  
be screwed up.

At the very least we should be using:

   memcpy( dest, src, sizeof(*dest) );

Of course, I'm only talking about when we're passing around structs.   
Clearly this won't work everywhere.

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




      

0tyLaao
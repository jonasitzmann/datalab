From perl6-all-return-82400-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 16:23:23 2007
Return-Path: <perl6-all-return-82400-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RKNML9032026
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 16:23:22 -0400
Received: (qmail 18990 invoked by uid 514); 27 Jun 2007 20:23:18 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 18985 invoked from network); 27 Jun 2007 20:23:18 -0000
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
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Transfer-Encoding: 7bit
Message-Id: <82F50EE9-728B-4613-B20E-52947B0DDC4E@petdance.com>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
To: Perl 6 Internals <perl6-internals@perl.org>
From: Andy Lester <andy@petdance.com>
Subject: t/codingstd/perlcritic.t needs to be optional
Date: Wed, 27 Jun 2007 15:22:22 -0500
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME

The Perl::Critic testing in t/codingstd/perlcritic.t needs to be  
optional.  The existence of Perl::Critic on a machine doesn't mean  
that it's appropriate to run Perl::Critic on the Parrot code.

xoa

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




            

ap s>M
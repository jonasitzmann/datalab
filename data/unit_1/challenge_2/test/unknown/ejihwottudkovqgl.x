From perl6-all-return-81909-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 10:16:00 2007
Return-Path: <perl6-all-return-81909-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CEFwL9027212
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 10:15:59 -0400
Received: (qmail 27340 invoked by uid 514); 12 Jun 2007 14:15:56 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 27335 invoked from network); 12 Jun 2007 14:15:56 -0000
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
Message-Id: <9F00A4F2-6AF4-429C-97D4-53B543738069@petdance.com>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
To: perl6-internals List <perl6-internals@perl.org>
From: Andy Lester <andy@petdance.com>
Subject: Removing #pragma
Date: Tue, 12 Jun 2007 09:15:09 -0500
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME


I'm very uncomfortable with removing #pragma once from our header  
files.  It is perfectly valid C89 code, and I think bowing to a  
broken compiler is unhealthy precedent.

--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




               

l1U3a=_l
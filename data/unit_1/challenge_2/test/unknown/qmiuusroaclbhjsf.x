From perl6-all-return-81765-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 08:40:40 2007
Return-Path: <perl6-all-return-81765-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53CedhB015603
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 08:40:39 -0400
Received: (qmail 10973 invoked by uid 514); 3 Jun 2007 12:40:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 10968 invoked from network); 3 Jun 2007 12:40:32 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of jkeen@verizon.net)
Message-ID: <20070603123902.10329.qmail@lists.develooper.com>
To: perl6-internals@perl.org
Date: Sun, 03 Jun 2007 08:39:01 -0400
From: James E Keenan <jkeen@verizon.net>
User-Agent: Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; en-US; rv:1.8.1.2) Gecko/20070221 SeaMonkey/1.1.1
MIME-Version: 1.0
Subject: Re: Still More Startup Optimizations
References: <200706030016.34983.chromatic@wgz.org>
In-Reply-To: <200706030016.34983.chromatic@wgz.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Posted-By: 71.247.152.215
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

chromatic wrote:
> If you're using a modern GNU ld, remove the shared library and add a few more 
> flags to LINK_DYNAMIC in Makefile.  Here's mine:
> 
> 	LINK_DYNAMIC  = -Wl,-E,-O1,-zdynsort,-hashvals,--hash-style=gnu,-zcombreloc
> 

Do you have to edit the Makefile for this, or can you set it with 
command-line arguments to Configure.pl?

      

 riwad
From perl6-all-return-81857-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun  7 01:11:15 2007
Return-Path: <perl6-all-return-81857-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l575BEhB030252
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 01:11:14 -0400
Received: (qmail 20361 invoked by uid 514); 7 Jun 2007 05:11:07 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20356 invoked from network); 7 Jun 2007 05:11:07 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
X-Virus-Scanned: by both ClamAV and Kaspersky at http://aliencamel.com/
Message-ID: <4667928C.4010002@perl.org>
Date: Wed, 06 Jun 2007 22:07:24 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.10 (Macintosh/20070221)
MIME-Version: 1.0
To: Andy Lester <andy@petdance.com>
CC: perl6-internals List <perl6-internals@perl.org>
Subject: Re: About the headerizer
References: <6ABAC79D-BD11-4F95-B19D-1A925AB605E1@petdance.com>
In-Reply-To: <6ABAC79D-BD11-4F95-B19D-1A925AB605E1@petdance.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Andy Lester wrote:
> The long-term plan for the headerizer is that it will take all the 
> prototypes for all the functions and populate all the .h files 
> automatically.  No need to worry about differences between header and 
> source, because the header comes from it.  It'll also auto-generate 
> attributes for each of the functions that work with GCC.

Thanks Andy. Please make sure this is documented in docs/dev.

Allison

           

@KxN
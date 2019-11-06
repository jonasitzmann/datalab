From beginners-return-92893-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 08:51:13 2007
Return-Path: <beginners-return-92893-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TCpCL9025821
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:51:13 -0400
Received: (qmail 15130 invoked by uid 514); 29 Jun 2007 12:50:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 22338 invoked from network); 29 Jun 2007 05:55:44 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of JShrager@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 29 05:55:29 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: "JShrager@gmail.com" <JShrager@gmail.com>
Subject: Spreadsheet IO::Scalar v. PerlIO::Scalar confusion
Date: Thu, 28 Jun 2007 22:55:05 -0700
Organization: http://groups.google.com
Lines: 22
Message-ID: <1183096505.921483.171890@x35g2000prf.googlegroups.com>
NNTP-Posting-Host: 76.197.57.15
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183096506 30739 127.0.0.1 (29 Jun 2007 05:55:06 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 29 Jun 2007 05:55:06 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: x35g2000prf.googlegroups.com; posting-host=76.197.57.15;
   posting-account=jFs24Q0AAADKiZzolIHFohrRXx82TEmZ
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

I'm trying to install Spreadsheet-ParseExcel-0.32 from CPAN. It claims
to require IO::Scalar, but when I make it, it says (reasonably):

  $Config{useperlio} is defined, removing requirement of IO::Scalar

But then immediately:

  Warning: prerequisite IO::Scalar 0 not found.
  Writing Makefile for Spreadsheet::ParseExcel

And when I make test I get:

  t/basic....ok
        4/8 skipped: various reasons
  t/parse....ok 1/37Can't locate IO/Scalar.pm in @INC (@INC
contains: ...)

I looked for IO::Scalar, but it appears to be superseded (or
something) by PerlIO::Scalar.

Confusion reigns!


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

i5tZGl7;tw
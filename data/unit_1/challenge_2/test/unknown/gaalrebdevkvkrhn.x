From perl6-all-return-81841-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 22:36:27 2007
Return-Path: <perl6-all-return-81841-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l562aPhB016463
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 22:36:26 -0400
Received: (qmail 8971 invoked by uid 514); 6 Jun 2007 02:36:19 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 8966 invoked from network); 6 Jun 2007 02:36:18 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org, parrotbug-followup@parrotcode.org
Subject: Re: [perl #43105] [PATCH] function mmd.c::mmd_expand_y: newly allocated memory unitialized
Date: Tue, 5 Jun 2007 19:13:08 -0700
User-Agent: KMail/1.9.6
References: <RT-Ticket-43105@perl.org> <rt-3.6.HEAD-1668-1180904200-1441.43105-15-0@perl.org> <rt-3.6.HEAD-1668-1180980600-1487.43105-15-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-1668-1180980600-1487.43105-15-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706051913.08650.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,SPF_PASS

On Monday 04 June 2007 11:10:01 Bernhard Schmalhofer via RT wrote:

> This answers the question. So I propose to apply Mehmet's patch and
> add to pdd07 something like:

Thanks, both Mehmet's and your patches applied in r18832.

-- c

         

Er:
t2N
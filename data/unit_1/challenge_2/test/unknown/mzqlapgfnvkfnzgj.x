From perl6-all-return-82390-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 15:22:02 2007
Return-Path: <perl6-all-return-82390-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5QJLvL9016645
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 15:21:59 -0400
Received: (qmail 22761 invoked by uid 514); 26 Jun 2007 19:21:53 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 22756 invoked from network); 26 Jun 2007 19:21:53 -0000
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
To: perl6-internals@perl.org
Subject: Re: [perl #43384] [TODO] create 'make uninstall' target
Date: Tue, 26 Jun 2007 11:53:07 -0700
User-Agent: KMail/1.9.6
Cc: Will Coleda (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-43384@perl.org> <20070626184321.28929.qmail@spout.spiders.net> <rt-3.6.HEAD-1276-1182883550-775.43384-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-1276-1182883550-775.43384-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706261153.08019.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Tuesday 26 June 2007 11:45:50 Will Coleda wrote:

> # New Ticket Created by  Will Coleda
> # Please include the string:  [perl #43384]
> # in the subject line of all future correspondence about this issue.
> # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43384 >

Where *doesn't* make install work?  I thought I reordered the linker library 
lookup paths so that a fresh compile in development wouldn't use the 
installed Parrot.

-- c

 

lieAb
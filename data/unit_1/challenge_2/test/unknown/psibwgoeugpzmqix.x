From perl6-all-return-82456-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 14:51:53 2007
Return-Path: <perl6-all-return-82456-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TIprL9029649
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 14:51:53 -0400
Received: (qmail 30951 invoked by uid 514); 29 Jun 2007 18:51:49 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 30946 invoked from network); 29 Jun 2007 18:51:48 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Fri, 29 Jun 2007 13:11:53 -0500
From: "Patrick R. Michaud" <pmichaud@pobox.com>
To: parrot-porters@perl.org
Subject: DISREGARD: Should MANIFEST determine .pbc builds in runtime/parrot/library/ ?
Message-ID: <20070629181153.GB27722@host.pmichaud.com>
References: <20070629165527.GA27722@host.pmichaud.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070629165527.GA27722@host.pmichaud.com>
User-Agent: Mutt/1.4.2.1i
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - host.pmichaud.com
X-AntiAbuse: Original Domain - perl.org
X-AntiAbuse: Originator/Caller UID/GID - [32003 505] / [47 12]
X-AntiAbuse: Sender Address Domain - host.pmichaud.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Fri, Jun 29, 2007 at 11:55:28AM -0500, Patrick R. Michaud wrote:
> I just spent about an hour trying to figure out how the files
> in runtime/parrot/library/ are automatically compiled into .pbc files
> when Parrot is built.  It turns out that the list of files
> is computed from the MANIFEST, and I was searching through
> files in the config/ subdirectory (where most other configuration-like
> items tend to be placed).

Never mind, I finally figured it out.  It's in config/gen/makefiles/root.in .

I was doing "ack HLLCompiler" in the config directory (and other directories)
to try to find the HLLCompiler.pbc target, but didn't realize that ack
doesn't search "root.in" by default.  I guess this is one of those
1% cases where I should've used "grep -r" instead, or learned about
"ack -a".

Pm

     

tle  3nht
From perl6-all-return-82074-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 03:14:11 2007
Return-Path: <perl6-all-return-82074-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5J7E9L9026296
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 03:14:10 -0400
Received: (qmail 28974 invoked by uid 514); 19 Jun 2007 07:14:07 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28969 invoked from network); 19 Jun 2007 07:14:06 -0000
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
Received-SPF: softfail (x1.develooper.com: transitioning domain of chromatic@wgz.org does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: parrot-porters@perl.org
Subject: Simplifying Marking with a Macro
Date: Tue, 19 Jun 2007 00:13:18 -0700
User-Agent: KMail/1.9.6
MIME-Version: 1.0
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706190013.18145.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.0 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_SOFTFAIL

I hate seeing repeated code structures.  We could simplify the mark() entry in 
plenty of PMCs with a macro something like:

#define MARK_UNLESS_NULL(interp, struct, name) \
    if (struct->name) \
        pobject_lives(interp, (PObj *)struct->name)

-- c

              

/W
1
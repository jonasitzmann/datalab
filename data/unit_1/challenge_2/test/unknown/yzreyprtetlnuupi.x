From perl6-all-return-81933-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 02:16:02 2007
Return-Path: <perl6-all-return-81933-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D6G1L9003992
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 02:16:02 -0400
Received: (qmail 21587 invoked by uid 514); 13 Jun 2007 06:16:00 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21582 invoked from network); 13 Jun 2007 06:15:59 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
Message-ID: <466F8A8E.9030509@perl.org>
Date: Tue, 12 Jun 2007 23:11:26 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.12 (Macintosh/20070509)
MIME-Version: 1.0
To: p2 <parrot-porters@perl.org>
Subject: Last bits of PDD 15 implementation
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,SPF_NEUTRAL
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,SPF_PASS

I'm about half-way through a quick classification of the failing PDD 15 
tests (in t/pdd15oo). A number of the failures are quick things anyone 
could pick off, so I'll share the list:

<http://rakudo.org/parrot/index.cgi?pdd_15_remaining_features>

We're only failing 157 out of 764 tests, so we're getting quite close 
being able to use the new object implementation as a drop-in replacement 
for the old object implementation.

Allison

    

K e mE3a
t
stW
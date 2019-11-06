From perl6-all-return-81934-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 02:24:40 2007
Return-Path: <perl6-all-return-81934-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D6OdL9004063
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 02:24:39 -0400
Received: (qmail 23367 invoked by uid 514); 13 Jun 2007 06:24:37 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23362 invoked from network); 13 Jun 2007 06:24:37 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
Message-ID: <466F8CB5.6020809@perl.org>
Date: Tue, 12 Jun 2007 23:20:37 -0700
From: Allison Randal <allison@perl.org>
User-Agent: Thunderbird 1.5.0.12 (Macintosh/20070509)
MIME-Version: 1.0
To: Mark Glines <mark@glines.org>, Perl 6 Internals <perl6-internals@perl.org>
Subject: Re: Removing #pragma
References: <9F00A4F2-6AF4-429C-97D4-53B543738069@petdance.com> <1d9a3f400706120738q4f1c7132q5c2db61522b2ffab@mail.gmail.com> <466EE867.6060601@perl.org> <20070612131344.4455a056@chirp> <20070612202309.GL20876@plum.flirble.org>
In-Reply-To: <20070612202309.GL20876@plum.flirble.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

> On Tue, Jun 12, 2007 at 01:13:44PM -0700, Mark Glines wrote:
> 
>> I just came up with an artificial benchmark and found that gcc-3.4.6
>> runs slightly faster with #pragma once protecting a header that includes
>> lots of other headers. (a chain of 200 other headers, in my test.)  By
>> "slightly", I mean "compare a 0.86 second average to a 0.92 second
>> average, for 10 runs each".
>>
>> For a more realistic benchmark, parrot r18883 compiles in 3m29.363s,
>> parrot r18884 compiles in 3m29.190s.  So, for gcc-3.4.6 at least, I
>> think the difference might be lost in the noise.

Balancing the gain vs. loss: these small speed gains don't seem worth 
losing the ability to compile on a tool chain that has worked fine until 
this change. We can revisit that when/if the speed gain becomes more 
significant, or MinGW gcc 3.4.5 switches over to 'current'.

Allison

                   

tNop"nWr_H
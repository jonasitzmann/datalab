From perl6-all-return-81764-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 08:34:24 2007
Return-Path: <perl6-all-return-81764-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53CYNhB015561
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 08:34:23 -0400
Received: (qmail 9779 invoked by uid 514); 3 Jun 2007 12:34:16 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9774 invoked from network); 3 Jun 2007 12:34:16 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of jkeen@verizon.net designates 206.46.252.40 as permitted sender)
Date: Sun, 03 Jun 2007 08:33:35 -0400
From: James Keenan <jkeen@verizon.net>
Subject: [perl #43107] t/tools/pmc2cutils/05-gen_c:  Warnings being thrown in
 testing of Parrot::Pmc2c::Pmc2cMain
To: parrotbug-followup@parrotcode.org
Message-id: <2621E80E-23BE-4EA1-A457-23DD53B5A4FC@verizon.net>
MIME-version: 1.0 (Apple Message framework v752.2)
X-Mailer: Apple Mail (2.752.2)
Content-type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Content-transfer-encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS



>
> On Jun 2, 2007, at 10:32 AM, Bob Rogers via RT wrote:
>
>
>>
>>
>> This seems like a lot of trouble just to keep dead code in the  
>> codebase.
>> Is there some reason not to yank the useless methods?
>>
>> 					-- Bob
>>
>>
>
> Not that *I* know of.  But my knowledge base only extends as far as  
> the Perl build tools themselves.  The PIR or C content that is  
> managed via those build tools is beyond my scope and is the  
> responsibility of other people in the project.  They would have to  
> advise as to how to distinguish between what is merely currently  
> unused and what is truly useless.
>
> tewk?  chromatic?   leo?  particle?  Opinions on this?
>
> Thanks.
>
> kid51
>


        

g<7ED pyr6<wn9
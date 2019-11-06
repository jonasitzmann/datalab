From perl6-all-return-81924-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 21:19:19 2007
Return-Path: <perl6-all-return-81924-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D1JIL9001609
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 21:19:19 -0400
Received: (qmail 26173 invoked by uid 514); 13 Jun 2007 01:19:17 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 26168 invoked from network); 13 Jun 2007 01:19:16 -0000
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
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of jkeen@verizon.net)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of jkeen@verizon.net designates 206.46.252.44 as permitted sender)
Date: Tue, 12 Jun 2007 21:17:53 -0400
From: James Keenan <jkeen@verizon.net>
Subject: Fwd: [TODO] Write test for Parrot::Configure::runstep()
To: parrot-porters@perl.org
Message-id: <F95EF92C-1861-4345-B9EF-ECF083BFA53A@verizon.net>
MIME-version: 1.0 (Apple Message framework v752.2)
X-Mailer: Apple Mail (2.752.2)
Content-type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Content-transfer-encoding: 7bit
References: <ACAFA045-23F5-4A58-AFDF-27DD17AECEF9@verizon.net>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Forwarded to list pending return to life of rt.perl.org:


>
> Parrot::Configure::runstep() is the only subroutine in  
> Parrot::Configure() that is still not covered via the tests in t/ 
> configure/ or t/postconfigure/.  No test has yet been written in  
> part because this is a subroutine which is not really well  
> positioned in its current package.  Everything else in  
> Parrot::Configure has to do with initial configuration; runstep()  
> has to do with *re-running* a step after Configure.pl has already  
> completed.  It's a tool that some Parrot developers use (Patrick  
> Michaud has spoken up for it), but is not used by make.
>
> Additional problem:  Parrot::Configure also has subroutines named  
> runstep() and _runstep().  Ideally, any refactoring would include  
> less confusing names.
>
> Because runstep() runs after Configure.pl, any tests for it should  
> go into the t/postconfigure/ directory.
>
> So the task is to write unit tests for Parrot::Configure::runstep()  
> and, if appropriate, to refactor it, with that refactoring possibly  
> including renaming and/or relocating the subroutine.
>
> kid51

        

1ud d20e1Ao9
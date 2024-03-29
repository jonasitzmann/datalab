From perl6-all-return-81945-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 16:56:48 2007
Return-Path: <perl6-all-return-81945-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DKulL9012430
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 16:56:47 -0400
Received: (qmail 17122 invoked by uid 514); 13 Jun 2007 20:56:45 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17117 invoked from network); 13 Jun 2007 20:56:45 -0000
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
Received-SPF: fail (x1.develooper.com: domain of Bernhard.Schmalhofer@gmx.de does not designate 63.251.223.186 as permitted sender)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of Bernhard.Schmalhofer@gmx.de designates 213.165.64.20 as permitted sender)
X-Authenticated: #5068625
X-Provags-ID: V01U2FsdGVkX19RkfFj9O9RWdsgE8ILj0ZT4THeGGTx21wS146+pm
	zG7zHLuT3DqM4Y
Message-ID: <467059DF.3050006@gmx.de>
Date: Wed, 13 Jun 2007 22:55:59 +0200
From: Bernhard Schmalhofer <Bernhard.Schmalhofer@gmx.de>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: chromatic <chromatic@wgz.org>
CC: parrot-porters@perl.org
Subject: Re: [svn:parrot] r18988 - trunk/lib/Parrot
References: <20070613194512.8271DCB9B8@x12.develooper.com> <200706131251.10279.chromatic@wgz.org>
In-Reply-To: <200706131251.10279.chromatic@wgz.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Y-GMX-Trusted: 0
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.4 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_FAIL

chromatic schrieb:
>> @@ -697,7 +694,7 @@
>>              $builder->diag("'$cmd' failed with exit code $exit_code")
>>                  if $exit_code and not $pass;
>>  
>> -            unless ( $ENV{POSTMORTEM} ) {
>> +            if ( ! $ENV{POSTMORTEM} ) {
>>                  unlink $out_f;
>>              }
>>     
>
> That's an ... odd definition of beautification.  I prefer:
>
> 	unlink $out_f unless $ENV{POSTMORTEM};
>
> It's two lines shorter and has several fewer punctuation characters.
>   
That's an habit formed by Perl::Critic:

ControlStructures::ProhibitUnlessBlocks    -> replace 'unless (' with 
'if ( !'
ControlStructures::ProhibitPostfixControls -> use postfix controls only 
for functions  like  |die|, |croak|, and |confess|

But as beauty lies in the eye of the beholder, it's just a matter of taste.

Regards,
  Bernhard

        

y <8biz	
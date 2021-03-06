From perl6-all-return-82040-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 17:48:30 2007
Return-Path: <perl6-all-return-82040-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HLmTL9010840
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 17:48:29 -0400
Received: (qmail 28324 invoked by uid 514); 17 Jun 2007 21:48:27 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28312 invoked from network); 17 Jun 2007 21:48:26 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <4675AC12.3060501@jnthn.net>
Date: Sun, 17 Jun 2007 22:48:02 +0100
From: Jonathan Worthington <jonathan@jnthn.net>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: "GDR!" <gdr@go2.pl>
CC: perl6-internals@perl.org
Subject: Re: Parrot in hardware
References: <1794560872.20070616195304@go2.pl>
In-Reply-To: <1794560872.20070616195304@go2.pl>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=1.2 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FH_HOST_EQ_D_D_D_D,SPF_PASS

Hi,

GDR! wrote:
>   I'm new here so I'll say hello - I'm GDR!.
>   
Welcome! :-)

>   I was looking at the Parrot project recently and I'd like to
> implement the VM in hardware. I'm not deeply into the project,
> however,  so I'd like to ask you if the Parrot bytecode is now stable
> enough to begin hardware developement - I wouldn't like to end up with a chip supporting some pre-historical version of VM.
>   
I'm sure there will be additions and probably the odd deprecation to the 
opcodes, and there are probably some that are spec'd and not implemented 
yet (e.g. for I/O stuff - I'm not sure without checking).

That said, I think changes to the bytecode format are going to be the 
least of your problems. Have you seen how many ops there are, for 
starters? :-) Also, many of the opcodes do pretty complex stuff, and 
many of them depend on what a PMC does, and you'll probably find 
yourself needing to call back into software a LOT. You certainly can't 
get things like method dispatch done in hardware, as it's up to a 
particular class system to choose how to implement it. Even things like 
indexing into arrays falls into that boat.

I'm curious what you want to achieve through working on this. Since 
you'd be calling back into software so much, and it's highly unlikely 
you're going to make anything that executes compiled, optimized C faster 
than the leading CPUs of today, I'd be highly skeptical of getting any 
kind of performance gains. Especially with JIT and all that jazz.

If this is for a degree project or something (just a guess), personally 
I'd not do this. I did a (well received) project in my own degree 
involving Parrot, and I know others have too, so I certainly encourage 
people to do Parrot-related projects. I think it'd be very hard to make 
a success of this one. Of course, I'm always open to being proved wrong.

Hardware-level instructions to allow high-performance execution of 
dynamic languages could be an interesting area to explore - I don't know 
what's been done there already - but I don't think that trying to 
implement Parrot in hardware is the way to go if you want to look into 
this...you might find Parrot and other dynamic language's interpreters 
for hints as to what might be needed though.

Hope this helps,

Jonathan

            

V
y2 : a2n19.
From perl6-all-return-82240-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 08:25:37 2007
Return-Path: <perl6-all-return-82240-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MCPaL9006137
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 08:25:36 -0400
Received: (qmail 3357 invoked by uid 514); 22 Jun 2007 12:25:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3352 invoked from network); 22 Jun 2007 12:25:32 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 64.233.162.226 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=qHx82jQpWmAG16Cg/XO1OGMxioz5yurW59qdFoS1/N4koDLPb8pkFJ2rJ3JVr0/pjPZvW4R0L1u/WGAiitGj6EgvZytBzxkxguZVHIH1hwwGS38FQNALPFskE9hxp5NZAj3I0PcRhovv+qvQEXKbNc5Xdi+csxQ1UnCA9XaWMTo=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=Rr2HTZmUGHvcYDkU1mHnKENuBJZPnSIwQlXzsvHCrlXrRWpVP2S8zD01aRe4rIW0tP8q5tRRbATG9djdSMqb05FZeX2v3DXPKpHDbKU5LA6R6aICHIGwfnPqHL2nPSdbk2M2kyu93+tJcvZzQoej2gzS7+dVrh1ybHXf0mca1NU=
Message-ID: <467BBF97.7090500@conway.org>
Date: Fri, 22 Jun 2007 22:24:55 +1000
From: Damian Conway <damian@conway.org>
Reply-To: damian@conway.org
User-Agent: Thunderbird 2.0.0.4 (Macintosh/20070604)
MIME-Version: 1.0
To: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: Referring to source code within Perldoc: the new A<> code
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621074400.GA32129@earth.overmeer.net> <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com> <20070622080857.GI16156@earth.overmeer.net> <467B8A6C.8080702@conway.org> <20070622095408.GN16156@earth.overmeer.net>
In-Reply-To: <20070622095408.GN16156@earth.overmeer.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Damian Conway <thoughtstream@gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Mark Overmeer wrote:

> IMO, POD6 should not provide the possibility to build such tools: it
> should *be* the tool. With a nice (compact) standard definition how
> to document each of the designed features in Perl6

And this is a succinct statement of one half of our fundamental philosophical 
difference.

The other half is that I still believe that Pod should be an enabler and 
medium for creating nice (compact) standard definitions of how to document 
Perl 6. I don't want to create One True Documentation scheme; I want to create 
a means to develop a range of True Documentation schemes...a range of schemes 
suited to different documentation goals, different paradigms, different source 
code structures, and different readers.

Damian

         

>o5y  oQuTl
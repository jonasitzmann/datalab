From perl6-all-return-82446-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 10:01:57 2007
Return-Path: <perl6-all-return-82446-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TE1uL9026687
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 10:01:57 -0400
Received: (qmail 2509 invoked by uid 514); 29 Jun 2007 14:01:52 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2504 invoked from network); 29 Jun 2007 14:01:52 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.238 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=nPjc30gaVu/uOgrZ7ahNNKHemmI1qCb2DBiqRh9YRXCFYTfI0Z6QCh+WJ83M34pPjAhMpipf3AZBX8CpDDdJWFA1lQ2qcgiYWMATOPvqungTKiT/qR2M57ryrM45OCyvrCwVW4d2x3ls8gGDzE0cOTMjqT2gJ/7Ax04ioW7z7o4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=tktpil+gadtuqIMKixZRkKV2xq8bmUSVOcbG5EbJwBu421aTsJZ9LaMXyaEsPa0D48TTIydsGltZrgZk/KN/DwY51kYVSznt467daqSNMqTPiAKa1NA+ehpft+TP95JC7SxJbIi+SpvN7bpLWO+dHalosXJJbYgMYhClNfSHnZ4=
Message-ID: <8e8ee0d40706290701q583d3a5vda24ad2e1d2c0811@mail.gmail.com>
Date: Fri, 29 Jun 2007 16:01:12 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: perl6-internals@perl.org
Subject: Re: [perl #43431] build problem
Cc: bugs-bitbucket@netlabs.develooper.com
In-Reply-To: <rt-3.6.HEAD-1276-1183107139-1336.43431-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-43431@perl.org> <4684C820.1070102@rusrating.ru>
	 <rt-3.6.HEAD-1276-1183107139-1336.43431-72-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 29/06/07, via RT Richard Hainsworth
<parrotbug-followup@parrotcode.org> wrote:
> # New Ticket Created by  Richard Hainsworth
> # Please include the string:  [perl #43431]
> # in the subject line of all future correspondence about this issue.
> # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43431 >
>
>
> Dear Parrot people,
>
> Just updates my subversion depository after a long time.
>
> Got this error after 'make'
> ...
> make -C compilers/past-pm
> make[1]: Entering directory
> `/home/richard/development/parrot/trunk/compilers/past-pm'
> /usr/bin/perl -MExtUtils::Command -e rm_rf PAST-pm.pbc
> ../../runtime/parrot/library/PAST-pm.pbc
> ../../parrot ../../compilers/tge/tgc.pir --output=POST/Grammar_gen.pir
> POST/Grammar.tg
> PackFile_unpack: Bytecode not valid for this interpreter: fingerprint
> mismatch
> Parrot VM: Can't unpack packfile
> /home/richard/development/parrot/trunk/./compilers/tge/TGE/Parser.pbc.
> Null PMC access in invoke()
> current instr.: 'parrot;TGE::Compiler;parse_grammar' pc 28
> (TGE/Compiler.pir:34)
> called from Sub 'parrot;TGE::Compiler;precompile' pc 654
> (TGE/Compiler.pir:293)
> called from Sub 'main' pc 101 (../../compilers/tge/tgc.pir:87)
> make[1]: *** [PAST-pm.pbc] Error 1

Did you do a make realclean && perl Configure.pl after svn up?  This could help.

Paul

                  

yat 
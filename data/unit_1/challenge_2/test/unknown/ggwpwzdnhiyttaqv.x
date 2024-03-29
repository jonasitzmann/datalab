From perl6-all-return-82090-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 08:41:58 2007
Return-Path: <perl6-all-return-82090-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JCfuL9029460
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:41:57 -0400
Received: (qmail 17869 invoked by uid 514); 19 Jun 2007 12:41:54 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17854 invoked from network); 19 Jun 2007 12:41:53 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DKIM_SIGNED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-compiler-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-compiler
List-Id: <perl6-compiler.perl.org>
Delivered-To: mailing list perl6-compiler@perl.org
Delivered-To: perl6-compiler@perl.org
Received-SPF: pass (x1.develooper.com: domain of fglock@gmail.com designates 66.249.92.173 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=QD64+W3lOgeunVcycAzlyxR2R/Ti75RiSssaQPLYbd6YjIb6OP6/ja5mncWLLuW9Mjk0p962K3MuC5fYFo1yZjSz3wwcwurchb1ClPK8tOwiyvvgCaE57zPVBL+WXIqz3Ivwmbj5rxO8R/UJ6DOf/Kn16kJ/W32hkAilj2gq8Os=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=Wp2FWCJ2ScNzyvRP6jq3gbBtKgd8Ggv2Nh/8/lwwb/BrIfbjKCr9zQ8jF9ShdrXUjLKOgEeYAV2xL+qMCe4KDpah1mLsL6LT84GjDuBacPZCZB2M+6x3ltCPhsw5IxF3PMQNfVDeU1qaq9m+Gkk8bjWZuuu83Ss/DFzKsJzrkyQ=
Message-ID: <aa47605d0706190521n4b5984b1qbf81f3898978d8c0@mail.gmail.com>
Date: Tue, 19 Jun 2007 09:21:04 -0300
From: "Flavio S. Glock" <fglock@gmail.com>
To: perl6-language@perl.org, perl6-compiler@perl.org
Subject: Request for kp6 compiler architecture review
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

I'm working on the development plan for the next generation of the
Perl6-in-Perl6 compiler "kp6".  kp6 is implemented in mp6, a basic
version of Perl 6 which is written in mp6 itself, and bootstrapped
on Perl 5.

kp6, while incomplete, runs today and can already parse and compile
a subset of Perl 6.


* Accessing kp6:


The kp6 directory (Pugs /v6/v6-KindaPerl6/) contains the tools you
need for bootstrapping the compiler and for running programs.

Compiler source code can be compiled with:

 $ perl mp6.pl < lib/Some/File.pl > lib5/Some/File.pl

Programs written in Perl 6 can be compiled and run with:

 # run a test
 $ perl kp6-perl5.pl < t/kp6/01-tap.t | perl -Ilib5

 # show the compiled code
 $ perl kp6-perl5.pl < hello.pl | perltidy

 # show the AST
 $ perl kp6-perl5.pl --ast < hello.pl | perltidy

There are shortcut scripts for some common operations:

 $ perl recompile.pl # recompiles all kp6 source

 $ sh run_tests.sh # runs all kp6 tests

Only the Perl 5 backend is fully implemented; Parrot (through
Perl6-in-Parrot), JVM (through Groovy), and Python (possibly
through RPython) are experimental.


* Development Plan:


The most up-to-date document for the kp6 architecture is this
drawing:

 http://svn.pugscode.org/pugs/v6/docs/kp6.jpg

 # simplified version
 http://svn.pugscode.org/pugs/v6/docs/kp6-overview.jpg

kp6 currently implements the compiler almost exactly as drawn.

The current development plan can be accessed from here:

 http://pugs.blogs.com/pugs/2007/06/kindaperl6_proj.html

I'm looking for comments on how to improve the compiler internals.

For example:

- One of my basic design principles was to implement AST
transformations as "pluggable" modules, using a visitor pattern.
Do you see potential problems with this approach?

- BEGIN block side-effects are recorded in a hash. This adds an
overhead to all assignment operations. Do you see a better way to
check for side-effects?

I'd appreciate if I can get a compiler architecture review.

I'm available on #perl6 in freenode (my timezone is -03:00).
You can find me there as 'fglock'.
Please share your comments either here on the mailinglist or via IRC.
I look forward to your feedback

thanks!
- Flavio S. Glock (fglock)

      

i6h1p
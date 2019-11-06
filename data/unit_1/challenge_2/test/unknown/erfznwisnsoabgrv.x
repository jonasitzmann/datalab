From perl6-all-return-82467-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 30 08:15:06 2007
Return-Path: <perl6-all-return-82467-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5UCF5L9006709
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 08:15:05 -0400
Received: (qmail 31508 invoked by uid 514); 30 Jun 2007 12:15:01 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31503 invoked from network); 30 Jun 2007 12:15:00 -0000
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
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.224 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=E3Un4MuG8wm7LgsIwA3uAMJ0dOnmTMHhZtJ0gCGRMBh6UvQ4ekvUA4V0GMl030g0qHQ0s1h6Q2gWzhqGqHz7ZkYEWWUDRgfrqL94MDORxC6B2Vkjmj+vLYAW3LShVH1jrnzAC3z11SqVGexWmQJ9bNfWDJrqOkHSs/Q4Hq7BWtk=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=F9mH6Qw97Xkb1EueO+SvOWSeR1a9c+f7WrNEIiw+FIyBYYJ7ymOYYBo9UniqmC6WJTY7+XKJFsNDslQ0MvNd2+dxlO+eIIkV5vRsXgCKeF5qxx/aaKdnboEk0hTBmf4MHXOHVckhCi363e4/zAIWSgr+D9+RXlK3lJjnhPe6MKg=
Message-ID: <8e8ee0d40706300514r16ab0851v97f38b3169f6e38@mail.gmail.com>
Date: Sat, 30 Jun 2007 14:14:29 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "Steve Peters" <steve@fisharerojo.org>
Subject: Re: Building with icc
Cc: "Andy Lester" <andy@petdance.com>,
   "perl6-internals List" <perl6-internals@perl.org>
In-Reply-To: <8e8ee0d40706070650n521140d2m541b2c38337cc5fa@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <FAB3A5D1-5681-4720-8C07-2EC1A57153B4@petdance.com>
	 <20070607123403.GA28246@kirk.peters.homeunix.org>
	 <8e8ee0d40706070650n521140d2m541b2c38337cc5fa@mail.gmail.com>
X-Virus-Checked: Checked
X-Virus-Checked: Checked
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 07/06/07, Paul Cochrane <paultcochrane@gmail.com> wrote:
> > perl Configure.pl --cc=icc --link=icc --ld=icc
>
> I tried this, but got the following output from Configure.pl:
>
> cochrane@avon parrot_svn2 $ perl Configure.pl --cc=icc --link=icc --ld=icc
> Parrot Version 0.4.12 Configure 2.0
> Copyright (C) 2001-2007, The Perl Foundation.
>
> Hello, I'm Configure. My job is to poke and prod your system to figure out
> how to build Parrot. The process is completely automated, unless you passed in
> the `--ask' flag on the command line, in which case it'll prompt you for a few
> pieces of info.
>
> Since you're running this program, you obviously have Perl 5--I'll be pulling
> some defaults from its configuration.
>
> Checking MANIFEST.....................................................done.
> Setting up Configure's default values.................................done.
> Setting up installation paths.........................................done.
> Tweaking settings for miniparrot...................................skipped.
> Loading platform and local hints files................................done.
> Determining nongenerated header files.................................done.
> Determining what C compiler and linker to use.........................done.
> Determining whether make is installed..................................yes.
> Determining whether lex is installed...............................skipped.
> Determining whether yacc is installed..............................skipped.
> Determining if your C compiler is actually gcc..........................no.
> Determining if your C compiler is actually Visual C++...................no.
> Enabling optimization...................................................no.
> Determining flags for building shared libraries......................-fPIC.
> Determine if parrot should be linked against a shared library..........yes.
> Determining what charset files should be compiled in..................done.
> Determining what encoding files should be compiled in.................done.
> Determining what types Parrot should use..............................done.
> Determining what opcode files should be compiled in...................done.
> Determining what pmc files should be compiled in......................done.
> Determining your minimum pointer alignment......................... 1 byte.
> Probing for C headers.................................................done.
> Determining some sizes................................................done.
> Computing native byteorder for Parrot's wordsize.............little-endian.
> Test the type of va_ptr (this test is likely to segfault)...
> step auto::va_ptr died during execution: Unknown va_ptr type at
> config/auto/va_ptr.pm line 38.
>
>  at Configure.pl line 350
>
> Figuring out how to pack() Parrot's types.............................done.
> Figuring out what formats should be used for sprintf..................done.
> Determining if your C library has a working S_ISREG....................yes.
> Determining architecture, OS and JIT capability.......................done.
> Generating CPU specific stuff.........................................done.
> Verifying that the compiler supports function pointer casts............yes.
> Determining whether your compiler supports computed goto...............yes.
> Determining if your compiler supports inline...........................yes.
> Determining what allocator to use.....................................done.
> Determining if your C library supports memalign........................yes.
> Determining some signal stuff.........................................done.
> Determining whether there is socklen_t.................................yes.
> Determining if your C library has setenv / unsetenv...................both.
> Determining if your platform supports AIO..............................yes.
> Determining if your platform supports GMP..............................yes.
> Determining if your platform supports readline.........................yes.
> Determining if your platform supports gdbm.............................yes.
> Testing snprintf......................................................done.
> Determining whether perldoc is installed...............................yes.
> Determining whether python is installed.........................yes, 2.4.4.
> Determining whether GNU m4 is installed................................yes.
> Running CPU specific stuff............................................done.
> Determining whether ICU is installed...................................yes.
> Determining Parrot's revision.......................................r18861.
> Generating C headers...Use of uninitialized value in concatenation (.)
> or string at (eval 76) line 63, <$in> line 10.
> Use of uninitialized value in string eq at (eval 76) line 67, <$in> line 10.
> Use of uninitialized value in string eq at (eval 76) line 73, <$in> line 10.
> ...............................................done.
> Generating core pmc list..............................................done.
> Generating runtime/parrot/include.....................................done.
> Configuring languages.................................................done.
> Generating makefiles and other build files............................done.
> Moving platform files into place......................................done.
> Recording configuration data for later retrieval......................done.
> Okay, we're done!
>
> You can now use `make' to build your Parrot.
> (NOTE: do not use `make -j <n>'!)
> After that, you can use `make test' to run the test suite.
>
> Happy Hacking,
>         The Parrot Team
>
>
> And now make complains with:
>
> Makefile:830: *** missing separator.  Stop.
>
>
> My platform is Gentoo Linux x86 and
>
> cochrane@avon parrot_svn2 $ icc --version
> iccbin (ICC) 9.1 20061103
> Copyright (C) 1985-2006 Intel Corporation.  All rights reserved.
>
>

The va_ptr problem mentioned above comes about because icc isn't
seeing its own version of stdarg.h.  The fix for this is to add the
path to icc's headers to the Configure.pl line like so:

perl Configure.pl --cc=icc --link=icc --ld=icc
--ccflags=-I/opt/intel/compiler91/include/

(you will need to change the path to correspond to that of your
installation of icc).

This now gets icc building parrot on my linux box.

Hope this helps,

Paul



 uWeo."0te-: x.
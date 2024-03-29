From perl6-all-return-82548-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 04:29:11 2007
Return-Path: <perl6-all-return-82548-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l658TAL9023705
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 04:29:11 -0400
Received: (qmail 17720 invoked by uid 514); 5 Jul 2007 08:29:05 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17715 invoked from network); 5 Jul 2007 08:29:05 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: [perl #43549] [BUG] Upgrade of flex and other software causes Parrot 'make' to fail
Date: Thu, 5 Jul 2007 01:28:29 -0700
User-Agent: KMail/1.9.6
Cc: James Keenan (via RT) <parrotbug-followup@parrotcode.org>,
   bugs-bitbucket@netlabs.develooper.com
References: <RT-Ticket-43549@perl.org> <parrotbug_0.6.1_4470_1183602583@li11-226> <rt-3.6.HEAD-25329-1183603263-252.43549-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-25329-1183603263-252.43549-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200707050128.29716.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Wednesday 04 July 2007 19:41:03 James Keenan wrote:

> Parrot 'make' failed tonight on my Debian Linux server, a location where
> it had long been working successfully.  I suspect that an upgrade of
> non-Parrot software may be the problem, and would like suggestions for
> remedies.
>
> In the course of doing testing on config/inter/lex.pm, I realized that I
> did not have any version of 'flex' installed.  So I used apt-get to
> install the most recent version, which also happens to be the minimum
> required version for Parrot (to the extent you require it at all).  Here
> is the output of that 'flex' installation.

...

> The following packages will be upgraded:
>   libc6 libc6-dev

...

> /usr/lib/libc_nonshared.a(stat64.oS)(.text.__i686.get_pc_thunk.bx+0x0): In 
function `__i686.get_pc_thunk.bx':
> : multiple definition of `__i686.get_pc_thunk.bx'
>
> /usr/lib/gcc-lib/i486-linux/3.3.5/crtbeginS.o(.gnu.linkonce.t.__i686.get_pc
>_thunk.bx+0x0): first defined here collect2: ld returned 1 exit status
> make: *** [blib/lib/libparrot.so.0.4.13] Error 1
>
> ####### END MAKE LOG ######
>
> The last 5 lines appear problematic to me.  Suggestions?

make realclean, I think.  It's the glibc upgrade.

-- c

               

xm5s
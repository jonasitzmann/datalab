From perl6-all-return-82469-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 30 11:54:16 2007
Return-Path: <perl6-all-return-82469-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5UFsDL9008890
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 11:54:15 -0400
Received: (qmail 23933 invoked by uid 514); 30 Jun 2007 15:54:08 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 23928 invoked from network); 30 Jun 2007 15:54:08 -0000
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
Received-SPF: unknown (x1.develooper.com: error in processing during lookup of andy@petdance.com)
In-Reply-To: <8e8ee0d40706300514r16ab0851v97f38b3169f6e38@mail.gmail.com>
References: <FAB3A5D1-5681-4720-8C07-2EC1A57153B4@petdance.com> <20070607123403.GA28246@kirk.peters.homeunix.org> <8e8ee0d40706070650n521140d2m541b2c38337cc5fa@mail.gmail.com> <8e8ee0d40706300514r16ab0851v97f38b3169f6e38@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <6DDB1868-60DA-411A-9FCE-84B43646D308@petdance.com>
Cc: "Steve Peters" <steve@fisharerojo.org>,
   "perl6-internals List" <perl6-internals@perl.org>
Content-Transfer-Encoding: 7bit
From: Andy Lester <andy@petdance.com>
Subject: Re: Building with icc
Date: Sat, 30 Jun 2007 10:45:58 -0500
To: "Paul Cochrane" <paultcochrane@gmail.com>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME

>
> perl Configure.pl --cc=icc --link=icc --ld=icc
> --ccflags=-I/opt/intel/compiler91/include/

Even with this, I get complaints that:

   icc: error #10001: could not find directory in which the set of  
libstdc++ include files resides

I've apparently got a libstdc++-devel package installed at /usr/ 
include/c++/4.1.1/, but ICC is apparently not finding it.

Suggestions?



ICC='/opt/intel/cce/10.0.023'
CC="$ICC/bin/icc -gcc-name=/usr/local/bin/gcc -gcc-version=420"
CX="$CC"

# Make ICC see its own headers
CCFLAGS="-I$ICC/include -I/usr/include/c++/4.1.1"
# Turn off certain warnings
CCFLAGS="$CCFLAGS -wd810"   # conversion from "x" to "y" may lose  
significant bits
CCFLAGS="$CCFLAGS -wd981"   # operands evaluated in unspecified order
CCFLAGS="$CCFLAGS -wd279"   # controlling expression is constant
CCFLAGS="$CCFLAGS -wd1419"  # external declaration in primary source  
file
CCFLAGS="$CCFLAGS -wd1418"  # external definition with no prior  
declaration
CCFLAGS="$CCFLAGS -wd1684"  # conversion from pointer to same-sized  
integral type (potential portability problem)
CCWARN="-Wall"

perl Configure.pl \
     --cc="$CC" \
     --cxx="$CX" \
     --link="$CX" \
     --ld="$CX" \
     --ccflags="$CCFLAGS" \
     --ccwarn="$CCWARN" \




--
Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance




                   

eg	�p+ce/
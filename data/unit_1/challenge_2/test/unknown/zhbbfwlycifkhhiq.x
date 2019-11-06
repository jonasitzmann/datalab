From perl6-all-return-81811-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 02:14:00 2007
Return-Path: <perl6-all-return-81811-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l556DvhB004785
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 02:13:58 -0400
Received: (qmail 11409 invoked by uid 514); 5 Jun 2007 06:13:50 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 11404 invoked from network); 5 Jun 2007 06:13:50 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of jrisom@gmail.com designates 64.233.166.176 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=CxYvNR13LGbn8Y2r0SMNO575/+2Y8i0p5aYK+9kOa8y5lg9JcGDb1hZjdrdFTyiNF0uR6xhIj+8rvckfy7IbvaBC8H/cE4pEi0Bcn2yoRjxuTwdiV/tkCEd1f9vF5NFrAXC92254Py3w2ds73YfzIGhKXQUQDMnXX51Fy8JIpx8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=f2u5aRNaVRDzxiJCUz9aBGWMkkURuL4jpEEhvaECDpYsQzGt0ENiDKeG7aOEuX54miMc9so/71itRmq3Je5Rq4QrHthJFb04XKPeZf0GPgi7Oiam7e1WDNEAZhrx3Ue5OrBygtfKlLBp+BRRToTwL+zbnDPIupHeuKBRCt/B9/g=
In-Reply-To: <200706041307.18113.chromatic@wgz.org>
References: <20070604124945.36989852@chirp> <200706041307.18113.chromatic@wgz.org>
Mime-Version: 1.0 (Apple Message framework v624)
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <8b561d9cbd5f529a2865ca5a099fe146@gmail.com>
Content-Transfer-Encoding: 7bit
Cc: perl6-internals@perl.org, Mark Glines <mark@glines.org>,
   parrotbug@parrotcode.org
From: Joshua Isom <jrisom@gmail.com>
Subject: Re: GC bug on freebsd/x86, triggered by a perl6 test
Date: Tue, 5 Jun 2007 01:13:36 -0500
To: chromatic <chromatic@wgz.org>
X-Mailer: Apple Mail (2.624)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_SIGNED,SPF_PASS

After a little prodding around, I think the problem is that the dynops 
aren't build with the rpath.  I don't know how "proper" the following 
patch is(i.e. linux doesn't seem to have a problem so either this is 
right or the other way is right), but it does the trick.

Index: config/gen/makefiles/dynoplibs_pl.in
===================================================================
--- config/gen/makefiles/dynoplibs_pl.in    (revision 18819)
+++ config/gen/makefiles/dynoplibs_pl.in    (working copy)
@@ -24,7 +24,7 @@
  # Config stuff
  our $CC = q[@cc@ -c];
  our $LD = q[@ld@];
-our $LDFLAGS = q[@ldflags@ @ld_debug@];
+our $LDFLAGS = q[@ldflags@ @ld_debug@ @rpath_blib@];
  our $LD_LOAD_FLAGS = q[@ld_load_flags@];
  our $PERL = q[@perl@];
  our $LOAD_EXT = q[@load_ext@];


On Jun 4, 2007, at 3:07 PM, chromatic wrote:

> On Monday 04 June 2007 12:49:45 Mark Glines wrote:
>
>> (the LD_LIBRARY_PATH bit is required on freebsd so parrot can find
>> libparrot.so.)
>
> The GNU linker supports a flag to mark a relocatable shared library.  
> From my
> Makefile:
>
> 	 -Wl,-rpath=/home/chromatic/dev/parrot/blib/lib
>
> I don't know which linker you use on FreeBSD, but is there a similar 
> flag?  If
> so, using it could clear up some of the dynamic loading problems 
> (especially
> for dynops and dynpmcs).
>
> -- c
>

                

 oeyPaJEnpcWr
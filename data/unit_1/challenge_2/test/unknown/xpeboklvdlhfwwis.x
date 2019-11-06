From perl6-all-return-82110-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 16:20:12 2007
Return-Path: <perl6-all-return-82110-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JKKBL9001090
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 16:20:11 -0400
Received: (qmail 9007 invoked by uid 514); 19 Jun 2007 20:20:08 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9002 invoked from network); 19 Jun 2007 20:20:07 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
From: Leopold Toetsch <lt@toetsch.at>
To: perl6-internals@perl.org
Subject: Re: memcpy
Date: Tue, 19 Jun 2007 22:19:34 +0200
User-Agent: KMail/1.9.1
Cc: Andy Lester <andy@petdance.com>
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
In-Reply-To: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Disposition: inline
Message-Id: <200706192219.34450.lt@toetsch.at>
X-Scan-Signature: 3eb4023d85beba22221bf02b5aa627a5
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5JKKBL9001090

Am Montag, 18. Juni 2007 23:48 schrieb Andy Lester:
> Is there a reason we use
>
>    memcpy( dest, src, sizeof(FOO) );
>
> instead of
>
>    *dest = *src;
>
> The latter should be the exact same code, but be much less likely to  
> be screwed up.

I'm using a lot of the first kind. The main reason is documenting the bulk 
copy operation (which is basically wrong - that's a docu thingy, if even).

Using 'sizeof(*dest)' is slightly better because the probability of 
overwriting too small dest areas is minimized - not the correctness of the 
code.

As Andy said: the best thing is using...

  *dest = *src;

... which will fail (IIRC) on all incompatible pointers. Compilers of course 
know about the size of the involved structure and can optimize the (possible 
generated) memcpy to unrolled item copies.

There are 2 addendums though:

a) as that construct seems not to be known widely I'd write it like:

  *dest = *src;   /* copy contents of structure FOO */

or some such.

b) sometimes inside parrot guts only parts of structures are copied to 
compatible pointers, which still will need the memcpy(3) call.

leo

             

4<i9i1fan::2wgI
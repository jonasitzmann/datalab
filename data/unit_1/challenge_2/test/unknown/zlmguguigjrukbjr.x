From perl6-all-return-82097-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 10:58:31 2007
Return-Path: <perl6-all-return-82097-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JEwUL9030689
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 10:58:31 -0400
Received: (qmail 14975 invoked by uid 514); 19 Jun 2007 14:58:28 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14970 invoked from network); 19 Jun 2007 14:58:28 -0000
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
Received-SPF: pass (x1.develooper.com: domain of jerry.gay@gmail.com designates 64.233.184.234 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=aTGCrIbXYTo1zqDAGp/xbBbvGj4UwXC+IagOTB7RqmrsDzC7T9swQQlT0YTvKjw4Ya84wLd1J4tvGLffHkU0TLdNVEEp3ZWhw/LMTsPTlDV69i965PY8DPAiZYOqoNrpkxkhbix6Za/bxOW7B2Omyves+BxHR0NojHXoQQpG0jg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=I8SQzwFSKswuCG8O1rCwaUKNVoG5z3HpM+Ly3WDDK8uBy/vHO3a8aiIOdFfNglWNrqYqoWi+nhc1EoF5Y4Ej7xda0jBz4dG9qRXM1f8IsLhIJwVZVm/de4RE2CUMAEIufWGHeSlO4TpjrnHMK/1kUz5sy//894VWd5YOIhJp9eE=
Message-ID: <1d9a3f400706190757r470ac419m45217830768c4336@mail.gmail.com>
Date: Tue, 19 Jun 2007 07:57:45 -0700
From: "jerry gay" <jerry.gay@gmail.com>
To: perl6-internals@perl.org
Subject: Re: [perl #43250] [PATCH] Relax myops alarm Timing
Cc: bugs-bitbucket@netlabs.develooper.com
In-Reply-To: <rt-3.6.HEAD-1276-1182248893-1987.43250-72-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-43250@perl.org> <4677AF77.10109@rblasch.org>
	 <rt-3.6.HEAD-1276-1182248893-1987.43250-72-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/19/07, via RT Ron Blaschke <parrotbug-followup@parrotcode.org> wrote:
> # New Ticket Created by  Ron Blaschke
> # Please include the string:  [perl #43250]
> # in the subject line of all future correspondence about this issue.
> # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43250 >
>
>
> Test 5 of F<t/dynoplibs/myops.t> has some very strong timing constraint.
>  Two sleeps of a second each (and a few minor int/print ops) may not be
> faster than a two seconds alarm.  This often doesn't work out on my box
> (Windows XP, Visual C++).
>
> t\dynoplibs\myops....NOK 5#     Failed test (t\dynoplibs\myops.t at line 77)
> #          got: '1
> # 2
> # alarm
> # 3
> # done.
> # '
> #     expected: '1
> # alarm
> # 2
> # 3
> # done.
> # '
>
> Attached patch unrolls the loop, which may or may not be more readable,
> but more importantly opens a +/- 1 second time window for the alarm.
>
> $ prove t\dynoplibs\myops.t
> t\dynoplibs\myops....ok
> All tests successful.
> Files=1, Tests=8, 10 wallclock secs ( 0.00 cusr +  0.00 csys =  0.00 CPU)
>
> Ron
>
> Index: t/dynoplibs/myops.t
> ===================================================================
> --- t/dynoplibs/myops.t (revision 19083)
> +++ t/dynoplibs/myops.t (working copy)
> @@ -80,14 +80,16 @@
>  .sub main :main
>      find_global P0, "_alarm"
>      alarm 2.0, P0
> -    set I0, 1
> -loop:
>      sleep 1
> -    print I0
> -    print "\n"
> -    inc I0
> -    # check_events
> -    le I0, 3, loop
> +    print "1\n"
> +
> +    # alarm should be triggered half-way
> +    # during this sleep
> +    sleep 2
> +    print "2\n"
> +
> +    sleep 1
> +    print "3\n"
>      print "done.\n"
>  .end
>
>
>
thanks, applied as r19131.
~jerry

    

t0easKeuOd

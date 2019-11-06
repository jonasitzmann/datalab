From perl6-all-return-82378-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 05:57:42 2007
Return-Path: <perl6-all-return-82378-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5Q9vfL9009268
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 05:57:41 -0400
Received: (qmail 29377 invoked by uid 514); 26 Jun 2007 09:57:34 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 29372 invoked from network); 26 Jun 2007 09:57:32 -0000
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
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.229 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=r7LibgoEciCbCkyuLMRmPTz1oGhrYYdjPqVm0sz7eJ59SJJPm9xDLTueMyaXeLIgEQMgu5Cx3LhHwSwcVrjfc82OON269iT7LD2zk2GNAQ/GjGBv61EqxIIjG+5HkqBX3QfcSiTuluELu5LyP5A1DucZRDNX+jOpRGgrPbvwcdc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Ny7rxHlEtOS/dHgnYs3lk06QhD98YbkO4kms6zSx7hurwZJHwrIoBm0e+PA5aNftPzJiiI6XxHgRvZJmYCOGBIW9o3T7Y6hEeXlZpE8FZMx1/BKPKdT9WPrRVCglJCjeK4ZWwJXe2QY0+CRzUawwUUjl0ybGciguC/svZw78CJ0=
Message-ID: <8e8ee0d40706260256s27a1c9yd46f3bbff35bfcec@mail.gmail.com>
Date: Tue, 26 Jun 2007 11:56:57 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "jerry gay" <jerry.gay@gmail.com>
Subject: Re: [perl #42427] [CAGE] cleanup perlcritic errors
Cc: parrotbug-followup@parrotcode.org, perl6-internals@perl.org
In-Reply-To: <1d9a3f400706250942s64f498fai57b234bc252c597f@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-42427@perl.org>
	 <1d9a3f400704101609u50e2d2b9g282e5a36e42197a9@mail.gmail.com>
	 <rt-3.6.HEAD-1276-1182767264-1659.42427-15-0@perl.org>
	 <1d9a3f400706250942s64f498fai57b234bc252c597f@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Jerry,

> let me start with a side point, sorry for the early tangent. why isn't
> perlcritic.t using a Getopt:: module--it should be. that'd be a good
> cage task, and would make one of my suggestions easier to implement.

As discussed on #parrot, this was already a TODO ticket and Getopt
argument parsing has been implemented as of r19319.

> arranging the %policies as a HoH would make it easier to add groupings
> as we please. something like:
>   my %policies = ( default => { ... }, extra => { ... }, );
>
> have one flag to select which group of policies to run. the special
> value 'all' would run all groups. 'default' would be the default. for
> example:
>   perl t/codingstd/perlcritic.t --group=extra

I've implemented the --group command line argument, but I decided it
was easier to implement separate hashes for 'default' and 'extra'
policies.  It is then simple to create a general hash for specifying
which policies need to be processed in any given run.  See r19332 for
more details.  If you think my implementation can be improved, please
say!  I'm always up to learn more :-)

Thanks for the feedback!  It helps me sharpen my perl skills.

Paul

  

s>cci.fl
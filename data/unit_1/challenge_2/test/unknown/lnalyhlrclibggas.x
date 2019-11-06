From beginners-return-92188-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun  6 07:32:27 2007
Return-Path: <beginners-return-92188-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l56BWQhB020849
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 07:32:27 -0400
Received: (qmail 22600 invoked by uid 514); 6 Jun 2007 11:32:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22590 invoked from network); 6 Jun 2007 11:32:15 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 6 Jun 2007 11:32:15 -0000
Received: (qmail 27605 invoked by uid 225); 6 Jun 2007 11:32:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27595 invoked by alias); 6 Jun 2007 11:32:13 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of a.r.ferreira@gmail.com designates 209.85.146.180 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.180)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 06 Jun 2007 04:26:23 -0700
Received: by wa-out-1112.google.com with SMTP id v27so137920wah
        for <beginners@perl.org>; Wed, 06 Jun 2007 04:26:12 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=WdWX8sUBnE8ltzVCboKsGo6YzY2XUi32UCxsArbQgrCWPa5gJISUM/y6OUvJEpx5xoWD59rIXFmBFEJcLeiYejzGRmOLA8nfyhsZUikOm1sUwanEG83fgRSoQw8raaiSf15ckGdDa9An8cyk+I3xFOzXZEENbfCxTgkluhC9Xis=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Mf9lGisvvKaAsP9endz9b7cUVxzrdsSwDUUvz3iscRjXKVcMzXzTKZQOpMxh9k8q3t4ZdKY/lUw+A/TsYcc6KR9aHkQ7r+3wVV+z2UhNwoutygVvSxGcXIsL0d01qVENlhAY5DRBrMXDRQSGu6dilr3100FNErMLpYmCYkgSuOc=
Received: by 10.115.90.1 with SMTP id s1mr360938wal.1181129172385;
        Wed, 06 Jun 2007 04:26:12 -0700 (PDT)
Received: by 10.141.71.4 with HTTP; Wed, 6 Jun 2007 04:26:12 -0700 (PDT)
Message-ID: <73ddeb6c0706060426m7e74feeeqef57af04736b8bc4@mail.gmail.com>
Date: Wed, 6 Jun 2007 08:26:12 -0300
From: "Adriano Ferreira" <a.r.ferreira@gmail.com>
To: jeevs <jeevan.ingale@gmail.com>, beginners@perl.org
Subject: Re: Exporter query
In-Reply-To: <1181123084.538291.127650@g37g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181123084.538291.127650@g37g2000prf.googlegroups.com>

On 6/6/07, jeevs <jeevan.ingale@gmail.com> wrote:
> #!c:/perl/bin/perl.exe
> #Calculator.pm
>
> package calc;
>
> use strict;
> use warnings;
> use Exporter;
>
> our @ISA = qw(Exporter);
> our @EXPORT = qw(add);
>
> sub add
> {
>         my ($num1,$num2) = @_;
>     $num1+$num2;
> }
>
> 1;
>
> >>>>>>>>>>>>>>>>>>>
>
> #!c:/perl/bin/perl.exe
> #adcalculator.pl
>
> use strict;
> use warnings;
> use Calculator;
>
> my $addn = add(1,9);
> print $addn;
>
> >>>>>>>>>>>>>>
>
> it says
> undefined subroutine &main::add called at adcalculator,pl line 8.
>
>
> Where am I going wrong???

Your sin was these two lines:

> #Calculator.pm
> package calc;

You stuffed the package calc into a file named "Calculator.pm". When you say

    use Calculator;

you do

    BEGIN {
         require Calculator; # which loads Calculator.pm
         Calculator->import; # if the Calculator package has an import sub
    }

The &add sub is exported by the calc package, which inherited the
import from Exporter to get these exporting abilities. But this import
was never called.

      require Calculator;
      calc->import;

would work. But what you probably want is to use

      package Calculator; # in your Calculator.pm file

Cheers,
Adriano Ferreira

P.S. As a stylistical note, usually you provide exporting capabilities
to a module via Exporter with code like that:

       require Exporter; # no need to use
       our @ISA qw(Exporter);

or

        use base qw(Exporter);

>
> --
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
>
>
>

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

kLxV0mca<0s
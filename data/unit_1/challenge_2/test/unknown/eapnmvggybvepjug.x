From beginners-return-92904-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 10:23:56 2007
Return-Path: <beginners-return-92904-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TENsL9026910
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 10:23:55 -0400
Received: (qmail 12052 invoked by uid 514); 29 Jun 2007 14:23:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12042 invoked from network); 29 Jun 2007 14:23:45 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 14:23:45 -0000
Received: (qmail 32217 invoked by uid 225); 29 Jun 2007 14:23:45 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32205 invoked by alias); 29 Jun 2007 14:23:44 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.182 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.182)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 07:23:40 -0700
Received: by wa-out-1112.google.com with SMTP id v27so766518wah
        for <beginners@perl.org>; Fri, 29 Jun 2007 07:23:36 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=KDbz7TA1GSVMnKOCv9sxHOUzjCFyM6epWoJuDv0nXZtBiGLCCcLG9a/EKUrvkeZTODNfmNhXHYyM1eInChg+pJ2v2eN9tlkgDz4MZuXoPWme2qAf7PZurCjv98TiPCdtnpTPpARZZTg85csedkQDwpdEOPYfVdb4rd45/WDKTaE=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=S73eRpQOwqMbVGYtr7DHsoqrMrEg8DM8Ndv/gtrIb1sol1xovZQFmgV51rFGd2rJ/zChq5TAacYu5JST8NozMzK+29lBNugenq/JCkSVUQvh0ykiuHoR6pO5IH+xxszrawOr1lZV9baQGR1e+FQBeCZeSLqM15AGbLKXBmbUf9s=
Received: by 10.114.146.1 with SMTP id t1mr2674463wad.1183127015816;
        Fri, 29 Jun 2007 07:23:35 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 29 Jun 2007 07:23:35 -0700 (PDT)
Message-ID: <58ce48dc0706290723q36092d8aj365a66ca117c166d@mail.gmail.com>
Date: Fri, 29 Jun 2007 10:23:35 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Alex Jamestin" <alex.jamestin@gmail.com>
Subject: Re: How can i make a perl program lauch another perl program that takes options
Cc: "Perl Beginners" <beginners@perl.org>
In-Reply-To: <36d2ae560706290717i508af525te4a66ecdb4b9c2c5@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
	 <58ce48dc0706290604n6df3210cj7bbeecf5b7ec3587@mail.gmail.com>
	 <36d2ae560706290610k54a2d56dx880bdd47f9e7aa8f@mail.gmail.com>
	 <36d2ae560706290621u79eb2467t6755cc3048f2024@mail.gmail.com>
	 <58ce48dc0706290702v27dc96e1ge4a5448b27902570@mail.gmail.com>
	 <36d2ae560706290717i508af525te4a66ecdb4b9c2c5@mail.gmail.com>

On 6/29/07, Alex Jamestin <alex.jamestin@gmail.com> wrote:
> Thanks Chas,
> This does work. So there's no problem with perl itself. I guess now,
> i'll have to take a look at vplan_all.pl.
>
> The sucky thing is that road is too much of pain to go down. (Though
> now i don't think ill be able to sleep without thinking about this :))
> Oh well, Bug begets bug :)
>
> Anyways,
> thx again for helping out
> Alex
>

I don't think the problem is in vplan_all.pl.  I looked back at your
original code and noticed a bug:
         system( "perl vplan_all.pl 5.6 24.0")
           or die "Couldn't run the vplan_all.pl script: $!\n";

This should be

         system( "perl vplan_all.pl 5.6 24.0") == 0
           or die "Couldn't run the vplan_all.pl script: $!\n";

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




mo>bl
iHuQu h ek
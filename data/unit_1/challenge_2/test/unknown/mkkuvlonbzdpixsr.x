From beginners-return-92910-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 18:42:26 2007
Return-Path: <beginners-return-92910-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TMgPL9031940
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 18:42:26 -0400
Received: (qmail 16311 invoked by uid 514); 29 Jun 2007 22:42:17 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 8495 invoked from network); 29 Jun 2007 13:11:09 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of alex.jamestin@gmail.com designates 209.85.132.240 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=nymklQQw8sWoavOCznQN8ouuMbtC5Dt9kz/3eD0s5YN6nTnUCHVCoxRrBx05tyfwMDBDLZmm4M+J5i8f8hkBs24eBWN8+9TlCKvHAWWghoqaKaKMEuT+pQywm0EZAox1dtNEKzr47S+q149pXSKiZR9HX3FNAyV6MjSXiSEDwPg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=UEr5U3Ud+4Z7m8jnTdLul1KjPiERXThIlM/h7cS6IPF6crmmG+GjCAfPapcv3/jnLYQyYxuWB2hAW8TfBG/gbygzXV6VMZA801OjbfYUzMZEX1k5+80rLU7IGZeKsExd8USUFksA/mA2fHMTE5l932LEsxGvV/AYwrQMv+kxYSs=
Message-ID: <36d2ae560706290610k54a2d56dx880bdd47f9e7aa8f@mail.gmail.com>
Date: Fri, 29 Jun 2007 18:40:59 +0530
From: "Alex Jamestin" <alex.jamestin@gmail.com>
To: "Chas Owens" <chas.owens@gmail.com>
Subject: Re: How can i make a perl program lauch another perl program that takes options
Cc: beginners@perl.org
In-Reply-To: <58ce48dc0706290604n6df3210cj7bbeecf5b7ec3587@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
	 <58ce48dc0706290604n6df3210cj7bbeecf5b7ec3587@mail.gmail.com>

Well, i tried both the options -

> system("perl vplan_all.pl", "5.6",  "24.0") == 0
>     or die "blah";
>
> or
>
> system( "perl", "vplan_all.pl",  "5.6",  "24.0") == 0
>     or die "blah";

I think when perl -> shell -> perl . Here perl doesn't seem to
understand that vplan_all.pl is the script name and 5.6 and 24.0 are
options to be passed.

The exact same text ie. perl vplan_all.pl 5.6 21.0 works fine when i
just run it from the command line. Confusing! :\


On 6/29/07, Chas Owens <chas.owens@gmail.com> wrote:
> On 6/28/07, alex.jamestin+usenet@gmail.com <alex.jamestin@gmail.com> wrote:
> snip
> > I've tried bypassing the shell [ system(xxx,xxx,xx)] but that doesn't
> > seem to help.
> snip
>
> Hmm, what OS are you using?  And by system(xxx,xxx,xx) do you mean
>
> system("perl vplan_all.pl", "5.6",  "24.0") == 0
>     or die "blah";
>
> or
>
> system( "perl", "vplan_all.pl",  "5.6",  "24.0") == 0
>     or die "blah";
>

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

g3t" osoUu 
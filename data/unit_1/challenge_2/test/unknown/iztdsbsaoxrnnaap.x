From beginners-return-92903-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 10:02:28 2007
Return-Path: <beginners-return-92903-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TE2RL9026703
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 10:02:28 -0400
Received: (qmail 2799 invoked by uid 514); 29 Jun 2007 14:02:19 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2786 invoked from network); 29 Jun 2007 14:02:18 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 14:02:18 -0000
Received: (qmail 18326 invoked by uid 225); 29 Jun 2007 14:02:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18319 invoked by alias); 29 Jun 2007 14:02:16 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.237 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.237)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 07:02:10 -0700
Received: by nz-out-0506.google.com with SMTP id v1so147209nzb
        for <beginners@perl.org>; Fri, 29 Jun 2007 07:02:05 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mtpsOAcs4UA3cfEuMi38hdgUvBeaDV3WWTiH1F4y5D50b66CgkV2MeOFBXLnM/wn824p4XtGDrQ4NAEBwexkM5oHGEV/neSaERz7lt6UpzulDxCaBxq/DpzX4Af371hOq0nTOKp+s0yMh4omc3oaWVZ2A3ehbbdNeFqvgp3VEfs=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=GXDxAtH8R7nfFfJbbWn/MryBTb06eCs084pypP1CzhgZ5HhmSAecdsE5IKjRsmsmNAp/gbN4/K8/OHC5xnOqSoTFJtIUMS5pPxlv1i6RVxFPeHeoP57LDSgCQ45yrouO+MadALpRIrVPi/SdsoCZ5KLEg+XIuqzaJNb+DkAOWl0=
Received: by 10.114.196.1 with SMTP id t1mr2626504waf.1183125724995;
        Fri, 29 Jun 2007 07:02:04 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 29 Jun 2007 07:02:04 -0700 (PDT)
Message-ID: <58ce48dc0706290702v27dc96e1ge4a5448b27902570@mail.gmail.com>
Date: Fri, 29 Jun 2007 10:02:04 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Alex Jamestin" <alex.jamestin@gmail.com>,
   "Perl Beginners" <beginners@perl.org>
Subject: Re: How can i make a perl program lauch another perl program that takes options
In-Reply-To: <36d2ae560706290621u79eb2467t6755cc3048f2024@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183035670.823146.300110@w5g2000hsg.googlegroups.com>
	 <58ce48dc0706290604n6df3210cj7bbeecf5b7ec3587@mail.gmail.com>
	 <36d2ae560706290610k54a2d56dx880bdd47f9e7aa8f@mail.gmail.com>
	 <36d2ae560706290621u79eb2467t6755cc3048f2024@mail.gmail.com>

On 6/29/07, Alex Jamestin <alex.jamestin@gmail.com> wrote:
> Sorry forgot about that.. I'm running it on FreeBSD/i386 accessed via.
> a terminal prog.

I have a FreeBSD box handy, but I cannot reproduce your error.  Do the
two scripts below work for you?

/home/cowens>uname -smr
FreeBSD 4.11-STABLE i386
/home/cowens>cat t.pl
#!/usr/bin/perl

system("perl f.pl foo bar baz") == 0
    or die "perl blew up: $!";
/home/cowens>cat f.pl
#!/usr/bin/perl -l

print map { "[$_] " } @ARGV;
/home/cowens>perl t.pl
[foo] [bar] [baz]

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

Oeh9s3ct1a
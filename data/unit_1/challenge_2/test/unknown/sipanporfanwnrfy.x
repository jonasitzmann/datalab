From beginners-return-92823-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 21:24:11 2007
Return-Path: <beginners-return-92823-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5S1OAL9003196
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 21:24:11 -0400
Received: (qmail 13830 invoked by uid 514); 28 Jun 2007 01:24:04 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13790 invoked from network); 28 Jun 2007 01:24:03 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 01:24:03 -0000
Received: (qmail 18674 invoked by uid 225); 28 Jun 2007 01:24:03 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18668 invoked by alias); 28 Jun 2007 01:24:01 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 64.233.184.235 as permitted sender)
Received: from wr-out-0506.google.com (HELO wr-out-0506.google.com) (64.233.184.235)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 18:23:56 -0700
Received: by wr-out-0506.google.com with SMTP id 68so338027wra
        for <beginners@perl.org>; Wed, 27 Jun 2007 18:23:51 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=s+DanxqeLCbqRlCPZg7uE+XIWhjy5Su9XAAE4l60yX69boUcLO6ublpwqCUn3nIMn3oCK/2sSwuyDl8+eHuu25DNvQGmejZtSLKh6gF/Ea6sZRF1VjiTkIMr753XCYzIW6r/989ykymQ+gCvIZYKth0ApBzgbhZFEQqw0ENs2js=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=TcrbkL5RejoDeoNKdYqnNRSEbc2WY/1QEoJBFNZmK4+rCIwST1dMZEarmL/ruWwbFJWNmJ9E+UnJyFVmm14cifRo6sHIv8fGoLdN02UmCGRI+m/fbq+Hejx1IETkw05mICywti9KyOojpdRESRfdWT+wOLuifoHSwqPx20QeDW4=
Received: by 10.90.25.3 with SMTP id 3mr1278556agy.1182993831847;
        Wed, 27 Jun 2007 18:23:51 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Wed, 27 Jun 2007 18:23:51 -0700 (PDT)
Message-ID: <31086b240706271823g546572e0pec3918273efcdd99@mail.gmail.com>
Date: Wed, 27 Jun 2007 18:23:51 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Dharshana Eswaran" <dharshana.ve@gmail.com>
Subject: Re: String Manipulation
Cc: "Perl Beginners" <beginners@perl.org>
In-Reply-To: <9f91e0840706271810y641b8cd2y25d3756c51224c03@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <9f91e0840706271220q2566504fq6042ad20af74fad6@mail.gmail.com>
	 <31086b240706271234i2eea880ey5da3277e01406002@mail.gmail.com>
	 <9f91e0840706271810y641b8cd2y25d3756c51224c03@mail.gmail.com>
X-Google-Sender-Auth: 4ef8891821f6dad3

On 6/27/07, Dharshana Eswaran <dharshana.ve@gmail.com> wrote:

> I am restricted from using modules and i am unable to come up
> with a regex or regexes to do this job.

So, the Pointy-Haired Boss won't let you use any module that didn't
come with Perl?

Even if you can't use Parse::RecDescent in your final program, you can
still use it to get the job done. If something resembling Chas Owens's
solution works, you can turn a grammar into a module by the means
described under "Precompiling parsers". Then you can pull the Perl
code out of that module, and the PHB never has to know you didn't
write it yourself.

    http://search.cpan.org/dist/Parse-RecDescent/lib/Parse/RecDescent.pod#Precompiling_parsers

Cheers!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

tC:sIg emxe
From beginners-return-92485-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 01:02:01 2007
Return-Path: <beginners-return-92485-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5G51xL9010253
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 01:01:59 -0400
Received: (qmail 21227 invoked by uid 514); 16 Jun 2007 05:01:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 21218 invoked from network); 16 Jun 2007 05:01:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 16 Jun 2007 05:01:53 -0000
Received: (qmail 8506 invoked by uid 225); 16 Jun 2007 05:01:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8490 invoked by alias); 16 Jun 2007 05:01:51 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.225 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.225)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 22:01:49 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1159773wxc
        for <beginners@perl.org>; Fri, 15 Jun 2007 22:01:45 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Brv9lgvqxeMhZbAqdfTWDHEpdXVH/tnh8nbqpUKRYnN2wOwSAu6uS79tQx8Mpm3pXzJanGblu7L+JZac735bzSXUjrIPTYse+wyYy37Q6vDwDsILRz+RaflWrve3mMfWw3G9yfZtcpy5J5kBEO7xZ8/InsDAQL7/7tYSQp1vajU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=rx5r/YJ3xITO4QJonXb7sVSvpVVy8YzlU+jiO5Lrve9//cxfC5JEAB9AUtG2iNMBj1ifYpNVeJvWdZB9c84ozcSZ3/9nDJ6NpZ//CET0GbEKrkJSIcrYQZ9KIfJwD69GYN1Rkgk/2BHV0ffTe7DiBiPpVczPvVbJkJTslw9aDsU=
Received: by 10.90.89.5 with SMTP id m5mr3238846agb.1181970105222;
        Fri, 15 Jun 2007 22:01:45 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Fri, 15 Jun 2007 22:01:45 -0700 (PDT)
Message-ID: <31086b240706152201p1d07aee5v37f847f8e9431cd0@mail.gmail.com>
Date: Fri, 15 Jun 2007 22:01:45 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: sivasakthi <msivasakthi@gmail.com>
Subject: Re: Comparing the Perl encrypted files
Cc: beginners@perl.org
In-Reply-To: <1181966034.2496.1.camel@sim-co.kovaiteam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181903790.3743.3.camel@sim-co.kovaiteam.com>
	 <46729A8D.2868.B034110@Jenda.Krynicky.cz>
	 <1181909217.3743.16.camel@sim-co.kovaiteam.com>
	 <58ce48dc0706150729h658e70ebi5721f99fa17d956e@mail.gmail.com>
	 <1181966034.2496.1.camel@sim-co.kovaiteam.com>
X-Google-Sender-Auth: 32287b68df3d6744

On 6/15/07, sivasakthi <msivasakthi@gmail.com> wrote:

> Yes..i need  to compare the contents of  two binary files..

Have you checked on CPAN? I found this:

    http://search.cpan.org/~cwest/ppt-0.14/bin/cmp

Hope this helps!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

f*t5d<kA
From beginners-return-92703-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 13:31:18 2007
Return-Path: <beginners-return-92703-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5NHVHL9021633
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 13:31:18 -0400
Received: (qmail 1578 invoked by uid 514); 23 Jun 2007 17:31:10 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 1568 invoked from network); 23 Jun 2007 17:31:09 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 23 Jun 2007 17:31:09 -0000
Received: (qmail 21085 invoked by uid 225); 23 Jun 2007 17:31:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21078 invoked by alias); 23 Jun 2007 17:31:09 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.183 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 23 Jun 2007 10:31:07 -0700
Received: by wa-out-1112.google.com with SMTP id v27so1150119wah
        for <beginners@perl.org>; Sat, 23 Jun 2007 10:31:03 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=bcaE8AZdp54MZk4W2RkPrMRcx34xjAuUy/78rwExJWvk+R6VpsNUhmRaBZj941+qIYyGz+SPCbmh//fizc6XR55p/zOJHfQW1tGz+ToRG00EitUhOZhet786XSLEfl7+TsdtIxQr5Noi+f1pdWGjGx0u6Gi1ZCOe+LCoQDEAPbA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=uRAI09vjHZDHNWXNpxqB6apz7olqHUZYTSJ4ly/zFsd06iGYbsqHBzjFP/YAtUoIPDcRxS3dFSRjQRbnaA4i3xWgjtjXhd2Bm0D/2KHhFTwMxaCsrThFzaCgIs/Zw/OJwfyYFe5QOImiSbyiTqMWDmbRPzPpxp2mPJrB/GGFHek=
Received: by 10.114.121.1 with SMTP id t1mr3985790wac.1182619863019;
        Sat, 23 Jun 2007 10:31:03 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Sat, 23 Jun 2007 10:31:02 -0700 (PDT)
Message-ID: <58ce48dc0706231031r5d9e9639te7032ad00e8ec8a0@mail.gmail.com>
Date: Sat, 23 Jun 2007 13:31:02 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: howa <howachen@gmail.com>
Subject: Re: Compile perl into binary code for speed increase?
Cc: beginners@perl.org
In-Reply-To: <1182596649.400008.201370@e9g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182596649.400008.201370@e9g2000prf.googlegroups.com>

On 6/23/07, howa <howachen@gmail.com> wrote:
> Hello,
>
> Are there any method to compile the perl script for performance
> increase, sth similar to mod_perl?
>
> but my script is run from command line...
>
> thanks.

Only in startup costs (and over the course of a long running program
these are minimal).  Take a look at PAR, PAR::Packer, and various B::*
modules.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

taxdMn
lpt nda
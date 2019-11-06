From beginners-return-92704-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 13:43:27 2007
Return-Path: <beginners-return-92704-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5NHhOL9021716
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 13:43:25 -0400
Received: (qmail 7226 invoked by uid 514); 23 Jun 2007 17:43:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7217 invoked from network); 23 Jun 2007 17:43:18 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 23 Jun 2007 17:43:18 -0000
Received: (qmail 26653 invoked by uid 225); 23 Jun 2007 17:43:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26632 invoked by alias); 23 Jun 2007 17:43:16 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.237 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.237)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 23 Jun 2007 10:43:12 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1164519wxc
        for <beginners@perl.org>; Sat, 23 Jun 2007 10:43:08 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=fL15+6B2g0xKpaJzoCbLeP7I+N9YAJv+a1uWI7Fgqj6LQiG+BlkYrND5p/obiGAxkBgvq/u99U71fE7v9in23Ez5iwlHPfeEOs5e/D45DKQrxiReOAmDv/mxHha8+xRs++BCn4nL08bK7vYpn3UnFK/61zfyEwfg0JIdfTNQLYw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=NQizyokAQzQ3amnv8zZlV3IDK8+Xi4wgozoDcwI6awr93vs8xgMgolPGgGxKc8hRCL1g4gIc7wTqMR9hpGVzKURbwcIAIhEb1b+v15YH+V4DGWrGugQKiGF42v8KPAaCaYwVgcwc+H9HHq+GXWgbEIq6GtxB5WXiVroXn07WVsM=
Received: by 10.90.83.14 with SMTP id g14mr3382530agb.1182620588200;
        Sat, 23 Jun 2007 10:43:08 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Sat, 23 Jun 2007 10:43:08 -0700 (PDT)
Message-ID: <31086b240706231043u2a97c165xc9448296b3096d91@mail.gmail.com>
Date: Sat, 23 Jun 2007 10:43:08 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: howa <howachen@gmail.com>
Subject: Re: Compile perl into binary code for speed increase?
Cc: beginners@perl.org
In-Reply-To: <1182596649.400008.201370@e9g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182596649.400008.201370@e9g2000prf.googlegroups.com>
X-Google-Sender-Auth: 71ab1a3357f9120d

On 6/23/07, howa <howachen@gmail.com> wrote:

> Are there any method to compile the perl script for performance
> increase,

Certainly, dozens. Fortunately for everyone involved, all of these
methods are applied automatically every time you run your program, so
every Perl program always runs at top speed.

> sth similar to mod_perl?
>
> but my script is run from command line...

You're probably noticing how mod_perl can keep a program running, so
that there's no start-up overhead for each new request. But something
that's run from the command line _is_ a new program, so it's going to
have _some_ start-up overhead. But since your actual /usr/bin/perl
binary is probably already loaded into memory for some other task on
your system, a Perl program's start-up overhead is typically less than
a custom binary's. (That's right; if you translated your Perl code to
C and compiled it, your start-up overhead would probably get worse.)

But before you start worrying about how bad start-up overhead is,
there are lots of other reasons that your program may seem slow;
fixing just one of them at random is like painting racing stripes onto
the shopping trolley in order to get the groceries faster.

Start by getting your program to work properly; don't optimize before
you know what you're doing. But when the program is done, just slow,
you need to profile it know where to start optimizing. Here's an
article to get you started:

    http://www.perl.com/pub/a/2004/06/25/profiling.html

Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

9fr m
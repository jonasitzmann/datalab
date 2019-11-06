From beginners-return-92672-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:52:17 2007
Return-Path: <beginners-return-92672-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMqGL9010221
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:52:17 -0400
Received: (qmail 22138 invoked by uid 514); 22 Jun 2007 17:48:29 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 22129 invoked from network); 22 Jun 2007 17:48:29 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 17:48:29 -0000
Received: (qmail 19737 invoked by uid 225); 22 Jun 2007 17:48:28 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19732 invoked by alias); 22 Jun 2007 17:48:28 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.234 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.234)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 10:48:25 -0700
Received: by nz-out-0506.google.com with SMTP id x7so980776nzc
        for <beginners@perl.org>; Fri, 22 Jun 2007 10:48:21 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gNsEIL4Zbz/9kiKwbsPxVozAr5dGKhBJXfoyKAeDZ0+TwB6lj7n60NJfyUoH+eisBlw40AFtQADmnyEyt7tOcze0Fh8vAgYvFVGM/1M38w8qs7/+ywiYXotwgZRE2EUnH7dpx7v3QXUdTyeS36acU5aNUIvpPfO4kyVoVIjIv4g=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=N7Rjd8v1PKnpEXEcMIJ14A5337GLrKSz42D791IrHdsIDSbSR8QLcBlsyTUnWB+FFOD/Dsp7qauW8EtxiGe3uZ72T0yHDKX05B5SoJIRs5TuKLroKDNZlPRYyb/BB2HWA6Eq+cJ71wOOEPntBBSJPCiiC4ihuoj4slFVY6fuL/w=
Received: by 10.115.90.1 with SMTP id s1mr3181622wal.1182534500639;
        Fri, 22 Jun 2007 10:48:20 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 22 Jun 2007 10:48:20 -0700 (PDT)
Message-ID: <58ce48dc0706221048n199d50d0ld11eaae9656a5a29@mail.gmail.com>
Date: Fri, 22 Jun 2007 13:48:20 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Ben Edwards" <funkytwig@gmail.com>
Subject: Re: Redirecting file handler to STDOUT (SOLVED)
Cc: "Paul Lalli" <mritty@gmail.com>, beginners@perl.org
In-Reply-To: <32b873ff0706221043k6928e2dao28d45e37c654b3f8@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <32b873ff0706221043k6928e2dao28d45e37c654b3f8@mail.gmail.com>

On 6/22/07, Ben Edwards <funkytwig@gmail.com> wrote:
> Cool, the * is by reference.
snip

It is a lot more complicated than that.  Typeglobs allow you access to
the symbol table.  You can do some really cool things like

*hw = sub { print "Hello, ", shift, "\n" };
hw("bork")

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

tJbkuCo<Sb5t
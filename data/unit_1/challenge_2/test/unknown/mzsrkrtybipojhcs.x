From beginners-return-93115-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 20:41:51 2007
Return-Path: <beginners-return-93115-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l660fnL9001006
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 20:41:50 -0400
Received: (qmail 20474 invoked by uid 514); 6 Jul 2007 00:41:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20465 invoked from network); 6 Jul 2007 00:41:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 6 Jul 2007 00:41:41 -0000
Received: (qmail 31043 invoked by uid 225); 6 Jul 2007 00:41:40 -0000
Delivered-To: beginners@perl.org
Received: (qmail 31037 invoked by alias); 6 Jul 2007 00:41:40 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 64.233.184.224 as permitted sender)
Received: from wr-out-0506.google.com (HELO wr-out-0506.google.com) (64.233.184.224)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 05 Jul 2007 17:41:36 -0700
Received: by wr-out-0506.google.com with SMTP id q50so52245wrq
        for <beginners@perl.org>; Thu, 05 Jul 2007 17:41:32 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Qr5qaSmsQzz8z92cKmzBZe1Yj7fhMbht5GWSVv0YtGEQ2LNDWV2W/CbRPtrIEMWWG5k2REkUo7zP30x+hJ0TOd9knYkN65FZ2+mb6gk+YLDxCX9r0Xtc9Gp8fUJ4hdsFUIksw3L1wuNk2nHWzuWXEylhTxA8ZIOk1PDwSF6vgc0=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=IvdVMFe7lg4slE4JPZ+siSgfVF5fPPG7IqDYm16FTf0uhEp/JdGm+3zxr1POVL5G56TnGd7AY7Oa+wda+SPuQiVrLdUF//4E4Xq9yrxkNpBvfOSYy8KadrGzzwpv1JJs54AlQFEoab4yBisQfzUdVKpiSEgC1Bxc+y9+i/bQ2Ag=
Received: by 10.90.89.5 with SMTP id m5mr77560agb.1183682492310;
        Thu, 05 Jul 2007 17:41:32 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Thu, 5 Jul 2007 17:41:32 -0700 (PDT)
Message-ID: <31086b240707051741x3169887ag6d63672230bc48b@mail.gmail.com>
Date: Thu, 5 Jul 2007 17:41:32 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: Ray <olson.ray@gmail.com>
Subject: Re: GetOptions with dynamic set of options
Cc: beginners@perl.org
In-Reply-To: <1183669511.510741.136410@z28g2000prd.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183669511.510741.136410@z28g2000prd.googlegroups.com>
X-Google-Sender-Auth: c5fa94d52f779466

On 7/5/07, Ray <olson.ray@gmail.com> wrote:

> I'm trying to use this feature of GetOptions:
>
> my %h = ();
> GetOptions (\%h, 'length=i');       # will store in $h{length}

> sub ParseArgs {
>         GetOptions(%OptList) or Getopt::Long::HelpMessage(2);
> }

If that's the feature you're trying to use, why are you trying to use
it like that? It seems to want a reference to a hash and a string, but
you give it a hash? Try giving it a reference to a hash and a string,
maybe something like this:

    GetOptions($target_hash_ref, "$item_name=$letter") or ...

Hope this helps!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

Fl0i0
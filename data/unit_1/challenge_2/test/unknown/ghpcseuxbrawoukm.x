From beginners-return-92336-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 19:44:08 2007
Return-Path: <beginners-return-92336-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CNi7L9000873
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 19:44:08 -0400
Received: (qmail 7012 invoked by uid 514); 12 Jun 2007 23:44:01 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6998 invoked from network); 12 Jun 2007 23:44:00 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 23:44:00 -0000
Received: (qmail 8571 invoked by uid 225); 12 Jun 2007 23:44:00 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8566 invoked by alias); 12 Jun 2007 23:43:59 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.225 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.225)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 16:43:58 -0700
Received: by nz-out-0506.google.com with SMTP id x7so22890nzc
        for <beginners@perl.org>; Tue, 12 Jun 2007 16:43:53 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=R7RgwXXBhjQOHYcHtItBzWT0frR/DgUHU9fgBiJsZsFJt3g1z2TXURtkmnU3/504HWlu4hgNg/has+dkemQLrhr2E5h/E01GevtWtQr5Bk0oYgHifU2hBOjwoS1Krctnm71q5sSQPEyFsV6qwecSoRsb8yEfJzt5MOphuqpv6Gw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=dLwR3tU7BtJT/B3yX6L3NfBp7z8N6IA/aQgD9e5zwK/58pJ0ElL9tOslvbnwZSKrUYchToPzICQ6VwIvgfB1/xtxJ14l/z3a/jr08xQBV5Q4tdMMUcPs3ZxIgLSCgfZYt9noyXyrzLf85iqaVWKcwzYq4dXzjNqT0IC3xm2EafI=
Received: by 10.115.32.1 with SMTP id k1mr7485waj.1181691833615;
        Tue, 12 Jun 2007 16:43:53 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Tue, 12 Jun 2007 16:43:53 -0700 (PDT)
Message-ID: <58ce48dc0706121643t78401b5cle1d6e522ac6ec229@mail.gmail.com>
Date: Tue, 12 Jun 2007 19:43:53 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: lakshmi.sailaja@supersolution.com
Subject: Re: Prompt in Net::Telnet
Cc: beginners@perl.org
In-Reply-To: <58ce48dc0706121640j9157250t4bced2b3e6a3952f@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <EIEIIAMKDIBPECOEKDIKMEMKCDAA.lakshmi.sailaja@supersolution.com>
	 <58ce48dc0706121640j9157250t4bced2b3e6a3952f@mail.gmail.com>

On 6/12/07, Chas Owens <chas.owens@gmail.com> wrote:
snip
> If you are trying to connect to the "telnet" server that comes with
> Microsoft OSes then you are SOL.  If you are trying to connect to a
> different telnet server, then please provide the name of the server
> and operating system it is running under so we can duplicate your
> environment.
snip

Oh, yeah, you probably should bother installing a new telnet server.
Telnet is not a secure protocol and should not be used for new code.
Install OpenSSH instead.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

1cs/X
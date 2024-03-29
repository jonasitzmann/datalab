From beginners-return-92726-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 13:59:52 2007
Return-Path: <beginners-return-92726-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5OHxnL9015501
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 13:59:50 -0400
Received: (qmail 16979 invoked by uid 514); 24 Jun 2007 17:59:42 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16970 invoked from network); 24 Jun 2007 17:59:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 24 Jun 2007 17:59:41 -0000
Received: (qmail 32741 invoked by uid 225); 24 Jun 2007 17:59:41 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32728 invoked by alias); 24 Jun 2007 17:59:40 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.226 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.226)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 10:59:38 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1330119wxc
        for <beginners@perl.org>; Sun, 24 Jun 2007 10:59:34 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=DmtAdWLS8tdv+BGjfVC/P1ia4kx5XIEtkTHtlIZ3F1fIvfbhpNB4DnI6EDmrlVnp0Tctevpd8uq+p6vGJ3SaLAPCcgL0wO8PmD7pCGZeEOeKmZtCwxekf2sLlzjomXwyIiDjqrmYYOniudgCZ6q07AgQRvcw+RWOJxsv/hC12pA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=M1c2cJq/39QQ/EatTOLQ/k6TtWs5YDsCZg4BwlCklcHqZHlk0HmfKX27plGLx1aJFVjLK6OQNYgNc+6kgLrRUKF78orjISH711jhu0cK/cdOvS4wczLq/T80hC2OqaC3Lxk+fJCpjuu8sqqt/n3aungZEjGvnEbQ1IIXxNVVhXI=
Received: by 10.90.79.6 with SMTP id c6mr3657199agb.1182707974658;
        Sun, 24 Jun 2007 10:59:34 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Sun, 24 Jun 2007 10:59:34 -0700 (PDT)
Message-ID: <31086b240706241059t412c5c3ay679ee1be8a1ed068@mail.gmail.com>
Date: Sun, 24 Jun 2007 10:59:34 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Jeni Zundel" <jenizundel@mac.com>
Subject: Re: Perl vs. Java for string manipulation & regex
Cc: beginners@perl.org
In-Reply-To: <27F34C54-9C8F-4785-AA31-E2FC28E0961A@mac.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <15a372ce0706240730y70e65894pc545a2f68c61a3c@mail.gmail.com>
	 <31086b240706240854i29ecdaf7ke3b8c4939ee0c4b2@mail.gmail.com>
	 <27F34C54-9C8F-4785-AA31-E2FC28E0961A@mac.com>
X-Google-Sender-Auth: c6d5d8c21632e040

On 6/24/07, Jeni Zundel <jenizundel@mac.com> wrote:

> 1.  Is the java significantly slower than the perl script because I
> suck at writing efficient java code or because perl is just really
> that much better at string manipulation?

Yes.

If it's important to determine how much of your slowdown is due to a
poor algorithm, how much due to a poor implementation, and how much
due a poorly-designed JVM, you could spend a few weeks coding and
benchmarking and testing, of course.

Or you could spend an hour or two trying to convince your manager that
it's sufficient to have a fast Perl program on the job today, because
you have a slow Java program on standby in case we all forget Perl
tomorrow.

> 2.  Does anyone know if the java would be significantly improved if I
> make use of regex instead of using substring functions?

Why do you ask this question in a Perl forum? Yes, Perl is great at
string manipulation; but you have your Perl program, you're happy with
it, it's your Java code that you're wondering about improving. If you
ask the Java people, they can give you better answers about improving
your Java code. And they're especially eager when they hear that Java
needs help to compete against Perl.

Cheers!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

9tKu
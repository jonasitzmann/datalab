From beginners-return-92506-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 10:28:19 2007
Return-Path: <beginners-return-92506-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HESHL9007785
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 10:28:18 -0400
Received: (qmail 25224 invoked by uid 514); 17 Jun 2007 14:28:11 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25215 invoked from network); 17 Jun 2007 14:28:11 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 17 Jun 2007 14:28:11 -0000
Received: (qmail 30439 invoked by uid 225); 17 Jun 2007 14:28:10 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30431 invoked by alias); 17 Jun 2007 14:28:10 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.224 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.224)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 17 Jun 2007 07:28:07 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1443525wxc
        for <beginners@perl.org>; Sun, 17 Jun 2007 07:28:03 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=oDRld967zzxDaPBNGFs+UKWz5UBbGZeKi2Ow95GG8cgRxwyQH78IhQGvMfMwKeQWqsBZDX0oLJ6mQMMU82ZSz+uMFzqDTBIM/pfEsVIcu/XYx3EoFgcSzxz/ViWknQYYzOROY4xt5mPyXOi13Meb3DwqVap66h/p5h14HUO8NWs=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=oucOei3J8wvzcZZIJz0tPypNTLVcqI0cchSAk6hluKI4m/ZQ7hOtiWdJCVXivkwszQdqVZdO1L5HD2dG2K55C5J9nndthfxa0yyPx4xNO+ixPYHGtpF2g8LYPaY4+IA/Y471H8Gwh0l08sLy4pj2CvnvPpdaSJljwYKCayTb41Q=
Received: by 10.90.119.15 with SMTP id r15mr3336143agc.1182090483148;
        Sun, 17 Jun 2007 07:28:03 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Sun, 17 Jun 2007 07:28:03 -0700 (PDT)
Message-ID: <31086b240706170728h3401ffcbi25c9a5bc3aa63c24@mail.gmail.com>
Date: Sun, 17 Jun 2007 07:28:03 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "shadkeene@hotmail.com" <shadkeene@hotmail.com>
Subject: Re: Unable to reference variable from one loop to another in same script
Cc: beginners@perl.org
In-Reply-To: <1182030373.892166.156720@o11g2000prd.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182030373.892166.156720@o11g2000prd.googlegroups.com>
X-Google-Sender-Auth: cb7739314956451c

On 6/16/07, shadkeene@hotmail.com <shadkeene@hotmail.com> wrote:

> The problem is that when I reference a variable in the second while
> loop that I initialized in the first while loop, the script doesn't
> recognize it.

You need to assign to a variable from an outer scope while executing
the inner scope. Try declaring your variable, with 'my', in the outer
scope. That is, the variable should be declared in the innermost scope
in which it will be needed; you've declared yours in too narrow a
scope.

> I tried to make it a global variable at the
> beginning by using "our @SLPdataSFO = ();" to make it a global
> variable, but no luck there.

You must have done something else wrong, since that should work. But a
'my' variable is a better choice than a global, generally.

Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

o"AY>Z
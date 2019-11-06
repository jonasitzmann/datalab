From beginners-return-92977-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 01:32:15 2007
Return-Path: <beginners-return-92977-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l635WEL9024125
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 01:32:14 -0400
Received: (qmail 29935 invoked by uid 514); 3 Jul 2007 05:32:05 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29926 invoked from network); 3 Jul 2007 05:32:05 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 05:32:05 -0000
Received: (qmail 7329 invoked by uid 225); 3 Jul 2007 05:32:05 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7325 invoked by alias); 3 Jul 2007 05:32:04 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.179 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.179)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 02 Jul 2007 22:32:03 -0700
Received: by wa-out-1112.google.com with SMTP id v27so2155194wah
        for <beginners@perl.org>; Mon, 02 Jul 2007 22:31:59 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gm0or+dagLhGyXSU2NPdA97EFXx/vtYTgD3VN6cTifrBWnbnI1UNGbo3Mo1ctkPn8Q9fWhxz5v+U+phkplSNpKLUfx+YNdXdOfgTb6RT4EQo5nt4HVVBATFR+mFm3FN0Nn1d23L1pNPY0zysIQbQOmxCRdiUxGnZNRVWX5mZ4cw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=HFZvVqQpR/hrTsu13Aq+UuxW0GMtRx94fMbPbgunvbpI+7t9hUvC9FsaqDpET5330+xoos8by3vzgBUAIST3fpoU7n67NZaEyvXstBYZ+xEVVUvdIvVy+yorR4qwxNjhg8BjpzUgm8VhY7tXVxrlx4/XpC1OJVzlIW+9u4gMxg4=
Received: by 10.114.53.1 with SMTP id b1mr5786664waa.1183440719532;
        Mon, 02 Jul 2007 22:31:59 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Mon, 2 Jul 2007 22:31:59 -0700 (PDT)
Message-ID: <58ce48dc0707022231i609ce386h6feaedb14d8b7642@mail.gmail.com>
Date: Tue, 3 Jul 2007 01:31:59 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Prabu Ayyappan" <prabu.ayyappan@yahoo.com>
Subject: Re: Conditional question
Cc: "Joseph L. Casale" <JCasale@activenetwerx.com>,
   "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <376276.44699.qm@web57113.mail.re3.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCC4@an-ex.ActiveNetwerx.int>
	 <376276.44699.qm@web57113.mail.re3.yahoo.com>

On 7/3/07, Prabu Ayyappan <prabu.ayyappan@yahoo.com> wrote:
> You can even do like this
>
> $var1 == 0  && $var2 == 1 ? print "hai" : print "bye";
snip

If you are going for succinctness, then try this

print !$var1 && $var2 ? "hai" : "bye";

But in general, you are better off using the longer forms as they are
more maintainable.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

,fd> e6a
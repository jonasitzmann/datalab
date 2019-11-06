From beginners-return-92375-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 19:54:39 2007
Return-Path: <beginners-return-92375-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DNscL9014033
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 19:54:38 -0400
Received: (qmail 2280 invoked by uid 514); 13 Jun 2007 23:54:33 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2271 invoked from network); 13 Jun 2007 23:54:33 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 23:54:33 -0000
Received: (qmail 29621 invoked by uid 225); 13 Jun 2007 23:54:33 -0000
Delivered-To: beginners@perl.org
Received: (qmail 29613 invoked by alias); 13 Jun 2007 23:54:32 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.181 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.181)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 16:54:29 -0700
Received: by wa-out-1112.google.com with SMTP id v27so465262wah
        for <beginners@perl.org>; Wed, 13 Jun 2007 16:54:25 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gA/zLIn2B++U+xOZsgzmzo1eicjlMiAfp6Tg6Ykid9ZRGtymC/xURAOCwaJqw0fqvEVmII7zwFBRtnxm9vJu/rFLgPoVR1vRZH1ANDxo0xdXZGcrJ7dsOJxkiJy13N1NxpEr4Usm77dgig2xA2RZzZ5OVLsT05wClMepJi2Ykes=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=RXMVAHQfPong08qG4Z9qzegrc+txSJ2yZXNkE4nZKayZWY2epeobhAsUMpX2bxT79sbGu8tOfMD9+nufmdXwXzL4kBH4ZEXSjcRKd8z2XXDg58WtdXv3N0Hpjvh4u4Dk5teo03uEWqmXv/HuhjYhWfLTBHE3+3cOgLeWw9T3bqA=
Received: by 10.115.79.1 with SMTP id g1mr1199457wal.1181778865760;
        Wed, 13 Jun 2007 16:54:25 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Wed, 13 Jun 2007 16:54:25 -0700 (PDT)
Message-ID: <58ce48dc0706131654i13744e6dr675f64f0a01112e1@mail.gmail.com>
Date: Wed, 13 Jun 2007 19:54:25 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "John W. Krahn" <krahnj@telus.net>
Subject: Re: Perl directory listing program
Cc: "Perl beginners" <beginners@perl.org>
In-Reply-To: <46707D99.7060304@telus.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181665584.263356.201200@i38g2000prf.googlegroups.com>
	 <20070613210242.18963.qmail@lists.develooper.com>
	 <46707D99.7060304@telus.net>

On 6/13/07, John W. Krahn <krahnj@telus.net> wrote:
> Dr.Ruud wrote:
> > sintral@gmail.com schreef:
> >
> >> I need a program that will list all of the files in a directory.
> >> Without any arguments the program will list only the files (not
> >> directories) in the current directory.  But I must have some
> >> command line options: [...]
> >
> > Might be a 1-liner with usage of IO::All.
>
> Go for it!!    :-)
snip

Okay,

perl -MIO::All -e '$,=$/;print @{io(pop or".")},""'

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

t=9IwCoHe:a
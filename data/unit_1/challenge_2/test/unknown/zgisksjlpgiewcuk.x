From beginners-return-92434-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 13:51:27 2007
Return-Path: <beginners-return-92434-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EHpQL9024758
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 13:51:27 -0400
Received: (qmail 8633 invoked by uid 514); 14 Jun 2007 17:51:21 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8624 invoked from network); 14 Jun 2007 17:51:20 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 17:51:20 -0000
Received: (qmail 25639 invoked by uid 225); 14 Jun 2007 17:51:20 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25625 invoked by alias); 14 Jun 2007 17:51:19 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.179 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.179)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 10:51:17 -0700
Received: by wa-out-1112.google.com with SMTP id v27so780562wah
        for <beginners@perl.org>; Thu, 14 Jun 2007 10:51:13 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=F5I3yx3GqTUMkSyts6D3As722GDIzlvgXzDLYl1U7mC/pmN+UYGf7xZ6LFfAFZ9B2hJnZdNbRVaCvM4z3znFGAr01UqChjrrNZPEIuLSjwtjF7GzvqTH9v7uznEENqaYnNSvEc8pTbWnK7pwtAFBah5L6ZskGz+KdytBy2B3Szg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=KYuxgqVvjZIxC8+2Fy6Ro0gmOFrFcoRhXRUWIw4sx6jhzconmywq6PSpg4XFSI+Jf3CjxbtTVLh5YkoKiT89RGcUuBxyOJGq4+QS0mtWwbjbuBWbJA+VCszFqd3glbeJ1903rcw0ShZsMH67bJt3/UtnbUyxstpnUbofIAFWVFk=
Received: by 10.115.60.1 with SMTP id n1mr2093557wak.1181843473536;
        Thu, 14 Jun 2007 10:51:13 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Thu, 14 Jun 2007 10:51:13 -0700 (PDT)
Message-ID: <58ce48dc0706141051g1fd8ff0ekf76e143e4d25ab22@mail.gmail.com>
Date: Thu, 14 Jun 2007 13:51:13 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "faceman28208@yahoo.com" <faceman28208@yahoo.com>
Subject: Re: 'Keys' Question
Cc: beginners@perl.org
In-Reply-To: <1181828018.359343.195520@d30g2000prg.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181763536.085667.274520@e26g2000pro.googlegroups.com>
	 <467149AF.6850.5DF6A15@Jenda.Krynicky.cz>
	 <1181828018.359343.195520@d30g2000prg.googlegroups.com>

On 6/14/07, faceman28208@yahoo.com <faceman28208@yahoo.com> wrote:
> On Jun 14, 7:59 am, J...@Krynicky.cz (Jenda Krynicky) wrote:
> > Most likely the second line should look like this:
> >
> >   @TablePreReq   = keys(%{$ConfigFile{InputDataFile}});
>
> This gets it to compile. I was a bit puzzled because this code is in
> production (apparently as is in the original) but it will not compile.
>
> Could the configuration of the file in question affect the compile at
> this point? Intuitively, it should not -- unless perl does something
> very different from what others do.

What version of Perl does the production machine have installed?

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

i 4e
 xg >
From beginners-return-92467-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 10:55:39 2007
Return-Path: <beginners-return-92467-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5FEtcL9003530
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 10:55:38 -0400
Received: (qmail 8941 invoked by uid 514); 15 Jun 2007 14:55:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8932 invoked from network); 15 Jun 2007 14:55:32 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 14:55:32 -0000
Received: (qmail 7399 invoked by uid 225); 15 Jun 2007 14:55:32 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7365 invoked by alias); 15 Jun 2007 14:55:31 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.224 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.224)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 07:55:28 -0700
Received: by nz-out-0506.google.com with SMTP id x7so972802nzc
        for <beginners@perl.org>; Fri, 15 Jun 2007 07:55:24 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=HIHIPGkcl4dMbtKcfHpavgCNeRodK2E6ftak+dfwZCqDI+hIlwci2tL/y+SDps4SGk6Q4JANPPGjD3I8a2Vd5nkCPmia2aKkBI7EbFRLwP/HF1lwSEBB3nlw3RvIdbhGT1PW+DOTIdBCEEZhVejrkVJyhx2Q3IREc7+Xkvade5s=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=LflAggdg0olccJKMRU1C4Qcq2oe7M58XoyfDcBJijafgdmhPOnlxr0vl7lucXXkBZQFK8BsbcSlHHfrieP8NyhEOGfpr29AOY9NXdMkKXGrXTxfXq8+rUBGgiNICHAsBaarB8RAcBvXF89789crqW+fg/3GZWK1vvJNdz5+u7aw=
Received: by 10.114.15.1 with SMTP id 1mr3132716wao.1181919324573;
        Fri, 15 Jun 2007 07:55:24 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Fri, 15 Jun 2007 07:55:24 -0700 (PDT)
Message-ID: <58ce48dc0706150755j6df18e0ch3506228bff5b55d5@mail.gmail.com>
Date: Fri, 15 Jun 2007 10:55:24 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Bob McConnell" <rvm@cbord.com>
Subject: Re: Having trouble porting an application to MS-Windows
Cc: beginners@perl.org
In-Reply-To: <FF8482A96323694490C194BABEAC24A0010EC0FE@Email.cbord.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <FF8482A96323694490C194BABEAC24A0010AC97D@Email.cbord.com>
	 <58ce48dc0706140815h5e53e767i78656130db76f473@mail.gmail.com>
	 <FF8482A96323694490C194BABEAC24A0010ACAE7@Email.cbord.com>
	 <58ce48dc0706140858l27cbfc30x9a92eeca7342cc05@mail.gmail.com>
	 <58ce48dc0706140909j56bc73cq3514e55fc9400e43@mail.gmail.com>
	 <FF8482A96323694490C194BABEAC24A0010EC0FE@Email.cbord.com>

On 6/15/07, Bob McConnell <rvm@cbord.com> wrote:
snip
>                 eval {
>                         local $SIG{ALRM} = sub { die "alarm\n" }; # NB:
> \n required
>                         alarm $timeout;
>                         $nread = sysread PORT, $line, 1;
>                         alarm 0;
>                 };
snip
> This transmits the packet, but never comes out of the eval() if it
> doesn't receive a character. Is there anything obvious that I missed?
snip

Hmm, that codes looks right.  Do the two scripts I sent earlier work?

> Even if this does work, can I set simultaneous alarms in multiple
> threads?

Yes, I sent an example that worked for me with ActiveState's latest
version on WinXP.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

ZA4eIxi
l/ ci.
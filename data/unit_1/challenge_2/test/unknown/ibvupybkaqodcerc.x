From beginners-return-92471-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 15 11:33:27 2007
Return-Path: <beginners-return-92471-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5FFXQL9003841
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 11:33:26 -0400
Received: (qmail 25056 invoked by uid 514); 15 Jun 2007 15:33:20 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25018 invoked from network); 15 Jun 2007 15:33:19 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 15 Jun 2007 15:33:19 -0000
Received: (qmail 28557 invoked by uid 225); 15 Jun 2007 15:33:19 -0000
Delivered-To: beginners@perl.org
Received: (qmail 28546 invoked by alias); 15 Jun 2007 15:33:18 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.178 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 15 Jun 2007 08:33:17 -0700
Received: by wa-out-1112.google.com with SMTP id v27so1152567wah
        for <beginners@perl.org>; Fri, 15 Jun 2007 08:33:13 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=E5Migw0L5i5Z/teSp5PHy/aaRnCA7XlIKdxnt1UmycDoySFN0aL5bVz2UTu2InAQYRmGYraK6fYSUbIuwLjhelxiervN8tc1rMnR0q1l+qkcLMwnvMsg/H0zKEnL/t7pynE24Mkv2dBxE1cNvjcC7bzbipsYARgB9j89b1CTCvQ=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ekQIYYzik16M3QwYZMkqcKUQ0oIPq3L+KUsS8rBqgqKl7iM2RIqHS0igfEttqRX1vp1+uISw+e8KHVAQyqV3HPY4F3ecNG/CmhEkvlknjsuSWNZjKbx8yla4CV/sG3hHdcyfydfE5YvRYD/qahahrGQrwAttcDTaFGmIpgzUZsk=
Received: by 10.114.107.19 with SMTP id f19mr3101179wac.1181921593447;
        Fri, 15 Jun 2007 08:33:13 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Fri, 15 Jun 2007 08:33:13 -0700 (PDT)
Message-ID: <58ce48dc0706150833p754711dkb7da0c69c19734bb@mail.gmail.com>
Date: Fri, 15 Jun 2007 11:33:13 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Bob McConnell" <rvm@cbord.com>
Subject: Re: Having trouble porting an application to MS-Windows
Cc: beginners@perl.org
In-Reply-To: <FF8482A96323694490C194BABEAC24A0010EC16E@Email.cbord.com>
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
	 <58ce48dc0706150755j6df18e0ch3506228bff5b55d5@mail.gmail.com>
	 <FF8482A96323694490C194BABEAC24A0010EC16E@Email.cbord.com>

On 6/15/07, Bob McConnell <rvm@cbord.com> wrote:
snip
> Or have I found a bug in the ActiveState implementation?
snip

Are you currently paying for ActiveState support?  If so, I would
suggest filing a ticket with them.  In the mean time, try modifying my
code to do a sysread from a socket.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

077dp �2=nul
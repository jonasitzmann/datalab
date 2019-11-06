From beginners-return-92247-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 11:27:44 2007
Return-Path: <beginners-return-92247-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l58FRhhB016975
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 11:27:44 -0400
Received: (qmail 11786 invoked by uid 514); 8 Jun 2007 15:27:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 11777 invoked from network); 8 Jun 2007 15:27:32 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 8 Jun 2007 15:27:32 -0000
Received: (qmail 7200 invoked by uid 225); 8 Jun 2007 15:27:32 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7182 invoked by alias); 8 Jun 2007 15:27:31 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.231 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.231)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 08 Jun 2007 08:27:28 -0700
Received: by nz-out-0506.google.com with SMTP id x7so772279nzc
        for <beginners@perl.org>; Fri, 08 Jun 2007 08:27:23 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mDq5Nhz2MkIhHJ/kQfAGt9xOqrwofdkrCcJ4ZfapiNfWxAVeeaHNTaacbzTgbNnadmEiI2Du/H9bLWSMHJzcrNFWonCtBuDlSN8tlD+moLT9mF99nuLUrZSgjDp5UH5EpY1t3fWWAHgCRKTkUZJW8W3A/X3P5j1ZyGgz2EOAm1E=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=PX1lMy5mHaf0EcGe7w6q5sXjzzWl7AyMFrcM4wrLXPG7/5T5kFtN6dBC1/eLTr8JNyD7wBIkF4k7PwOUJyenX/hup7Jdfy2OJDN02TehsVSgesJdkNZounSH8LOhSYyh//ZNHm6Zmm0ldQ+Pmv3C4CIFQEuijYD7ZqJ9uq76O+k=
Received: by 10.114.52.1 with SMTP id z1mr2663073waz.1181316442919;
        Fri, 08 Jun 2007 08:27:22 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Fri, 8 Jun 2007 08:27:22 -0700 (PDT)
Message-ID: <58ce48dc0706080827g316281f2pde7e097de36beefa@mail.gmail.com>
Date: Fri, 8 Jun 2007 11:27:22 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Octavian Rasnita" <orasnita@gmail.com>
Subject: Re: Deploy Perl script on Windows
Cc: beginners@perl.org, yannickg@gmail.com
In-Reply-To: <001701c7a9dd$aecd38a0$c2a2b451@teddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181248621.927618.297580@h2g2000hsg.googlegroups.com>
	 <001701c7a9dd$aecd38a0$c2a2b451@teddy>

On 6/8/07, Octavian Rasnita <orasnita@gmail.com> wrote:
> Search for PAR on search.cpan.org.

Having just done this, I can tell you that the PAR shipped by
ActiveState is not up to par.  You will need to install PAR and
PAR::Packer manually.  I don't believe there are any XS based modules,
so you should be able to just copy nmake* to somewhere in your path
and run*

perl -MCPAN -e install PAR::Packer

* http://search.cpan.org/~smueller/PAR-0.973/lib/PAR.pm
* http://search.cpan.org/~smueller/PAR-Packer-0.975/lib/PAR/Packer.pm
* http://support.microsoft.com/default.aspx?scid=kb;en-us;Q132084
* CPAN will ask you to configure the system at this point, the
defaults are fine, but you will want to choose mirrors close to where
you live.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

04yap o
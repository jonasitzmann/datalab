From beginners-return-92917-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 19:07:42 2007
Return-Path: <beginners-return-92917-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TN7gL9032262
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 19:07:42 -0400
Received: (qmail 8689 invoked by uid 514); 29 Jun 2007 23:07:34 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8680 invoked from network); 29 Jun 2007 23:07:34 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 23:07:34 -0000
Received: (qmail 27226 invoked by uid 225); 29 Jun 2007 23:07:33 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27222 invoked by alias); 29 Jun 2007 23:07:33 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.230 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.230)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 16:07:30 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1068994wxc
        for <beginners@perl.org>; Fri, 29 Jun 2007 16:07:26 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=IxQi6ZgOwAHZqzLEupizKPJNdC3Gn74mr704bu4pKlrkN+Sd3qF/VcMGo03vDX5+Qi1SDvfmw3Te7/h+jEs3YJoBqKakPJXVb/sP+bIqH2xA5ZZkInKCOLLWTjLLhfRlIGDoFBTnVAPs45QtnWntlCraEOTXaAONiuAPB3zf/UE=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=WdCwtLBZSSCZrBpDSKNePq8lIEiNQBFixq7ifghx4WuY5aMOvp0oq2/VXHDuKGxEZseRbTIqhSXXDVO1j8urTkp/h3AvjEbr8ze9apy8J4mnumgYeriBcYllwoKHcnk5tY2GxhsDtxmNxJy3pXHJ80ZiTk1oGULvv7gf/97UaUI=
Received: by 10.90.81.14 with SMTP id e14mr3878894agb.1183158446184;
        Fri, 29 Jun 2007 16:07:26 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Fri, 29 Jun 2007 16:07:26 -0700 (PDT)
Message-ID: <31086b240706291607r28d7e232k473da82f5d9c38a8@mail.gmail.com>
Date: Fri, 29 Jun 2007 16:07:26 -0700
From: "Tom Phoenix" <rootbeer@redcat.com>
Sender: tom.phoenix@gmail.com
To: marin <marin.jb@gmail.com>
Subject: Re: how to get references from imbricated capturing parenthesis ?
Cc: beginners@perl.org
In-Reply-To: <1183131214.922490.67980@o61g2000hsh.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183131214.922490.67980@o61g2000hsh.googlegroups.com>
X-Google-Sender-Auth: f7e6115284050ad7

On 6/29/07, marin <marin.jb@gmail.com> wrote:

> I'm trying to get references from a simple regular exepression like
> this :
>
> "a40d7412" =~ /(([[:xdigit:]]{2})*)/;
>
> print "$1: <$2><$3><$4><$5>\n";

> How to get all references and not the last one in the second
> parenthesis pair ?

I don't think you're looking for references; those are described in
the perlref manpage. You're using regular expressions, described in
the perlre manpage (and elsewhere). Is that the source of your
confusion?

I think you're looking to get every hex digit pair you can match,
maybe? You could use m//g in list context:

   my @matches = "a40d7412" =~  /([[:xdigit:]]{2})/g;

But that may not be what you want, especially if your data isn't just
hex. Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

29p o
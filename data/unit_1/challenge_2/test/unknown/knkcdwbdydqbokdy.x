From beginners-return-92271-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  9 22:47:12 2007
Return-Path: <beginners-return-92271-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5A2lBL9017079
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 22:47:11 -0400
Received: (qmail 26240 invoked by uid 514); 10 Jun 2007 02:47:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26231 invoked from network); 10 Jun 2007 02:47:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 10 Jun 2007 02:47:06 -0000
Received: (qmail 14701 invoked by uid 225); 10 Jun 2007 02:47:06 -0000
Delivered-To: beginners@perl.org
Received: (qmail 14690 invoked by alias); 10 Jun 2007 02:47:06 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of anexpert@gmail.com designates 64.233.166.177 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.177)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 09 Jun 2007 19:47:03 -0700
Received: by py-out-1112.google.com with SMTP id f47so2035313pye
        for <beginners@perl.org>; Sat, 09 Jun 2007 19:46:59 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=XdrP2sXCl2Dk33inTdaxG2pi77v30tWbW/5d0qw1YGtUDOzXtxeWqLtDkl9POQlPgrM2bFVYwf0TJcI2ayt21b6CYvwbk7WyNIMDoy9WJnly8vJiBFF5p4drwqHX5JE26wJ5uT5kUCWVU/shZYNARTUXrCXHUfMGRFZ3zTnFAMI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=l9Q6k1P5qJB6fPuqnlut0/5sM8D+OV5UmTEAloVl1nO7GlmyhBffr6zNZkYC2Q1tTsD+gSF4ZtAPciZaEhELaRTx1hbkhnroa25UQ/0o1YH9+x+K2dqTKOUen/Aej+iDfDmZjOGPbFHLh2fGjge/dc6pL5wYRrMcG6dqSi8nKGQ=
Received: by 10.64.249.18 with SMTP id w18mr7344310qbh.1181443619768;
        Sat, 09 Jun 2007 19:46:59 -0700 (PDT)
Received: by 10.64.193.14 with HTTP; Sat, 9 Jun 2007 19:46:59 -0700 (PDT)
Message-ID: <ca5781c80706091946i1c1d1665qe4b044db06774db2@mail.gmail.com>
Date: Sat, 9 Jun 2007 22:46:59 -0400
From: yitzle <yitzle@users.sourceforge.net>
Sender: anexpert@gmail.com
To: "Perl List" <beginners@perl.org>
Subject: Re: Removing decimal points
In-Reply-To: <F570D17A-3F6F-40FF-A2E8-AEC740FCF1F6@hashref.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
	 <F570D17A-3F6F-40FF-A2E8-AEC740FCF1F6@hashref.com>
X-Google-Sender-Auth: d096edb04224c207

Why does the list attract so many duplicate responses?

On 6/8/07, Xavier Noria <fxn@hashref.com> wrote:
> On Jun 8, 2007, at 9:52 PM, ash wrote:
>
> > I need to remove decimal points from numbers. For eg 1.23 or 1.77
> > would be just 1. Any suggestion is appreciated. Thank you.
>
> Use de int() function.
>
> -- fxn

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

tead=>f9
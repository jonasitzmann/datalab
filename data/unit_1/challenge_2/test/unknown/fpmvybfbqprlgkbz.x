From beginners-return-93048-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 15:38:08 2007
Return-Path: <beginners-return-93048-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64Jc6L9014667
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 15:38:07 -0400
Received: (qmail 29877 invoked by uid 514); 4 Jul 2007 19:37:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29868 invoked from network); 4 Jul 2007 19:37:57 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 19:37:57 -0000
Received: (qmail 2364 invoked by uid 225); 4 Jul 2007 19:37:57 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2325 invoked by alias); 4 Jul 2007 19:37:56 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.230 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.230)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 12:37:53 -0700
Received: by wx-out-0506.google.com with SMTP id t11so1242438wxc
        for <beginners@perl.org>; Wed, 04 Jul 2007 12:37:48 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=AaZ5wsRRfuOtKexFIwAd+P7LhsD6QtgIAW5rxZxu7YODYkBIj0RTs2dEoB2l+rRwDpel18ZhuAwvIkd23ZzDuUtipweVaeWMS4ESWq13Le+FZQQ5r9+uSvj7WvvDijS3nX2i5URJgpffJ9adf8THQ+O6uIv+d0/R5DbeUcxnE2k=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Q/bsc84c7uTTjP+6zA0JTg+XvNjQYqLsljLe3CKLG+pjKrJJ4aJlkOFh34Romlc+NXs/TmsxcIZuMr0lpaYF4W+QQl1py2qDNeLURgc9W7rJ4j6+Fqlp1MpA3Scma51L3MeT+jqO7awLe/2PSjgj6mPvDDracAa8F9Sydx7mD0o=
Received: by 10.90.83.14 with SMTP id g14mr7337230agb.1183577868706;
        Wed, 04 Jul 2007 12:37:48 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Wed, 4 Jul 2007 12:37:48 -0700 (PDT)
Message-ID: <31086b240707041237i2dd1c3bagfa3e8ff27e5fb6cd@mail.gmail.com>
Date: Wed, 4 Jul 2007 12:37:48 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Joseph L. Casale" <JCasale@activenetwerx.com>
Subject: Re: File::Spec->splitpath
Cc: "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCD2@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCD2@an-ex.ActiveNetwerx.int>
X-Google-Sender-Auth: 9af7de48afbb7e41

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:

> ($volume,$directories,$file) = File::Spec<http://perldoc.perl.org/File/Spec.html>->splitpath( $path );
>
> I am leveraging this fine, but would like to shove the last directory from the path in $directories into a new var.
> Is there a function from this module that can do this cleanly?

Do you mean splitdir?

Hope this helps!

--Tom Phoenx
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

ee_pIZ�a
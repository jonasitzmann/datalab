From beginners-return-92416-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 09:12:54 2007
Return-Path: <beginners-return-92416-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EDCrL9021960
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:12:53 -0400
Received: (qmail 28787 invoked by uid 514); 14 Jun 2007 13:12:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28759 invoked from network); 14 Jun 2007 13:12:44 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 13:12:44 -0000
Received: (qmail 17117 invoked by uid 225); 14 Jun 2007 13:12:44 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17106 invoked by alias); 14 Jun 2007 13:12:44 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of anexpert@gmail.com designates 64.233.166.183 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 06:12:41 -0700
Received: by py-out-1112.google.com with SMTP id f47so1018602pye
        for <beginners@perl.org>; Thu, 14 Jun 2007 06:12:37 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=CV8I+J0gYMeRCzEYZfz8LGfAFLbHYfjBhl7e+k1PBEUtamH+r3QFaiySsVTx/3rtBft0yXzoRiRGefxLMqP9wASOnUM5/0gxxhFCnFoSlgRr6ESnWsCpCO4Mwh8adYKbuiWcYuGR2zSvObP5hDZVxr/QCs54b+ZwBZ4pHF3GvEM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=ufM/5i6X82IEJMGr41TnHs02fVPULAuexH0bQDfUEeVSXK7v0aVl8ywpZ2A4ya4gJmuZxJdz4holbD774IONL7KbFmI4AtJ0bLR5rAvbWQStdtaBvPdW1hIhmTI9o88RleDPM5YPHYKq6XcynGTzy4RYH9eB7bihIrx4G/H85Io=
Received: by 10.65.163.8 with SMTP id q8mr3141405qbo.1181826757026;
        Thu, 14 Jun 2007 06:12:37 -0700 (PDT)
Received: by 10.64.185.10 with HTTP; Thu, 14 Jun 2007 06:12:36 -0700 (PDT)
Message-ID: <ca5781c80706140612rd1c40a4v958b05994e108173@mail.gmail.com>
Date: Thu, 14 Jun 2007 09:12:36 -0400
From: yitzle <yitzle@users.sourceforge.net>
Sender: anexpert@gmail.com
To: "Brad Baxter" <baxter.brad@gmail.com>
Subject: Re: Removing decimal points
Cc: beginners@perl.org
In-Reply-To: <1181765053.056602.20780@i38g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
	 <1181765053.056602.20780@i38g2000prf.googlegroups.com>
X-Google-Sender-Auth: 891521009e860fbc

On 6/13/07, Brad Baxter <baxter.brad@gmail.com> wrote:
> On Jun 8, 3:52 pm, ashish...@gmail.com (Ash) wrote:
> > Hello there!
> >
> > I need to remove decimal points from numbers. For eg 1.23 or 1.77
> > would be just 1. Any suggestion is appreciated. Thank you.
>
> Did anybody mention int()?
>
> --
> Brad

The first 6 replies were to use int().
I'm not sure about the rest.
I know the 7th reply was a RegEx.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

oc 323�l=
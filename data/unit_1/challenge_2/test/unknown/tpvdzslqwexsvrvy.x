From beginners-return-92176-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 20:03:52 2007
Return-Path: <beginners-return-92176-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5603ohB015306
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 20:03:51 -0400
Received: (qmail 7634 invoked by uid 514); 6 Jun 2007 00:03:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7625 invoked from network); 6 Jun 2007 00:03:38 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 6 Jun 2007 00:03:38 -0000
Received: (qmail 26297 invoked by uid 225); 6 Jun 2007 00:03:37 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26292 invoked by alias); 6 Jun 2007 00:03:37 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.225 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.225)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 05 Jun 2007 17:03:35 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1807149wxc
        for <beginners@perl.org>; Tue, 05 Jun 2007 17:03:31 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=qdR/PNiT2MsenBU4E1gwUoX3eHoYz3IikX5uLBfH6dy3RxcfReefOrFxzGv0SNDLCQw/TdOiIqZ1cAz5VlsBW0tniP38m5jlqJRv/Yg2+VsTaxozE7r6tfkYUZZkILCSPEW2UuYqxl8aBuNjOtVZB+BaBSKwG7xwM0G/pKQU1X8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=lkjsOn35lgOGWJEqEgt40NxFqUID3G59PbwiX5UFgTbkmxO/K07ZsGGr1oHEMmE7YRKnvUwqGgfrZli3GOkMn/Hmce+nhokqFb9TQVPztl7aWzwYSDjMBYuy6aXjAsoNZxeYiI4FgdgAIPd6UsWrygczP3ED8+q8rdU0FbIXZaI=
Received: by 10.90.71.3 with SMTP id t3mr5770560aga.1181088211115;
        Tue, 05 Jun 2007 17:03:31 -0700 (PDT)
Received: by 10.90.113.16 with HTTP; Tue, 5 Jun 2007 17:03:31 -0700 (PDT)
Message-ID: <31086b240706051703j2205cb4fl29af2dfc8803d990@mail.gmail.com>
Date: Tue, 5 Jun 2007 17:03:31 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "aislingbrennan21@gmail.com" <aislingbrennan21@gmail.com>
Subject: Re: PERL arrays
Cc: beginners@perl.org
In-Reply-To: <1181079499.259819.77140@g4g2000hsf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181079499.259819.77140@g4g2000hsf.googlegroups.com>
X-Google-Sender-Auth: 6ef6f3cfd8e2c58d

On 6/5/07, aislingbrennan21@gmail.com <aislingbrennan21@gmail.com> wrote:

> how do i declare loop and print a 4 dim array

Perl's arrays are one-dimensional. But you can fake things that are as
complex as necessary. Have you seen the perldsc manpage?

Cheers!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

cs a
From beginners-return-93053-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 16:12:59 2007
Return-Path: <beginners-return-93053-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64KCwL9015084
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 16:12:59 -0400
Received: (qmail 19207 invoked by uid 514); 4 Jul 2007 20:12:46 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19198 invoked from network); 4 Jul 2007 20:12:46 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 20:12:46 -0000
Received: (qmail 19857 invoked by uid 225); 4 Jul 2007 20:12:45 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19843 invoked by alias); 4 Jul 2007 20:12:44 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 64.233.184.232 as permitted sender)
Received: from wr-out-0506.google.com (HELO wr-out-0506.google.com) (64.233.184.232)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 13:12:42 -0700
Received: by wr-out-0506.google.com with SMTP id q50so200393wrq
        for <beginners@perl.org>; Wed, 04 Jul 2007 13:12:38 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=O4md8YTCBXnS4Tzsm8JyMdOnLSdPi3nS5cVrQJqQTsjr8u5MplKtNyPAx2mCrCgoMudcPvEbDSM28RHR+3B2uuhZHidMSXaEf3A+dJtgl3ldauLoi/IK+tw2hmenIN/GlPsCl3XCb7MuQgpfPlIrAsN7AYTEKiH/xGGH49YCnEk=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Bb/eIHcTcC0SMOkct03tXAE7Sk8ozne/slN7Z/bZkL3it6bqpshMt7FMBvuLbQ/pNQ1k6IitrSnReVqmiyNanbQ3+FEYi4claNOxGzW8pzLAMQ9pw3zPOPRUqKXm/OkaCHd6lkBnQbUoB8epGbgBraoGO/1KyWjWajfp5y0hpbE=
Received: by 10.90.25.3 with SMTP id 3mr7344681agy.1183579958428;
        Wed, 04 Jul 2007 13:12:38 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Wed, 4 Jul 2007 13:12:38 -0700 (PDT)
Message-ID: <31086b240707041312p11913413l913463b8a47ee3e4@mail.gmail.com>
Date: Wed, 4 Jul 2007 13:12:38 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Joseph L. Casale" <JCasale@activenetwerx.com>
Subject: Re: File::Spec->splitpath
Cc: "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCD4@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCD2@an-ex.ActiveNetwerx.int>
	 <31086b240707041237i2dd1c3bagfa3e8ff27e5fb6cd@mail.gmail.com>
	 <80D663F66DF55241BD12E3DB42DDF132045367CCD4@an-ex.ActiveNetwerx.int>
X-Google-Sender-Auth: 3401409751dcc0e3

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:

> Just found that. I suppose I could use it, then get the size of the array and
> use the last indices? Is there a cleaner way to do it?

pop?

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

UlfggsO/
From beginners-return-92351-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 07:39:14 2007
Return-Path: <beginners-return-92351-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DBdDL9007028
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 07:39:14 -0400
Received: (qmail 16635 invoked by uid 514); 13 Jun 2007 11:39:08 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16626 invoked from network); 13 Jun 2007 11:39:07 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 11:39:07 -0000
Received: (qmail 8185 invoked by uid 225); 13 Jun 2007 11:39:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8174 invoked by alias); 13 Jun 2007 11:39:07 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,HTML_MESSAGE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of umesh.perl@gmail.com designates 64.233.162.226 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.226)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 04:38:57 -0700
Received: by nz-out-0506.google.com with SMTP id x7so158908nzc
        for <beginners@perl.org>; Wed, 13 Jun 2007 04:38:53 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=bYlQRmDdSy/IYnF2C5mQUoFK4aReWAZeYb05+D8FmABjqZ0u8sJ/IXzigcXlDcAkDG8Imtyf4CRLMh/MPaIbHRovndo8Xp/7a5mUGSvoubIJvEBfWpdQSJUT+QFKS/Mj4FW5ZB23ZdbwsRu2JuwGJVGJVUcBsCnDNHsv0DVsleU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=F0OQi5pxFrL1Mzs7CAukBXPoOsw8myCivrYb/vKDmIRoH3Qceb/SidNedpvoVZjZCtubzatSbkn4YK0dE2VLXRqZRnFLUAtqJjORGTNJa5n9cJ3kFNfQ4QvBB6dOwMOmNW/hDkZMyiIjRYVNmAK5JTex8ftN/PurbNSY6MmGUaI=
Received: by 10.142.105.14 with SMTP id d14mr27240wfc.1181734732600;
        Wed, 13 Jun 2007 04:38:52 -0700 (PDT)
Received: by 10.142.99.12 with HTTP; Wed, 13 Jun 2007 04:38:52 -0700 (PDT)
Message-ID: <e29645ac0706130438w3aef6943o926f5fc5eb831405@mail.gmail.com>
Date: Wed, 13 Jun 2007 17:08:52 +0530
From: "Umesh T G" <umesh.perl@gmail.com>
To: "Martin Barth" <barth@bitbone.de>, zentara <zentara@highstream.net>
Subject: Re: Run 2 process in parallel.
Cc: beginners@perl.org
In-Reply-To: <ajkv635op2in83fr7pacjuesqgl5re68of@4ax.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_10874_390829.1181734732572"
References: <e29645ac0706130250q4d1370aft4d93cc3d7763786a@mail.gmail.com>
	 <ajkv635op2in83fr7pacjuesqgl5re68of@4ax.com>

------=_Part_10874_390829.1181734732572
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

It's a simple script which has to copy some files.
Martin solution will do that job. Thanks :)

Zen, I had an impression that running parallel jobs is only threads work.

Thanks anyways,

Cheers,
Umesh

On 6/13/07, zentara <zentara@highstream.net> wrote:
>
> On Wed, 13 Jun 2007 15:20:50 +0530, umesh.perl@gmail.com ("Umesh T G")
> wrote:
>
> >Hola all,
> >
> >I have 2  perl scripts which has to run in parallel.
> >
> >I have run.pl which inturn has to call
> >1. pl and 2. pl;
> >I am not sure how I can do it using the Perl Threads.
> >
> >Can someone throw some light here.
> >
> >I am not sure how I can achieve it.
> >
> >TIA,
> >Cheers,
> >Umesh
>
> You don't need threads, unless you need the processes
> to communicate values between one another during realtime.
>
> If that is the case, what are those values?
>
>
> --
> I'm not really a human, but I play one on earth.
> http://zentara.net/japh.html
>
> --
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
>
>
>

------=_Part_10874_390829.1181734732572--

       

20e
M4.
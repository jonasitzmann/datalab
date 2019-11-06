From beginners-return-92810-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 14:14:17 2007
Return-Path: <beginners-return-92810-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RIEEL9030439
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 14:14:14 -0400
Received: (qmail 3089 invoked by uid 514); 27 Jun 2007 18:14:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3080 invoked from network); 27 Jun 2007 18:14:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 18:14:06 -0000
Received: (qmail 23333 invoked by uid 225); 27 Jun 2007 18:14:05 -0000
Delivered-To: beginners@perl.org
Received: (qmail 23311 invoked by alias); 27 Jun 2007 18:14:03 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 64.233.184.235 as permitted sender)
Received: from wr-out-0506.google.com (HELO wr-out-0506.google.com) (64.233.184.235)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 11:13:58 -0700
Received: by wr-out-0506.google.com with SMTP id 68so216325wra
        for <beginners@perl.org>; Wed, 27 Jun 2007 11:13:58 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=rp+hK5K2ZQZNxiyaIDl4UPE/rTiacdKyP2QuwVWxobT9XN0YD9h+rRGDydXIG/dKbRETns6rRQ04nZbxMZFWa54xcXe6Z7BitqYVuG2JojnxZHWO42kWOeU4saud0i0/12md5BUW7JMQU5i9RSRgcetvK9lb4W20lDltqALvuD4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=FD3AVuqT3+UZUuRw+jwyh1bG8eiqVz/Xk3zF4Tp2V8oh1XOxZLvoJFVuqJ0J2E2Gl2/2X6cGX328WMlCmM/iG9bYq+ag7uVGgKA51HYs6Hhb/6EdLoDgODUqsO5sGHT9UKYjL/LTirWQv9GpDEpG8HKGmnAxUD845/Mt0X6TNpw=
Received: by 10.90.97.11 with SMTP id u11mr940692agb.1182968037874;
        Wed, 27 Jun 2007 11:13:57 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Wed, 27 Jun 2007 11:13:57 -0700 (PDT)
Message-ID: <31086b240706271113h3df9c03cg945a3a2b127fea29@mail.gmail.com>
Date: Wed, 27 Jun 2007 11:13:57 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Gary Stainburn" <gary.stainburn@ringways.co.uk>
Subject: Re: Tie::Handle::CSV
Cc: beginners@perl.org
In-Reply-To: <200706271901.36075.gary.stainburn@ringways.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <200706271733.35242.gary.stainburn@ringways.co.uk>
	 <31086b240706270954v52175534pef15f56fe9111db7@mail.gmail.com>
	 <200706271901.36075.gary.stainburn@ringways.co.uk>
X-Google-Sender-Auth: aa590bd0bb4813c9

On 6/27/07, Gary Stainburn <gary.stainburn@ringways.co.uk> wrote:

> It looks like Tie::Handle::CSV just dies when there are no records left.
>
> I've looked at the perldoc for the module and I can't see any
> reference to why it should do this, or how to stop it.

I can't say either, although it seems like odd behavior. Shouldn't it
return undef, as reading from a filehandle generally does at
end-of-file? It's probably worth asking the module's author to add
something to the documentation, if it is the desired behavior.

But you can almost certainly trap the error with an eval block. Maybe
as simply as this?

  while (my $csv_line = eval { readline $csv_fh }) {

Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

oe+r=GeiQm
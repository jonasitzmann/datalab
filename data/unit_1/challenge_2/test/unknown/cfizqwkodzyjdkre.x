From beginners-return-93068-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 22:34:35 2007
Return-Path: <beginners-return-93068-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l652YYL9020226
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 22:34:34 -0400
Received: (qmail 18785 invoked by uid 514); 5 Jul 2007 02:34:25 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 18776 invoked from network); 5 Jul 2007 02:34:25 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 02:34:25 -0000
Received: (qmail 2989 invoked by uid 225); 5 Jul 2007 02:34:24 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2983 invoked by alias); 5 Jul 2007 02:34:24 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.181 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.181)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 19:34:21 -0700
Received: by wa-out-1112.google.com with SMTP id v27so2963475wah
        for <beginners@perl.org>; Wed, 04 Jul 2007 19:34:17 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=N2TopmATt3L+uy1TqSI3rluWdlwjTRpLd4mdg09/drzmqJcnm12Hv9JbZuv7o9MDNo+t9Fykhkrj2+Uq7QDCeWLeldfFxahuY/nGavMGEZ3gJvrjep1lRQL3r4k28gIpOXoesQRZIk0s3cVjN20/4C4/sKcEkxlyYrvt3FWiEvc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=NNxyKIXwN47afTz+f+yBJAFv6hnLjhDK7l01Ar58KE8vopMMNJVNlEXwm3n/WnvurFZ3hkBw4uE70kTLT9ar6PbxfG27TcPSv6XMH/L7RenqfhTGXHzWW7wwadmiUmazI7zSZIZToO2z9lX51xUmcXbS6bjbLe5ENQGss6DS0D0=
Received: by 10.114.176.1 with SMTP id y1mr7707046wae.1183602857598;
        Wed, 04 Jul 2007 19:34:17 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Wed, 4 Jul 2007 19:34:17 -0700 (PDT)
Message-ID: <58ce48dc0707041934l76379de6ub6145d26c383b5b0@mail.gmail.com>
Date: Wed, 4 Jul 2007 22:34:17 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Joseph L. Casale" <JCasale@activenetwerx.com>
Subject: Re: syntax error of some sort?
Cc: "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCD6@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCD5@an-ex.ActiveNetwerx.int>
	 <58ce48dc0707041914r146b94b9l8731d2477e0cb2e3@mail.gmail.com>
	 <80D663F66DF55241BD12E3DB42DDF132045367CCD6@an-ex.ActiveNetwerx.int>

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:
snip
> Is it actually incorrect to run: stop_it(@DNS); aside from maybe looking strange?
snip

It doesn't look strange, but your code only works with the first
element of @DNS so it is pointless.  If you want to say stop_it(@DNS)
and actually do something with the the other values in @DNS you will
need a loop inside the sub:

sub stop_it {
    for my $vm (@_) {
        my $state = `/usr/bin/vmware-cmd "$vm" getstate -q`;
        .
        .
        .
    }
}

If you really only want to work with the first value in @DNS then you should say

stop_it($DNS[0]);

to avoid confusing people.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

7tVarcDiMlo
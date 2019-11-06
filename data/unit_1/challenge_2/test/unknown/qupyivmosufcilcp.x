From beginners-return-92856-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 09:49:58 2007
Return-Path: <beginners-return-92856-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SDnvL9011336
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:49:57 -0400
Received: (qmail 15666 invoked by uid 514); 28 Jun 2007 13:49:49 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15656 invoked from network); 28 Jun 2007 13:49:48 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 13:49:48 -0000
Received: (qmail 15754 invoked by uid 225); 28 Jun 2007 13:49:46 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15739 invoked by alias); 28 Jun 2007 13:49:45 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.231 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.231)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 06:49:35 -0700
Received: by nz-out-0506.google.com with SMTP id x7so308687nzc
        for <beginners@perl.org>; Thu, 28 Jun 2007 06:49:30 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=oP/ncS+UfU3vOsouqWF5WUvObGGsaFfwgw+pKA0IhKDsPxL+KGCRvt64osfULTSs1AX0AZ7KSRpe6NLwoyq7FcrzRCTdjZMu1Kt2sPvyN1DmvBRTgK+g9LTte+FgtKAhXhRRT0MB9K9t2meR0pUzyfpj5wS9X/hunqya0IQ6iEg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=fpnoNtUNNAZX5Hqgq47ZqUEYjyQD++x242AKMDVNxkqFi6ga58ZPSBGcXkamL8vhgim83RW5lqp2Y8f3jdsBxg1hCxFYpiaR9xTYmQds3tBPofZLuhHuHVzjvUfCJM1jr7bXANnc69O+HltUPWVX9W5NT2FoFudrYvzDy/TKg7s=
Received: by 10.114.14.1 with SMTP id 1mr1526944wan.1183038569436;
        Thu, 28 Jun 2007 06:49:29 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Thu, 28 Jun 2007 06:49:29 -0700 (PDT)
Message-ID: <58ce48dc0706280649v16fa650cj7f0a89a8f5455dc2@mail.gmail.com>
Date: Thu, 28 Jun 2007 09:49:29 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Jenda Krynicky" <Jenda@krynicky.cz>
Subject: Re: More loops
Cc: beginners@perl.org
In-Reply-To: <4683D40B.21572.A437DC1@Jenda.Krynicky.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <848c3f360706280253n7de68c69g62bec916e57f6401@mail.gmail.com>
	 <4683C859.9681.A15D0E2@Jenda.Krynicky.cz>
	 <58ce48dc0706280550i339baa70la436b715cd6559b2@mail.gmail.com>
	 <4683D40B.21572.A437DC1@Jenda.Krynicky.cz>

On 6/28/07, Jenda Krynicky <Jenda@krynicky.cz> wrote:
> From:                   "Chas Owens" <chas.owens@gmail.com>
> > On 6/28/07, Jenda Krynicky <Jenda@krynicky.cz> wrote:
> > > From: "Amichai Teumim" <amichai@teumim.com>
> > snip
> > > > foreach $elem (@array){
> > > >   print "$elem\n";
> > > > }
> > >
> > > This can be simplified to
> > >
> > > print join("\n", @array), "\n";
> > snip
> >
> > or (since this is Perl and TIMTOWTDI)
> >
> > print map { "$_\n" } @array;
>
> or
>
> print "$_\n" for @array;
>
> or (and all beginners should close their eyes since I'm going dirty
> now)
>
> { local $" = "\n";
> print "@array\n";
> }
>
> or
>
> { local $, = "\n"; local $\ = "\n";
> print @array;
> }
>
> or
>
> { local $\ = "\n";
> print for @array;
> }
>
> Hello Tim, how's missis Toady? ;-)
>
> Jenda
> ===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
> When it comes to wine, women and song, wizards are allowed
> to get drunk and croon as much as they like.
>         -- Terry Pratchett in Sourcery

Well, if we are going to be silly, how about

s/$/\n/s for @array;
print @array;
s/\n$//s for @array;

or

printf join('',("%s\n") x @array), @array;

or

{ local $" = '';
printf qq/@{[("%s\n") x @array]}/, @array;
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

F2/tPY7I1rf0QrtC
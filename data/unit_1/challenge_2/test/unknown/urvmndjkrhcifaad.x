From beginners-return-92854-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 09:30:49 2007
Return-Path: <beginners-return-92854-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SDUmL9011143
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:30:49 -0400
Received: (qmail 6101 invoked by uid 514); 28 Jun 2007 13:30:37 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6084 invoked from network); 28 Jun 2007 13:30:36 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 13:30:36 -0000
Received: (qmail 2354 invoked by uid 225); 28 Jun 2007 13:30:36 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2297 invoked by alias); 28 Jun 2007 13:30:32 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h206.core.ignum.cz (HELO h206.core.ignum.cz) (217.31.49.206)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 06:30:26 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id CEC0B6046D2
	for <beginners@perl.org>; Thu, 28 Jun 2007 15:30:05 +0200 (CEST)
Received: from palice.core.ignum.cz (palice.local.ignum.cz [192.168.1.66])
	by hroch.core.ignum.cz (Postfix) with ESMTP id 155F66046CA
	for <beginners@perl.org>; Thu, 28 Jun 2007 15:30:05 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by palice.core.ignum.cz (Postfix) with ESMTP id F3C11319E86
	for <beginners@perl.org>; Thu, 28 Jun 2007 15:30:18 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: beginners@perl.org
Date: Thu, 28 Jun 2007 15:30:19 +0200
MIME-Version: 1.0
Subject: Re: More loops
Message-ID: <4683D40B.21572.A437DC1@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <58ce48dc0706280550i339baa70la436b715cd6559b2@mail.gmail.com>
References: <848c3f360706280253n7de68c69g62bec916e57f6401@mail.gmail.com>, <4683C859.9681.A15D0E2@Jenda.Krynicky.cz>, <58ce48dc0706280550i339baa70la436b715cd6559b2@mail.gmail.com>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

From:           	"Chas Owens" <chas.owens@gmail.com>
> On 6/28/07, Jenda Krynicky <Jenda@krynicky.cz> wrote:
> > From: "Amichai Teumim" <amichai@teumim.com>
> snip
> > > foreach $elem (@array){
> > >   print "$elem\n";
> > > }
> >
> > This can be simplified to
> >
> > print join("\n", @array), "\n";
> snip
> 
> or (since this is Perl and TIMTOWTDI)
> 
> print map { "$_\n" } @array;

or

print "$_\n" for @array;

or (and all beginners should close their eyes since I'm going dirty 
now)

{ local $" = "\n";
print "@array\n";
}

or

{ local $, = "\n"; local $\ = "\n";
print @array;
}

or

{ local $\ = "\n";
print for @array;
}

Hello Tim, how's missis Toady? ;-)

Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

eR1/n4
t1uia
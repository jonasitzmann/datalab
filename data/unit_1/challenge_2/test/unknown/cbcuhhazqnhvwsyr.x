From beginners-return-92407-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 08:27:09 2007
Return-Path: <beginners-return-92407-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ECR8L9021348
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:27:08 -0400
Received: (qmail 28474 invoked by uid 514); 14 Jun 2007 12:27:01 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28465 invoked from network); 14 Jun 2007 12:27:00 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 12:27:00 -0000
Received: (qmail 21206 invoked by uid 225); 14 Jun 2007 12:26:56 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21092 invoked by alias); 14 Jun 2007 12:26:49 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from lexx.senfdax.de (HELO lexx.senfdax.de) (85.10.209.43)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 05:26:43 -0700
Received: from e180230214.adsl.alicedsl.de ([85.180.230.214] helo=nietzsche)
	by lexx.senfdax.de with esmtpsa (TLS-1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <martin@senfdax.de>)
	id 1HyoK2-0005zb-Rh
	for beginners@perl.org; Thu, 14 Jun 2007 14:21:12 +0200
Date: Thu, 14 Jun 2007 14:26:14 +0200
From: Martin Barth <martin@senfdax.de>
To: beginners@perl.org
Subject: Re: Hash Key is a Null Value
Message-ID: <20070614142614.058731a3@nietzsche>
In-Reply-To: <46714A9E.718.5E3101B@Jenda.Krynicky.cz>
References: <467118A4.4080809@yahoo.com>
	<46714A9E.718.5E3101B@Jenda.Krynicky.cz>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Score: -3.7 (---)
X-Spam-Report: Content analysis details:   (-3.7 points, 5.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-1.8 ALL_TRUSTED            Nachricht wurde nur über vertrauenswürdige Rechner
	weitergeleitet
	-2.6 BAYES_00               BODY: Spamwahrscheinlichkeit nach Bayes-Test: 0-1%
	[score: 0.0000]
	0.7 AWL                    AWL: From: address is in the auto white-list

Hi

as far as I know hash keys must be strings.
So there simply can't be a undef() as a hashkey.

to prove what I said:

% perl -MData::Dumper -le '$hash{undef()} = "foo"; $hash{""} = "bar"; print Dumper \%hash'
 $VAR1 = {
          '' => 'bar'
        };


HTH Martin

On Thu, 14 Jun 2007 14:03:10 +0200
"Jenda Krynicky" <Jenda@Krynicky.cz> wrote:

> Date sent:      	Thu, 14 Jun 2007 06:29:56 -0400
> From:           	Mathew Snyder <theillien@yahoo.com>
> To:             	Perl Beginners <beginners@perl.org>
> Subject:        	Hash Key is a Null Value
> 
> > I'm building a hash using values from a database backend to an application we
> > use in house.  The application has a field which contains a customer name.  This
> > values is supposed to be set by the person handling the work but sometimes
> > doesn't get done.  This leaves a NULL value in the database which, in turn,
> > leaves me with a null key in my hash.
> > 
> > I've tried resetting it by assigning the value to another key so I can delete
> > the element but so far nothing has worked.  I've tried to access it with
> > $hash{}, $hash{""}, and $hash{''}.  None of these will allow me to access the data.
> 
>   $hash{undef()}
> 
> You need to use the () because otherwise Perl would automatically 
> quote the undef. So $hash{undef} is equivalent to $hash{'undef'}.
> 
> You might also do something like this:
> 
>   my $NULL;
>   print $hash{$NULL};
> 
> HTH, Jenda
> ===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
> When it comes to wine, women and song, wizards are allowed 
> to get drunk and croon as much as they like.
> 	-- Terry Pratchett in Sourcery
> 
> 

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

ctjnnV
piCfmg17 
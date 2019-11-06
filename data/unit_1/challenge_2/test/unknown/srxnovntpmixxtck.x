From beginners-return-92404-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 08:03:45 2007
Return-Path: <beginners-return-92404-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EC3iL9021075
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:03:44 -0400
Received: (qmail 15508 invoked by uid 514); 14 Jun 2007 12:03:39 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15499 invoked from network); 14 Jun 2007 12:03:38 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 12:03:38 -0000
Received: (qmail 5766 invoked by uid 225); 14 Jun 2007 12:03:38 -0000
Delivered-To: beginners@perl.org
Received: (qmail 5759 invoked by alias); 14 Jun 2007 12:03:37 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h205.core.ignum.cz (HELO h205.core.ignum.cz) (217.31.49.205)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 05:03:26 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id 4B97F5A088B
	for <beginners@perl.org>; Thu, 14 Jun 2007 14:02:59 +0200 (CEST)
Received: from buchar.core.ignum.cz (buchar.local.ignum.cz [192.168.1.65])
	by hroch.core.ignum.cz (Postfix) with ESMTP id 69DAC5A0886
	for <beginners@perl.org>; Thu, 14 Jun 2007 14:02:57 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by buchar.core.ignum.cz (Postfix) with ESMTP id 2EAC82D54C9
	for <beginners@perl.org>; Thu, 14 Jun 2007 14:03:12 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: Perl Beginners <beginners@perl.org>
Date: Thu, 14 Jun 2007 14:03:10 +0200
MIME-Version: 1.0
Subject: Re: Hash Key is a Null Value
Message-ID: <46714A9E.718.5E3101B@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <467118A4.4080809@yahoo.com>
References: <467118A4.4080809@yahoo.com>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

Date sent:      	Thu, 14 Jun 2007 06:29:56 -0400
From:           	Mathew Snyder <theillien@yahoo.com>
To:             	Perl Beginners <beginners@perl.org>
Subject:        	Hash Key is a Null Value

> I'm building a hash using values from a database backend to an application we
> use in house.  The application has a field which contains a customer name.  This
> values is supposed to be set by the person handling the work but sometimes
> doesn't get done.  This leaves a NULL value in the database which, in turn,
> leaves me with a null key in my hash.
> 
> I've tried resetting it by assigning the value to another key so I can delete
> the element but so far nothing has worked.  I've tried to access it with
> $hash{}, $hash{""}, and $hash{''}.  None of these will allow me to access the data.

  $hash{undef()}

You need to use the () because otherwise Perl would automatically 
quote the undef. So $hash{undef} is equivalent to $hash{'undef'}.

You might also do something like this:

  my $NULL;
  print $hash{$NULL};

HTH, Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

(Wid>k?n.i p7r
From beginners-return-93031-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 09:25:18 2007
Return-Path: <beginners-return-93031-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64DPGL9010982
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 09:25:17 -0400
Received: (qmail 13154 invoked by uid 514); 4 Jul 2007 13:25:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13145 invoked from network); 4 Jul 2007 13:25:07 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 13:25:07 -0000
Received: (qmail 13005 invoked by uid 225); 4 Jul 2007 13:25:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 12994 invoked by alias); 4 Jul 2007 13:25:06 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h206.core.ignum.cz (HELO h206.core.ignum.cz) (217.31.49.206)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 06:24:59 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id 4A2EF6281B7
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:24:39 +0200 (CEST)
Received: from freza.core.ignum.cz (freza.local.ignum.cz [192.168.1.36])
	by hroch.core.ignum.cz (Postfix) with ESMTP id 38DE66281CC
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:24:39 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by freza.core.ignum.cz (Postfix) with ESMTP id 02152444C8D
	for <beginners@perl.org>; Wed,  4 Jul 2007 15:24:51 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: beginners@perl.org
Date: Wed, 04 Jul 2007 15:24:53 +0200
MIME-Version: 1.0
Subject: Re: hash comparison ideas
Message-ID: <468BBBC5.23029.2924667E@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <1183514264.855772.317770@q69g2000hsb.googlegroups.com>
References: <1183514264.855772.317770@q69g2000hsb.googlegroups.com>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

From: "thebarncat@gmail.com" <thebarncat@gmail.com>
> Hi
> I have  a script which contains 2 hashes of file names as the keys and
> md5 sums as the values. I am looking for ideas on fast and efficient
> ways to compare the 2 hashes in the manner of the pseudo code below
> 
> --
> %base_hash
> %new_hash
> 
> for keys in %new_hash
>   if key in %new_hash exists in %base_hash
>       compare  values and do something
>   else
>       do something else
> --

Let's convert this to Perl:

for my $key (keys %new_hash) {
 if (exists $base_hash{$key}) {
  if ($new_hash{$key} > $base_hash{$key} {
   do_something($key);
  }
 } else {
  do_something_else($key);
 }
}

Looks quite close to you pseudocode to me.

Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

nsst.en6
From beginners-return-92816-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 16:37:36 2007
Return-Path: <beginners-return-92816-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RKbYL9032156
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 16:37:34 -0400
Received: (qmail 21760 invoked by uid 514); 27 Jun 2007 20:37:26 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 21749 invoked from network); 27 Jun 2007 20:37:26 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 20:37:26 -0000
Received: (qmail 2444 invoked by uid 225); 27 Jun 2007 20:37:26 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2436 invoked by alias); 27 Jun 2007 20:37:25 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.176 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.176)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 13:37:21 -0700
Received: by wa-out-1112.google.com with SMTP id v27so481wah
        for <beginners@perl.org>; Wed, 27 Jun 2007 13:37:17 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=EIZ+gFjf5TGRRRXr/HE1TRLF1DexLJ58YPi1FAlwqhBsddNMFBhNome9VBIM5P+k256BBwEgUYLPkMF8tqwimPkrxBSeQsW3VvD1Jsg/xLfF695BJwjfIT5DuFVmICbj+TsBZEhMYSfbWVVLUpSHZ0KpaACVLoh0IhU1t3w3pQ8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=fHkeHACwsBeIKrOE/KDt/9N66isM8RZeKypuzlt/iAIUFhEfE4keaLlnCf8dgR6ccIrnF/BH2R35cE9kNPSBSYLXWzZBbarTvX6FPNneCloQjFKP5tNGNo2eFtsMwkagrzE3K/LMQ9Zpt1TiLM/pvE4nm34ETrPhMKnN66rP9Ng=
Received: by 10.114.95.1 with SMTP id s1mr823220wab.1182976637747;
        Wed, 27 Jun 2007 13:37:17 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Wed, 27 Jun 2007 13:37:17 -0700 (PDT)
Message-ID: <58ce48dc0706271337w6b3adea4q4f8b2224864753e8@mail.gmail.com>
Date: Wed, 27 Jun 2007 16:37:17 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Andrej Kastrin" <andrej.kastrin@siol.net>
Subject: Re: DBI, postgresql and large table
Cc: "beginners perl" <beginners@perl.org>
In-Reply-To: <4682C4B9.9050508@siol.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <4682C4B9.9050508@siol.net>

On 6/27/07, Andrej Kastrin <andrej.kastrin@siol.net> wrote:
> Dear all,
>
> I need to process postgresql table with DBI module. The script below
> works well for small tables, but when I want to process larger tables
> (100000 rows) out-of-memory occurs.
>
> Any suggestion? Thanks in advance,
> Andrej
>
> use strict;
> use warnings;
> use DBI;
>
> my $dbh = DBI->connect("DBI:Pg:dbname=medline;host=localhost",
> "postgres", "secret", {'RaiseError' => 1});
> my $sth = $dbh->prepare("SELECT text_a, text_b FROM tmp_table");
> $sth->execute();
>
> while (my $ref = $sth->fetchrow_hashref()) {
>     my $field_a = $ref->{'text_a'};
>     my $field_b = $ref->{'text_b'};
>     print "$field_a \t $field_b\n";
> }

* When does it fail and what is the exact error message?
* Have you tried to execute this command in an SQL editor (psql if I
remember correctly)?
* How much memory do you have on that box?

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

;tejunb 
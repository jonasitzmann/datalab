From perl6-all-return-81948-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 17:41:24 2007
Return-Path: <perl6-all-return-81948-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DLfOL9012824
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 17:41:24 -0400
Received: (qmail 31044 invoked by uid 514); 13 Jun 2007 21:41:22 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31039 invoked from network); 13 Jun 2007 21:41:22 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.3 required=8.0
	tests=BAYES_05,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,PLING_QUERY,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of dataweaver@gmail.com designates 64.233.162.237 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mPGrlbOlwMtQvKKsx27r/MnPFelwoSbYN4qHPcILHbqSjdTBTCRBjCcjmHdYCddjpNNe10f9oUVXxj+Aoc90Qfh5QU3O40X7R/UODUmFvortTPGfMm8WqSRsKC27QescRW0/9VSl2vttxX4bVGaVMjLJpide4+ZOjNbO1iclpD4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=fcGOAQ9JLq98rqqwP/KgBvwiN46nPd0EcUjGI7i4ncJwmcRALUyYb5iAUpakuHZo3XAQ+Rf+3zDvUtJSQmk1XMMJaPON8kpbxqcYCv8ZPNbWsYrsRk/Zf54M3PHgt00KbdMDJLbCQNvV1AzrOQLntzwvdFIygn86eISbkYje8tI=
Message-ID: <ef30550b0706131441h13049335vbbb5f699e30c6d3c@mail.gmail.com>
Date: Wed, 13 Jun 2007 14:41:02 -0700
From: "Jonathan Lang" <dataweaver@gmail.com>
To: "Charles Bailey" <bailey.charles@gmail.com>
Subject: Re: Generalizing ?? !!
Cc: p6l <perl6-language@perl.org>
In-Reply-To: <b78749dd0706131408r4768e54as75b3f71fd40d458b@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <061120072038.14824.466DB2B7000D3E23000039E822058844849D0E0909070DD20ED2059D0E03@comcast.net>
	 <ef30550b0706111403y50d449c0q5fa79c580f92c4c7@mail.gmail.com>
	 <7ca3f0160706111412u61a1a869xec62472e9cca113f@mail.gmail.com>
	 <b78749dd0706131408r4768e54as75b3f71fd40d458b@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,PLING_QUERY,SPF_PASS

Charles Bailey wrote:
> I'm concerned that the relevant precedent isn't just Perl5.  The ?: spelling
> of the ternary is pretty deeply embedded in programming languages -- I'm
> hard pressed to think of a widely used language in the past 10-15 years that
> spells it differently (though that may say more about my experience than the
> universe of "widely used" languages).  Put more practically, I don't think
> the issue is just moving people forward from Perl5; we need to think about
> whether it'll help or hinder users moving back and forth among several
> languages, or bringing familiarity with other languages to the process of
> learning Perl6.

In short, is C<:: ??> going to be Perl 6's C<< -> >>?

Again, this presupposes that C<: ?> is a feasible option (i.e.,
doesn't conflict with anything important) now that we have whitespace
disambiguation.  If it isn't, then this whole line of reasoning is
moot.  So: Is it feasible?

-- 
Jonathan "Dataweaver" Lang

     

oT ec  l 
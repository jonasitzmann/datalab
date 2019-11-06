From perl6-all-return-82366-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 14:46:08 2007
Return-Path: <perl6-all-return-82366-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5PIk7L9032589
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 14:46:07 -0400
Received: (qmail 32209 invoked by uid 514); 25 Jun 2007 18:46:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 32204 invoked from network); 25 Jun 2007 18:46:03 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.230 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=VR1CKoS1RvpmgG6Ytd3ey40vwMYCjWmEQ/mEdM24McofrbN+SjdFiPNzYMWw1Ioid22isAPB9EutLXVbnYGIAZJi0c7XefrBi4futXCucq8aIhuT5Q/expyH0hfmrX14hU+me7d9c/SeLUHZo/ul1dEd7FARzFKobvCPuMVThFM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=kNBOlPqpFatcVKGoGBH3e1QanhD/6GdxvFDWzYGH+K7Kc2i9sNoN6RkM0thlXlsLKYgGUvbnzX6m1BGsoD1WHG2KjWqLdGZ4OyWAmKkH7MoHTie+BQ3Ymp+yvtYBTQotSoT3WC9SJMrmh442vhV7m6s+RXtAwVhR72mtaoUzd6Y=
Message-ID: <8e8ee0d40706251145x6aba88cfm5af17bb22f20524d@mail.gmail.com>
Date: Mon, 25 Jun 2007 20:45:36 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #41915] [TODO] remove unused manifest-generating scripts
Cc: jerry.gay@gmail.com
In-Reply-To: <rt-3.6.HEAD-1276-1182795604-796.41915-74-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-41915@perl.org>
	 <8e8ee0d40611161357l1c5e2fa7rea1e8a96d15e41cf@mail.gmail.com>
	 <rt-3.6.HEAD-12281-1178478598-725.41915-74-0@perl.org>
	 <rt-3.6.HEAD-1276-1182795604-796.41915-74-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 25/06/07, Bernhard Schmalhofer via RT
<parrotbug-followup@parrotcode.org> wrote:
> On So. 06. Mai 2007, 12:09:58, bernhard wrote:
>
> > TODO: Check whether Parrot::Distribution::gen_manifest_skip() can be used
> > in mk_manifest_and_skip.pl or alternatively be deleted.
>
> Parrot::Distribution::gen_manifest_skip() and subsequently
> t/distro/manifest_skip.t have been broken for some time.
>
> Does anybody mind if I remove them?

It's ok with me.  IIRC I tried to remove them about a year ago, but
managed to break Parrot and never managed to get around to finding the
right way to remove them.

Paul

                 

c6s -t8e'
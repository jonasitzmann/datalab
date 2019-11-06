From perl6-all-return-82354-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 05:27:02 2007
Return-Path: <perl6-all-return-82354-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P9R1L9023684
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 05:27:01 -0400
Received: (qmail 14697 invoked by uid 514); 25 Jun 2007 09:26:57 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14692 invoked from network); 25 Jun 2007 09:26:57 -0000
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
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.237 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=JvPb38xGOI4Za+DVvA0jwE1dZFqkBOReTFzo6I4hd6X5wn9PSvkqbNhR2WuGIBXD+ZUnwGUFqBJ13zyFXOPzkMNQ2c1IYInTTCbiQxzdqvEIvjkaTmur5q1r/sZyBbrxcCZL4Jm083mUFJOXKK/WQ0C73FPDSvQ3OSIb64gUyZo=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=iirxom7tX9DiDYTnE+5it8oGAKdPGkycply9P85fkpVcVwFaCrQ5kluOOHZ7Lb39unAzPoAhjZf2eMj0cY/bSSSJVVOKWbfSuTlnXJE3cYHjIC828jUXP12Y1yvbD4olfRVSz15TCEbhI7aI2tdaTxDKNDQIwyz0Q8yWBEJiIJU=
Message-ID: <8e8ee0d40706250226q21d505d5w215aabf1e7b70c24@mail.gmail.com>
Date: Mon, 25 Jun 2007 11:26:31 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #41496] [TODO] config - profiling options should have their own step in config/init/defaults.pm
Cc: perl6-internals@perl.org
In-Reply-To: <rt-3.6.HEAD-1276-1182744538-982.41496-15-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-41496@perl.org>
	 <8e8ee0d40702130800u51d4d027oa2d67d88bdf428a4@mail.gmail.com>
	 <rt-3.6.HEAD-1276-1182744538-982.41496-15-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

kid51,

On 25/06/07, James Keenan via RT <parrotbug-followup@parrotcode.org> wrote:
> On Tue Feb 13 08:01:12 2007, ptc wrote:
> > The profiling options specified in config/init/defaults.pm should be
> > moved into their own 'step' of the configure process.
>
> Paul:  Can you explain your rationale for this?

This was one of my "convert TODO items in the code into RT tickets"
things, so it's not actually something I specifically wanted.  It is,
however, very good that you've come across the ticket so that it can
be discussed and perhaps discarded as necessary.

Paul

  

ytyF t-
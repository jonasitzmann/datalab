From perl6-all-return-82384-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 26 09:52:28 2007
Return-Path: <perl6-all-return-82384-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5QDqSL9011586
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 09:52:28 -0400
Received: (qmail 6710 invoked by uid 514); 26 Jun 2007 13:52:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6704 invoked from network); 26 Jun 2007 13:52:24 -0000
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
Received-SPF: pass (x1.develooper.com: domain of jerry.gay@gmail.com designates 66.249.92.168 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=r4IulORtsIaUcALksq1FF5IrbRVkPgS/69MwdRK4wbhjegvPFNEr7rpF9fOJs9e8OVYQ+DY1O0JbZTTfM98FfHv/KoHVAoZ30St/5yuqU6qNSVB09eofulxF2aXuEFhzjgCLsZneZTyfl5p6EYvWVHLm9q9vfhSZ5qncZlMveVE=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ggF/l6dCv/usNQ8p2q5qzH9dRn3/w5y3m5MLm2BGnHctxENRmsQXvg+jd9KPj0azL8ZXCcswQ7K90tRx7/P3Iz3+moc1Ta1oCdvpIHMFTOVxEhGPyIM/2V7z7YA9ySXU+IKcZ2wMYVMDE4ZqQvnmy13UYYBkFtw+9o3lqcupePc=
Message-ID: <1d9a3f400706260631h188ffebcle6b28b35c20ea252@mail.gmail.com>
Date: Tue, 26 Jun 2007 06:31:51 -0700
From: "jerry gay" <jerry.gay@gmail.com>
To: parrotbug-followup@parrotcode.org
Subject: Re: [perl #38844] [TODO] Make lint, splint and tags targets
Cc: perl6-internals@perl.org
In-Reply-To: <rt-3.6.HEAD-1276-1182852453-37.38844-15-0@perl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-38844@perl.org>
	 <29400193-3BF0-4ADB-B43B-4889ABDB3074@petdance.com>
	 <rt-3.6.HEAD-6516-1176470118-1445.38844-15-0@perl.org>
	 <rt-3.6.HEAD-7948-1182118586-1054.38844-15-0@perl.org>
	 <rt-3.6.HEAD-1276-1182852453-37.38844-15-0@perl.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/26/07, Paul Cochrane via RT <parrotbug-followup@parrotcode.org> wrote:
> I've a question about the tags target: it searches c, perl and pmc
> files.  Shouldn't it also search/process the .ops files (as c-language
> files)?
>
sounds like a fine idea to me.
try it out and see if there's some crazy reason it won't work.
~jerry



mbNb
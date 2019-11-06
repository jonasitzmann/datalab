From perl6-all-return-81979-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 20:28:48 2007
Return-Path: <perl6-all-return-81979-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F0SmL9027958
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 20:28:48 -0400
Received: (qmail 9416 invoked by uid 514); 15 Jun 2007 00:28:46 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9411 invoked from network); 15 Jun 2007 00:28:46 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 64.233.184.234 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=bgtyVjvijFRc61X5hDiyr2sy/Li0rrpDjl1g7cZGq0F9iW7kAsJxpNbRR483kfIM0MZPJPmh9nnW3SCua/kTq60AXaAzMPltFtMFsM2myRIO7OY7PaasJV/m2lc/zaqpfnKYPmOxTcCghMF8lcuudN4zhVQ42/W2ukUNi1HXjjI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=s5TegOwgnHC5KjuNCII39TU+Xo584TrvlFTbKf1W4aHdwHScPTQlofWXgLNJi/XWoBMNOmRQ2tJPE8/pM/FhyEILGNmViysc6m+Sf+7r6kXo3CttxKNCLPU7bkm1JIUYPlsz3En73X+kufxHc/tXEvYZoUMSQU3fT6Vu8wlYqW4=
Message-ID: <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com>
Date: Fri, 15 Jun 2007 10:22:20 +1000
From: "Damian Conway" <damian@conway.org>
Sender: thoughtstream@gmail.com
To: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
In-Reply-To: <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
	 <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
	 <467073C4.6020708@conway.org>
	 <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com>
X-Google-Sender-Auth: 7160ee0c862aea70
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

>   say :to(END);
>   =begin POD
>   blah blah blah
>   =end POD
>   END
>
> If I understand matters correctly, the "POD code" in the above example
> isn't POD code at all, but rather the content of a multi-line quote.

No. It's Pod. *Any* line that begins with '=begin' always starts a Pod
block. Always.

To get the multi-line quote, you'd need:

    say :to(END);
        =begin POD
        blah blah blah
        =end POD
        END

Damian

                 

leg=C ms0
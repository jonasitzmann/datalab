From perl6-all-return-81964-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 12:07:08 2007
Return-Path: <perl6-all-return-81964-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EG78L9023843
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 12:07:08 -0400
Received: (qmail 31433 invoked by uid 514); 14 Jun 2007 16:07:06 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31428 invoked from network); 14 Jun 2007 16:07:06 -0000
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
Received-SPF: pass (x1.develooper.com: domain of aankhen@gmail.com designates 66.249.82.230 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ZqFh7BYlQQ63DgQrszK/RBrGPLGbIgiA8LtNnpY8aWNsJfEdZm8DNOYtfCpKcEYuy+YevbZGRWWpLD1xnWgn2kp+LwwjaFhHc4/1FwdCR2vSoj+TzsHBNUXqbLBE3p3DTMISOHKH1wPUMwLdqkAGxQEtXAtDl4ldxO9iZLr5M7k=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=PyozSlAlVmzwkn2t4zfwThCK1KjHt2jXbvcmpKskTUTRRCTc/FUrmvmoVXHSicFR9s9Mu0HEEWxjGzrQljE6BNFNNR8aP8EmHsCEZVSIc5PEHPZtv+0r4Hct0G2Wd5b+J0xWao0+1cvXiG8p+ZOsRbDFqf2yXyUt5VMas7Rp49Q=
Message-ID: <ae697d050706140906l3cae6590icbeb1bf7270b4113@mail.gmail.com>
Date: Thu, 14 Jun 2007 09:06:40 -0700
From: Aankhen <aankhen@gmail.com>
To: perl6-language@perl.org
Subject: Re: POD <-> Code entanglement
In-Reply-To: <20070614151833.12191.qmail@lists.develooper.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Disposition: inline
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
	 <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
	 <467073C4.6020708@conway.org>
	 <20070614082341.GU31918@earth.overmeer.net>
	 <46711DC1.5020809@casella.verplant.org>
	 <20070614151833.12191.qmail@lists.develooper.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5EG78L9023843

On 6/14/07, Thomas Wittek <mail@gedankenkonstrukt.de> wrote:> It's a bit like HTML<->XML, where the former lacks most of the semantics> and makes the information processing - not to speak about a consistent> look over several documents - a lot harder.
Actually, that's incorrect.  HTML is a markup language with aparticular set of elements, some of which have semantic meaningattached and some of which don't.  XML, on the other hand, is a meansof writing your own markup languages; this has two consequences inthis context:
1. It is just as easy—if not easier—to have an XML dialect containingelements with absolutely no meaning.2. Even if the dialect contains only elements with well-definedsemantics, it's still completely meaningless to a generic XML parser.A parser must be intimately familiar with the dialect to understandthat any element has semantic meaning.
If you were referring to XHTML vs. HTML, I would like to point outthat XHTML 1.0 is merely a reformulation of HTML 4.01 in XML.  Theelements and their semantics are unchanged.  XHTML 1.1 modularizes theDTD and adds a few Ruby (annotation, obviously, not language)elements, in addition to a few other minor changes.  As for XHTML 2.0,that's still a long way off. :-)-- Aankhen(We have no branches.)



gCahTF
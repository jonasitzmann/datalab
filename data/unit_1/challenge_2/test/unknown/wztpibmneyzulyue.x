From perl6-all-return-82479-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 04:36:04 2007
Return-Path: <perl6-all-return-82479-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l618a3L9030901
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 04:36:04 -0400
Received: (qmail 22294 invoked by uid 514); 1 Jul 2007 08:35:58 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 22289 invoked from network); 1 Jul 2007 08:35:58 -0000
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
Received-SPF: pass (x1.develooper.com: domain of lrpalmer@gmail.com designates 209.85.146.181 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=aWFWk0tUDqIHYgqL5NAwhVTq3qXBN8RAJ8gs6PxFM7XqX1LIDwuKSn+cVvfHFiaQ8c1DhUVu3bF234nR4ki/8wTbIBmlVfyxbh1ST7So3yed0d9DuioIRsqpnLDqtaN23dltcEULTDvD7GqEjhL99wOZF7Gjj69f6bDwIx9qXjU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=KXKTnMmngo1aHC50RgNANeCq1vHgLHyLGWd5rGp7QMIugAxMbNaY/AawDvTGeU3AA/8fJ687bN3iCtGY64LzMdlSkj80qpAOf30AzDtMpr37Gzwxg4XRXUDaWlWb+4hnYX5ZIUA/bYbpLtEsaiEoefU+2pHe6Fy3gdiWPiF0O/0=
Message-ID: <7ca3f0160707010135l5db473d3k2205c592f731a6b3@mail.gmail.com>
Date: Sun, 1 Jul 2007 02:35:33 -0600
From: "Luke Palmer" <lrpalmer@gmail.com>
To: "Amir E. Aharoni" <amir.aharoni@gmail.com>
Subject: Re: **{x,y} quantifier
Cc: perl6-language <perl6-language@perl.org>
In-Reply-To: <97f280ea0707010130hfbc2f0ana1611a54d68d33d3@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <97f280ea0707010034w16854fb3o462a8208ad965780@mail.gmail.com>
	 <7ca3f0160707010056v2fbf2eb5u66d5e71c575d9f26@mail.gmail.com>
	 <97f280ea0707010130hfbc2f0ana1611a54d68d33d3@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 7/1/07, Amir E. Aharoni <amir.aharoni@gmail.com> wrote:
> > > please correct me if
> > > i say something stupid or if this has already been discussed before.)
>
> > Another important loss if we were to go with <1..3> would be the
> > ability to have runtime-dependent ranges; e.g.:
> >
> >     / ($ntimes) x**{$ntimes} /
>
> That's exactly what i meant by "something stupid".

That's quite alright, because both interpretations of that sentence
were valid :-).  I meant:

    / $ntimes := (\d+) x**{$ntimes} /

Luke

                  

0D
"eMxea-oOi7
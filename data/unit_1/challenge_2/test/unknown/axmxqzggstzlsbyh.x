From perl6-all-return-81980-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 21:06:45 2007
Return-Path: <perl6-all-return-81980-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F16hL9028175
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 21:06:44 -0400
Received: (qmail 18056 invoked by uid 514); 15 Jun 2007 01:06:41 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 18051 invoked from network); 15 Jun 2007 01:06:40 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.239 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=LUc4L3KBVEJdcawKgfJzawy8v88YLFCSsQ9hak0Ma+R0nji4JMbr1IQuy21GzTr5XDHhQ4iKftIaUhMm2V4GtCTkjehDWvl3pmIgOxQMPlJiYTftfa69V6nUrMsz8ifBFglGWZ0oOeifb8h0X1/POGgB5dgi0iagG882GnG1Sxw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=uNAq2AdbxZJlke7wXV/zN19yWLWgp+BZ+j1OT7c6Ec1Fe2ToS0PjRdridW0Ahll+Fv0iV2AisZ3zap5LGSeF2AnPnLeaubZzxNJTfXW02+Q9lck4NoGQYGC2hMTXeoLE2WzFG8pOvKb1HtLks+3aoKEfl/lo9R/e2AnZeTbpZy8=
Message-ID: <58ce48dc0706141806k797fd1d5hda472cd12385e908@mail.gmail.com>
Date: Thu, 14 Jun 2007 21:06:12 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Damian Conway" <damian@conway.org>
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
Cc: "perl6-language@perl.org" <perl6-language@perl.org>
In-Reply-To: <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
	 <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
	 <467073C4.6020708@conway.org>
	 <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com>
	 <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/14/07, Damian Conway <damian@conway.org> wrote:
snip
> To get the multi-line quote, you'd need:
>
>     say :to(END);
>         =begin POD
>         blah blah blah
>         =end POD
>         END
>
> Damian
>

Would this work as well?

say :to(END);
\x{3D}begin POD
blah blah blah
\x{3D}end POD
END

     

at-d6
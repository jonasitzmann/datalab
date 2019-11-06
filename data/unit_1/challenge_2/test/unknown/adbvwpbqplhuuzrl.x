From perl6-all-return-81772-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 13:02:44 2007
Return-Path: <perl6-all-return-81772-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53H2hhB017768
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 13:02:44 -0400
Received: (qmail 19127 invoked by uid 514); 3 Jun 2007 17:02:37 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19122 invoked from network); 3 Jun 2007 17:02:37 -0000
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
Received-SPF: pass (x1.develooper.com: domain of dataweaver@gmail.com designates 64.233.162.237 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=nXSX0zpK3yIcRSFU8dXLbS2ubZLPljcG04vlX/L6AVjh4YANtbvxq8jQBD4vxgM+aCqvlymcLnjM8GF/iZmxuW83AE85EJSxxqvsnvc5DkzDyWASaLCJncKCdpuMPUOviduVB/HYtz3pV+x9fmw3iCUYOyI5sUDFHtUbkFBhWdg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=p4JgvE9QLznCOtLcRn/WQu8u3BexPqTTqjk89eeM0bY9QKeCCk1jPZaFc1lfEsaeg04LsoVNWP2zBi7D5wT7YnNMXjBm4Vbw/GtndYJfhmNtLCQyAnA7HGXz690JDDwwTjkG1GaCO1RfdKBj14VDJj1BaMbu+BFBXnxJEVZz5S4=
Message-ID: <ef30550b0706031001jc3ca9bfy669dd64ea38c58a7@mail.gmail.com>
Date: Sun, 3 Jun 2007 10:01:00 -0700
From: "Jonathan Lang" <dataweaver@gmail.com>
To: "Mark J. Reed" <markjreed@mail.com>
Subject: Re: 'x' vs. 'xx'
Cc: "Chas Owens" <chas.owens@gmail.com>, p6l <perl6-language@perl.org>
In-Reply-To: <f60fe000706030937m6c15eaf8n2dbe5b2a73455e58@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <ef30550b0706021517m281093c3qcf1e12d99debc8b7@mail.gmail.com>
	 <58ce48dc0706021820n444ff9a4v44aeab16f25ee62b@mail.gmail.com>
	 <ef30550b0706022108p3f3d448dv4f66a9f1b8198655@mail.gmail.com>
	 <58ce48dc0706030219x1c961624r41500cd12c01d39@mail.gmail.com>
	 <ef30550b0706030318m245a3c46j2cb02894d7cde444@mail.gmail.com>
	 <58ce48dc0706030402o52609a47y38ff1096679d04d@mail.gmail.com>
	 <ef30550b0706030927o63e8ee32ub4793b7ace08559a@mail.gmail.com>
	 <f60fe000706030937m6c15eaf8n2dbe5b2a73455e58@mail.gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Mark J. Reed wrote:
> Is "item context" what we're calling scalar these days, or something else?

According to S03, it does indeed appear that "item context" is the
current terminology for what perl 5 called "scalar context":

  The item contextualizer

      item foo()

  The new name for Perl 5's scalar contextualizer. Equivalent to $().
We still call the
  values scalars, and talk about "scalar operators", but scalar
operators are those
  that put their arguments into item context.

-- 
Jonathan "Dataweaver" Lang

               

1eP/
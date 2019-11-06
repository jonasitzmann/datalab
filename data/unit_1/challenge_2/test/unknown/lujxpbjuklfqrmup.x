From perl6-all-return-82216-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 20:33:08 2007
Return-Path: <perl6-all-return-82216-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M0X7L9031488
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 20:33:08 -0400
Received: (qmail 26241 invoked by uid 514); 22 Jun 2007 00:33:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 26236 invoked from network); 22 Jun 2007 00:33:04 -0000
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
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 209.85.146.177 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=HNRGsymPZiWF7specXdr2EqswuFIh/Mln4XrYHWoF8He4+qHjnxfe1uxN1s3yl7jB3LsDC1b37tyh5mZzxMYiqUa71UwwWea0bdBCyMwwIG+uTBo+Dt7RE21Q6KIOUm5ls2B4fKFOsAvQzkHzI/cX7D4NWdb9tbAQlart7avBN4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=QF9f7oLdFhNs0p194Ibjl6SaidgqEUgzxlK+0OFTzRc0s/u1RbEp/12ZPE4oUfC7HuaeXbJ+tPWQafpdKPzPQIsIJL3JJ1vhzsuAnW7+eZ1OYk23jW4Q8rqcFCnlZKXuwButbQEMpY/ocr540M+0kDx0IYtg7sVP7sc5D+AVRBw=
Message-ID: <467B1457.2060207@conway.org>
Date: Fri, 22 Jun 2007 10:14:15 +1000
From: Damian Conway <damian@conway.org>
Reply-To: damian@conway.org
User-Agent: Thunderbird 2.0.0.4 (Macintosh/20070604)
MIME-Version: 1.0
To: Larry Wall <larry@wall.org>
CC: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: Referring to source code within Perldoc: the new A<> code
References: <4678B887.8090303@conway.org> <20070621202113.GR6900@stripey.com> <20070621231752.GA4149@wall.org>
In-Reply-To: <20070621231752.GA4149@wall.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Damian Conway <thoughtstream@gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Hi Larry.

You wrote:

> : Please can you explain the reasoning for choosing antecedent, rather
> : than successor?
> 
> I think having to pick either one or the other is likely a design smell.
> Maybe it would be better to have predeclared extractors than to have a
> search strategy baked half-heartedly into A<>.

I'm very keen to improve the A<> mechanism, but I'm not clever enough to work 
out what you mean by "predeclared extractors" in this context. To help me, 
could you show us how something like:

      method foo (Int bar) {...}

      =para
      The A<method> method take the following argument list: A<(..)>


would look under such an alternative scheme?

Damian

    

�:wregUttedm1a6
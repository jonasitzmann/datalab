From perl6-all-return-82108-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 15:14:15 2007
Return-Path: <perl6-all-return-82108-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JJEEL9000430
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 15:14:14 -0400
Received: (qmail 21638 invoked by uid 514); 19 Jun 2007 19:14:11 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 21622 invoked from network); 19 Jun 2007 19:14:11 -0000
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
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of jjuran@gmail.com)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: domain of jjuran@gmail.com designates 64.233.162.231 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:in-reply-to:references:mime-version:content-type:message-id:cc:content-transfer-encoding:from:subject:date:to:x-mailer;
        b=qIlSM2IUvs5XBXhqqZwLZIAvLYXUS6wVOg9h5QTq47pyCm3sjPJ201YjsXJODQbdy3YVlocqlwR93UKifdjHvmWapSKZ0TqFGodmZt9ZD3mOar32YA8J0nDvTwGnyKo0cNCBFD8Y2B5oNBmPOr631bkhfNUAfKW8rGgMSK3DCj4=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:in-reply-to:references:mime-version:content-type:message-id:cc:content-transfer-encoding:from:subject:date:to:x-mailer;
        b=XBmb0VkzHdAwo5EEaPrQzhjbWsY89F/aS/HqWmI+sGJIu+USvXOOpx3HLy8lUPX+uxv5dmY8iymLcel/2dvYa9NxlatTS2VthHi3memEVR+3VsCoyNlyyS15B17ktBCdumu5N1exBb77sl1KzcOzRjAsY8AQdRhiN5Vh8Ajn1XI=
In-Reply-To: <200706190013.18145.chromatic@wgz.org>
References: <200706190013.18145.chromatic@wgz.org>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <23731B28-FC78-470E-9F3A-6C5045645284@gmail.com>
Cc: parrot-porters@perl.org
Content-Transfer-Encoding: 7bit
From: Joshua Juran <jjuran@gmail.com>
Subject: Re: Simplifying Marking with a Macro
Date: Tue, 19 Jun 2007 12:13:20 -0700
To: chromatic <chromatic@wgz.org>
X-Mailer: Apple Mail (2.752.3)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_NEUTRAL

On Jun 19, 2007, at 12:13 AM, chromatic wrote:

> I hate seeing repeated code structures.  We could simplify the mark 
> () entry in
> plenty of PMCs with a macro something like:
>
> #define MARK_UNLESS_NULL(interp, struct, name) \
>     if (struct->name) \
>         pobject_lives(interp, (PObj *)struct->name)

Or better yet:

#define MARK_UNLESS_NULL(interp, struct, name) \
	if (struct->name) \
		pobject_lives(interp, (PObj *)struct->name); \
	else \
		(void) NULL

Josh


     

rto.
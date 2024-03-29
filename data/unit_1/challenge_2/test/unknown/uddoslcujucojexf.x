From perl6-all-return-82076-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 03:48:03 2007
Return-Path: <perl6-all-return-82076-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5J7m2L9026571
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 03:48:02 -0400
Received: (qmail 3474 invoked by uid 514); 19 Jun 2007 07:47:59 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3469 invoked from network); 19 Jun 2007 07:47:59 -0000
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
Received-SPF: pass (x1.develooper.com: domain of jrisom@gmail.com designates 64.233.166.181 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=VIEyCGXZ+6mSAoGHfhcJ8cjrlvt8P2wyr8oDQqNWBw8LShjQAj0k1coZNscLTmTZHS88Xudz3FWLr320dYkDU75Opbs/tuXqlgcRedHXRkTgPm73cEmnnVG5Yu7QzojccziVoKK7ZH4TaaJsmmt2xrO5St/jHZSIerNKqPm5arw=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:in-reply-to:references:mime-version:content-type:message-id:content-transfer-encoding:cc:from:subject:date:to:x-mailer;
        b=RCXK1nJDuMZAXcc5ebF9vFJe89QEEqgMkGnsv7JRYA7zA+5NtT2kdK0NKQpk7l4gZxiVc8kvXINdidL2lWIGZAfz+V5t6vy62wbwqDVuj1ixxu8umxUscUwwBeznyXY6sc5kKUlWboK2c7TzKApbmekwe90YMKFMHaRraMMU7tQ=
In-Reply-To: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
References: <65994EAC-9723-4C2B-88B4-AA72456034B7@petdance.com>
Mime-Version: 1.0 (Apple Message framework v624)
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <493fbf7b54258e09b04f7dbcac4b843c@gmail.com>
Content-Transfer-Encoding: 7bit
Cc: Perl 6 Internals <perl6-internals@perl.org>
From: Joshua Isom <jrisom@gmail.com>
Subject: Re: memcpy
Date: Tue, 19 Jun 2007 02:48:23 -0500
To: Andy Lester <andy@petdance.com>
X-Mailer: Apple Mail (2.624)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS


On Jun 18, 2007, at 4:48 PM, Andy Lester wrote:

> Is there a reason we use
>
>   memcpy( dest, src, sizeof(FOO) );
>
> instead of
>
>   *dest = *src;
>
> The latter should be the exact same code, but be much less likely to 
> be screwed up.

No, they're extremely different.  In the first, the data of FOO is 
copied to dest, so dest can be modified without changing src.  In the 
second, src and dest point to the same data.  If you modify one, all 
are modified.  If you want to clone something, or just move it to a new 
location, you can't just set the pointer.  If I'm missing something, 
well maybe someone who knows more can provide more advice.

> At the very least we should be using:
>
>   memcpy( dest, src, sizeof(*dest) );
>
> Of course, I'm only talking about when we're passing around structs.  
> Clearly this won't work everywhere.
>
> --
> Andy Lester => andy@petdance.com => www.petdance.com => AIM:petdance
>
>
>
>

               

  yAf>"Ca+y:1
es
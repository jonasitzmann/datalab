From beginners-return-92584-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 10:49:49 2007
Return-Path: <beginners-return-92584-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KEnmL9011193
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:49:49 -0400
Received: (qmail 12552 invoked by uid 514); 20 Jun 2007 14:49:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12543 invoked from network); 20 Jun 2007 14:49:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 14:49:41 -0000
Received: (qmail 27708 invoked by uid 225); 20 Jun 2007 14:49:40 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27689 invoked by alias); 20 Jun 2007 14:49:39 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 64.233.184.235 as permitted sender)
Received: from wr-out-0506.google.com (HELO wr-out-0506.google.com) (64.233.184.235)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 07:49:36 -0700
Received: by wr-out-0506.google.com with SMTP id 50so190154wri
        for <beginners@perl.org>; Wed, 20 Jun 2007 07:49:32 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=eYJWHGobi5/gbHqQMC8EEhaFuRqm7Umv9dMWPNRl5OpqjvS5yT7mZlnTN78CjnGsJBAGEA/tQqfzupnJ3ytBT+FSeSlvwWVFgYWhZzwIJPSkGF7OciLuDxFmXOoPND8GQAwqoxa2BrxhVi9Vd7OCsMh1poM2kTPKMmBA8wSgZFA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=SeUx3t3vjUTMs0kiVbgMQ501mm+namiGoqXswZpmvcN5jty0t2j0T8lGCjy9g4Rnrxf7WdnnBX5cEqTK8OQ4/4wZYidnqAbOVq5Md3YpqNdQteLVgOjnLOO/VjiiBwcTG/GaO7F3HIBM6ue8mLefT8Pl2GGrO7Uv3rxbl7/OPGU=
Received: by 10.90.52.18 with SMTP id z18mr437147agz.1182350972299;
        Wed, 20 Jun 2007 07:49:32 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Wed, 20 Jun 2007 07:49:32 -0700 (PDT)
Message-ID: <31086b240706200749l1c8f6f71o2c17dd7921a0943c@mail.gmail.com>
Date: Wed, 20 Jun 2007 07:49:32 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "Tony marquis" <tony.marquis@feinc.com>
Subject: Re: parse mime email
Cc: beginners@perl.org
In-Reply-To: <46793224.1020305@feinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <46793224.1020305@feinc.com>
X-Google-Sender-Auth: cb7c27256e8db6c2

On 6/20/07, Tony marquis <tony.marquis@feinc.com> wrote:

> I'm trying to read the body and the attachment in a mime message. I keep
> getting the folling error.
>
> Use of uninitialized value in pattern match (m//) at
> /usr/share/perl5/Email/MIME/ContentType.pm line 24.

That means that at or near line 24 of the ContentType.pm file, there's
a pattern match. Either the pattern itself, or the string that it's
supposed to match, comes from a variable; but that variable held undef
when Perl got there. If you examine the code around line 24, or stop
at the right point with the debugger, you might be able to tell what's
missing.

Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

./s/895
eeeayr
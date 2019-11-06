From beginners-return-92406-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 08:23:43 2007
Return-Path: <beginners-return-92406-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ECNfL9021306
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 08:23:42 -0400
Received: (qmail 25696 invoked by uid 514); 14 Jun 2007 12:23:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 25687 invoked from network); 14 Jun 2007 12:23:32 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 12:23:32 -0000
Received: (qmail 18425 invoked by uid 225); 14 Jun 2007 12:23:30 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18367 invoked by alias); 14 Jun 2007 12:23:24 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.178 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 05:23:22 -0700
Received: by wa-out-1112.google.com with SMTP id v27so647869wah
        for <beginners@perl.org>; Thu, 14 Jun 2007 05:23:03 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=cQ+C/FbszQMQipXTnBpY07fAxjhigbaF+P+EDMYkDGMnoMGz4i53ctXST8iC88h5gPLetHVYuKIYoyMR19v6fzdgjUOQ1twcb+Nab1AJx7Nu/2BVXYT3O89/nPUpEQWAUZW6xVu3bDW3z9P0eGmOVEsy+/Hx0CMt+Af0tyTO31g=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=mrOigcCUYi/TaXAtZAll6sZvnWu2jdoBoqarP0nn9hvXAHGk1qeiqIQwgsEQ0LrDcF8SsXWWNyAXq7dqEyvQPZ9wC3GC/wcFiwf/7zfhN1Dwyc9CZxqJ7NowAuxYe56XLDeuzr35GcQc7UpK41O8NWDJzVDlSzrRBoiLBoUjdX0=
Received: by 10.114.199.1 with SMTP id w1mr1816879waf.1181823776995;
        Thu, 14 Jun 2007 05:22:56 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Thu, 14 Jun 2007 05:22:56 -0700 (PDT)
Message-ID: <58ce48dc0706140522t2b30c916pcc0fe5d83c3506e4@mail.gmail.com>
Date: Thu, 14 Jun 2007 08:22:56 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Mathew Snyder" <theillien@yahoo.com>
Subject: Re: Hash Key is a Null Value
Cc: "Perl Beginners" <beginners@perl.org>
In-Reply-To: <467118A4.4080809@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <467118A4.4080809@yahoo.com>

On 6/14/07, Mathew Snyder <theillien@yahoo.com> wrote:
> I'm building a hash using values from a database backend to an application we
> use in house.  The application has a field which contains a customer name.  This
> values is supposed to be set by the person handling the work but sometimes
> doesn't get done.  This leaves a NULL value in the database which, in turn,
> leaves me with a null key in my hash.
>
> I've tried resetting it by assigning the value to another key so I can delete
> the element but so far nothing has worked.  I've tried to access it with
> $hash{}, $hash{""}, and $hash{''}.  None of these will allow me to access the data.
>
> I could probably reassign it through more complicated means but that would
> require creating objects and accessing methods I'm not familiar with.  If anyone
> knows an easier way to access a null key I'd appreciate hearing it.
>
> Thanks
> Mathew
> --
> Keep up with me and what I'm up to: http://theillien.blogspot.com

Jenda's solution should work, but if you are just going to throw it
away (instead of logging it as a problem) then why fetch it from the
database in the first place?  Add "customer_name is not null" to the
where clause.  Fetching data you are not going to use is unkind to the
database, the network, and your program.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

diimt65aNC
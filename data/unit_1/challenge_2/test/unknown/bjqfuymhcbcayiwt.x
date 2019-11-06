From beginners-return-92122-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 17:52:56 2007
Return-Path: <beginners-return-92122-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53LqthB020097
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 17:52:56 -0400
Received: (qmail 24376 invoked by uid 514); 3 Jun 2007 21:52:46 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 24366 invoked from network); 3 Jun 2007 21:52:46 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jun 2007 21:52:46 -0000
Received: (qmail 27658 invoked by uid 225); 3 Jun 2007 21:52:45 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27653 invoked by alias); 3 Jun 2007 21:52:45 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.166.179 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.179)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 03 Jun 2007 14:52:37 -0700
Received: by py-out-1112.google.com with SMTP id f47so2126747pye
        for <beginners@perl.org>; Sun, 03 Jun 2007 14:52:33 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=h+admd1KdAZxnMG1t/YvJK0haN9BZ4U9QgGNhALKq1FXBjUHK+biznpm8rEHAhYBvB31cli0+BKM1YEPnAfC6Tos1oreFgyvN9HMAuBzmMfeXN47ULrbdlTn7K5PqzwSZK/f1+1WBt8/uBFQbekPdYvZSmgPoRms5WJ28L7Ykh0=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Y1a+KRav2LmflFQ2XDKVmOe2gX3M+CEuwRD2pBmbl7rySomQ/CJNZo8mR4Ger030YEetWpQVxUaHpVdS+XMiCPdOEyAUEpWUx12etGGbCqTRP97ejyKkYdfeG8SDH42Up1npxPRGT6skfcsjLbKGXIQmngoRTB0qGYwx3yvV+Qw=
Received: by 10.114.58.1 with SMTP id g1mr4119102waa.1180907552764;
        Sun, 03 Jun 2007 14:52:32 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Sun, 3 Jun 2007 14:52:32 -0700 (PDT)
Message-ID: <58ce48dc0706031452x3869837ch51125dee86ecd654@mail.gmail.com>
Date: Sun, 3 Jun 2007 17:52:32 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Mike Lesser" <exceptions@earthlink.net>
Subject: Re: Paths, Spaces, Getopt::Long
Cc: "Beginners Perl" <beginners@perl.org>
In-Reply-To: <58ce48dc0706031449u3c1b0c24xa847e79146d02955@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <6632C865-BF02-4D35-81B9-7E1EA97C3DF0@earthlink.net>
	 <8B1F59C6-9DFF-41D0-9B95-C549580A6EB9@earthlink.net>
	 <58ce48dc0706031449u3c1b0c24xa847e79146d02955@mail.gmail.com>

On 6/3/07, Chas Owens <chas.owens@gmail.com> wrote:
snip
> my $tidy = "/usr/bin/tidy";
> my @tidy_args = qw(--foo --bar -- example);
> my $path = get_path();
> my $file = $path . get_file();
>
> system($tidy, @tidy_args, $file);

Opps, forgot the error checking.

system($tidy, @tidy_args, $file)
    or die qq("$tidy @tidy_args $file" failed: $?";

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

mu:tst
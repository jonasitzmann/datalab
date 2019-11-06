From beginners-return-92909-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 14:33:15 2007
Return-Path: <beginners-return-92909-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TIXDL9029453
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 14:33:14 -0400
Received: (qmail 16913 invoked by uid 514); 29 Jun 2007 18:33:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16900 invoked from network); 29 Jun 2007 18:33:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 18:33:06 -0000
Received: (qmail 15704 invoked by uid 225); 29 Jun 2007 18:33:05 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15688 invoked by alias); 29 Jun 2007 18:33:04 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.225 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.225)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 11:33:01 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1008848wxc
        for <beginners@perl.org>; Fri, 29 Jun 2007 11:32:57 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=kVwhCeK6HqaPjo7iJZh7ZzdyjXvt9JtUHw/LKPIs19iVuIS8bZP07kJ8CabEfY9HbT+B1ThOqJdAJQzIJ4xrIuFSYwPqFbdYFUt2GYfcwOije0zZjTZOIfxscnvhzsDlksPbdGNGzq/wIuvTHTuPvy7FzfCksl+SXdQ9I1wWovc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=AV2CKkmEzO29VRRmK/2Dkqly+wP9LmIl/WQVkLDJvhv3DX5D4lE2ROwh+KqK3fl9gka5T3tVOe96JW74g7b2gDv+AdU+q5962MQIJEo8b5JMvYNyafVrB12u8w5Du3shiNBtnvoLfdg01+Vf/GCiXxfQNqPatKqR15nVP1xRz40=
Received: by 10.90.81.14 with SMTP id e14mr3587999agb.1183141977455;
        Fri, 29 Jun 2007 11:32:57 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Fri, 29 Jun 2007 11:32:57 -0700 (PDT)
Message-ID: <31086b240706291132h1e0b74alfbfbef86c2af7f64@mail.gmail.com>
Date: Fri, 29 Jun 2007 11:32:57 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: Ved <vedpsingh@gmail.com>
Subject: Re: Adding a line in a file inside many directories
Cc: beginners@perl.org
In-Reply-To: <1183089858.923636.280360@e16g2000pri.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183089858.923636.280360@e16g2000pri.googlegroups.com>
X-Google-Sender-Auth: 5f25ee1b31f6494d

On 6/28/07, Ved <vedpsingh@gmail.com> wrote:

> open (VEDIN, 'list_of_dir.txt') or die "Cannot open 'File.txt' $!";

Why does the error message mention the wrong file name?

> my @rgstr=<VEDIN>;
>
> foreach my $file_list (@rgstr) {
>   print $file_list ;    #printing list of dir

The items in this list haven't been chomped, have they? So each item
ends with a newline.

> open (dirIN, '$file_list/kat.s') or die "Cannot open 'File.txt' $!";
> #This is not working

If $file_list ends with a newline, I wouldn't expect it to work. Make
sure you're trying to open the correct filename, and make sure that
you mention the correct filename in the error message from die.

Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

NIar ags6eene
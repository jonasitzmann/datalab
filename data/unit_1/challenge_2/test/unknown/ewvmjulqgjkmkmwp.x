From beginners-return-92094-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 20:20:36 2007
Return-Path: <beginners-return-92094-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l520KYhB016687
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 20:20:35 -0400
Received: (qmail 31353 invoked by uid 514); 2 Jun 2007 00:20:23 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31344 invoked from network); 2 Jun 2007 00:20:22 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jun 2007 00:20:22 -0000
Received: (qmail 17699 invoked by uid 225); 2 Jun 2007 00:20:22 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17692 invoked by alias); 2 Jun 2007 00:20:20 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.231 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.231)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 17:20:13 -0700
Received: by wx-out-0506.google.com with SMTP id r21so738420wxc
        for <beginners@perl.org>; Fri, 01 Jun 2007 17:20:09 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=XjQ4bWklswNZJ0Npou+O2Tl3UoobbEJNvYZP4H8oITQNHzJuGiDPSQn8ylUp2XjWMwYTxsuD/6U1iU8ef0EM9D88Od/7CJHIgCScUv86v0bHKAR+SEjHOohgdI2MCriZ4++bEbDEFs4jwOc/KAMzKSXf9IXzRtIguUDch4YI+9o=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=PCOnDfyeg0YfMaLo+PG2se1nIRpfbFneI+spANKmsW/yBziagEUtFr2DM5z2yh4/eEIZgTQKhrUjNXQX6AtmvMi4eXvFOGPSjSgUG0oKWVgz5WqlN+88dfyGAANQAHt9rCtKRnj0wiKWDlPPv8318NBWFdkmKXJeB1273bMptoI=
Received: by 10.90.113.18 with SMTP id l18mr2375763agc.1180743609288;
        Fri, 01 Jun 2007 17:20:09 -0700 (PDT)
Received: by 10.90.113.16 with HTTP; Fri, 1 Jun 2007 17:20:09 -0700 (PDT)
Message-ID: <31086b240706011720g6a76d4b5waf0695a54e3b0baf@mail.gmail.com>
Date: Fri, 1 Jun 2007 17:20:09 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: Alma <almatirkey@gmail.com>
Subject: Re: authentication check from file
Cc: beginners@perl.org
In-Reply-To: <1180713180.391212.86030@g37g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1180713180.391212.86030@g37g2000prf.googlegroups.com>
X-Google-Sender-Auth: bc8fc4902dec5cf6

On 6/1/07, Alma <almatirkey@gmail.com> wrote:

> I have to store the authentication details like the user_id & password
> in a file .

You're saying, you're going to have a file which contains one or more
user_id and password pairs, yes?

> I am using postgres db & apache2.. , my search has landed me to
> mod_auth_pgsql.

You probably want to use the standard authentication system that
Apache includes, most likely with an .htaccess file or something
similar. Check with your webmaster or system administrator. If the
that person is you, check the Apache documentation, or an Apache help
forum.

But if you somehow need to do this from Perl code, it's not hard. You
can use the crypt() built-in function to scramble the password, then
check it something like this.

  # These come from the user, somehow
  my $username = 'claimed username';
  my $attempt = 'password attempt from user';

  # Get this one from the file
  my $scrambled = &scrambled_password_for($username);

  if ($scrambled ne crypt($attempt, $scrambled)) {
    &deal_with_bad_password;
    exit;
  }
  # Clear sailing from here

There are other functions you could use instead of crypt, too. But
going with the tried-and-true Apache authentication beats
rolling-your-own for security, six days a week and twice on Sundays.

Hope this helps!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




 Mek. r.pc.m  n 
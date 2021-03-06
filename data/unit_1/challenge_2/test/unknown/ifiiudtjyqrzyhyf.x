From beginners-return-92414-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 09:01:47 2007
Return-Path: <beginners-return-92414-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ED1kL9021812
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:01:46 -0400
Received: (qmail 21839 invoked by uid 514); 14 Jun 2007 13:01:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 21820 invoked from network); 14 Jun 2007 13:01:37 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 13:01:37 -0000
Received: (qmail 11280 invoked by uid 225); 14 Jun 2007 13:01:36 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11271 invoked by alias); 14 Jun 2007 13:01:35 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.227 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.227)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 06:01:31 -0700
Received: by nz-out-0506.google.com with SMTP id x7so554972nzc
        for <beginners@perl.org>; Thu, 14 Jun 2007 06:01:25 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=kdIcHbvESEf7k9SdoD2sEkxg9A+KhevBUDEPMfl/D3t9jdNs8SAanfYffpy9YbeTeVzq2D/5kDtAMWshLG/gMhX93WzwtvIXcrK11AGu56AuAw3liUUehNLOP9XBOOWpPojOD5YWsOYb5W9Fx6D/7AOT21DqeeNeqDFc7XKjOkg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=fUICXgT7pmn4nc4XzUzJGh0ptF3KKHcECjzQIDCNXws3f2iLMyUYMeVg88cQt/RR3j0dQ7xgg0k24RZkFZvO9W5Kd8csouXtQeEkUlPN8q3zi2C5YAV44ZJEh7JB1rav6cIfw/KwQxMabzjNbPE7q5g+3+P08roH/9wG1Hmsz1I=
Received: by 10.114.79.1 with SMTP id c1mr1811869wab.1181826085348;
        Thu, 14 Jun 2007 06:01:25 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Thu, 14 Jun 2007 06:01:25 -0700 (PDT)
Message-ID: <58ce48dc0706140601g1912b7b9vca59cecf525f2299@mail.gmail.com>
Date: Thu, 14 Jun 2007 09:01:25 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Clif Hudson" <clifrunsalot@yahoo.com>
Subject: Re: Help with writing SSH script without Net::SSH::Perl module
Cc: beginners@perl.org
In-Reply-To: <165042.13430.qm@web51405.mail.re2.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <165042.13430.qm@web51405.mail.re2.yahoo.com>

On 6/14/07, Clif Hudson <clifrunsalot@yahoo.com> wrote:
> Could someone point me to a book or online reference that shows me how to
> create a SSH script from scratch.  I know I could use the Net::SSH::Perl
> module, but I don't have access to the external resources needed to download
> the module because of the network restrictions.
>
> Sincerely,
> Clif Hudson
>
> clifrunsalot@yahoo.com

There is always a way to download a module.  You have ssh access to
the box (otherwise you wouldn't want the module), so download the
module to a local machine and scp it over.  If the reason isn't really
network restrictions, but rather sysadmins who don't want new Perl
modules installed on "their" box, you can always install the module in
the directory of the user who is going to run the code.  If this still
freaks out your sysadmins, well, you are stuck with puppet stringing
the ssh command through IPC::Open3* (which is part of core Perl, so
they can't complain).

* http://search.cpan.org/~nwclark/perl-5.8.8/lib/IPC/Open3.pm

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

ee0cQca l
g
From beginners-return-92680-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:38:20 2007
Return-Path: <beginners-return-92680-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMcJL9009984
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:38:20 -0400
Received: (qmail 7460 invoked by uid 514); 22 Jun 2007 21:04:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7451 invoked from network); 22 Jun 2007 21:04:32 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 21:04:32 -0000
Received: (qmail 6065 invoked by uid 225); 22 Jun 2007 21:04:31 -0000
Delivered-To: beginners@perl.org
Received: (qmail 6059 invoked by alias); 22 Jun 2007 21:04:31 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.232 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.232)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 14:04:27 -0700
Received: by nz-out-0506.google.com with SMTP id x7so1035371nzc
        for <beginners@perl.org>; Fri, 22 Jun 2007 14:04:23 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=hVd5OV+K3hKM0rPfxJTR8FIIGeDk6ma+avOP8K1HIuKN/mnLTHRjXFFym/6hS9lSJF1g/WGtEiXHKmXJVW3qg75SDgxe8Dm8TnFuvYBnlCvSx2ZjNVdmO77dFAaJN+VuiMnvHk/kUDjdcxKg5+RHIENVwLPnEbAQvm8or9GpPVM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=MniztdDkv3jhbj+2AwWGCF4zi87N/iU+sR4pvBXG5YXNB3KhclLkxJIXgGTtjZTv0eALNa98gU92GDio9nZMx/Oi064sBJINIzUz4OCH0WnqfOatK9g0UAZ2GkrM7W4QHWxo3JUNhJpmwZBJoYuOjeo8cjunbdbASNKtnMZZe3c=
Received: by 10.114.175.16 with SMTP id x16mr3325981wae.1182546262675;
        Fri, 22 Jun 2007 14:04:22 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 22 Jun 2007 14:04:22 -0700 (PDT)
Message-ID: <58ce48dc0706221404ga390e20k5d4ba04b753ea5a@mail.gmail.com>
Date: Fri, 22 Jun 2007 17:04:22 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: a_arya2000 <a_arya2000@yahoo.com>
Subject: Re: Uninstalling a PERL module
Cc: beginners@perl.org
In-Reply-To: <882559.44783.qm@web60124.mail.yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <882559.44783.qm@web60124.mail.yahoo.com>

On 6/22/07, a_arya2000 <a_arya2000@yahoo.com> wrote:
> Hello, does anyone know what is the most effective way
> of uninstalling perl module? Thank you.

If you installed the module through your system's package manager then
uninstall it the same way.  If you installed it though CPAN, well, the
most complete way is to uninstall Perl, delete the install directory,
reinstall Perl and all of the modules you want to keep.  CPANPLUS
seems to offer an uninstall option, but I have heard there are
complaints that it is not complete and may break other modules.

Why do you uninstall a module in the first place?  This is something I
have never understood.  I have tons of modules installed and the
everything in @INC (baring the current directory) takes up less than
50 megs, so it can't be space issues.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

nT81otA herAC
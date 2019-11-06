From beginners-return-92067-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 11:05:27 2007
Return-Path: <beginners-return-92067-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51F5QhB011282
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 11:05:27 -0400
Received: (qmail 14933 invoked by uid 514); 1 Jun 2007 15:05:13 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14924 invoked from network); 1 Jun 2007 15:05:13 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 15:05:13 -0000
Received: (qmail 24900 invoked by uid 225); 1 Jun 2007 15:05:12 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24890 invoked by alias); 1 Jun 2007 15:05:12 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.237 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.237)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 08:04:42 -0700
Received: by nz-out-0506.google.com with SMTP id x7so574829nzc
        for <beginners@perl.org>; Fri, 01 Jun 2007 08:04:37 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=T28gsjB9nMNMuQO4ACVVMVgneSHNLyP9+2fCkGrQqtDS9tR3XOIPeaNoTipIXfCXtGlcJx/XcyNeFuTBlsfWOgwPKRh7CYQHFFcY4zSSQRP5ZzHCIJJtorYd3YuYJRDFiiXB4dS5eevFb6ckkqNTtvgV9ha65Agna94+xDkssRc=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=p9uDP5cnijj6rC9uTHl7IatX9OdoGnUZitqLvjYliUGGiXEiy//TJOW0JXDaqnlJl6ZXwTw+hO7sWFBx99NWMTVCh4U5KH0TsKmB3ZLM3vg8LLg7Cwor40P2gNBHHZ69o3TncFzrs4MrK/J8R2dJasPk8x+63uEkGXhLvcsd4GA=
Received: by 10.114.13.1 with SMTP id 1mr1772916wam.1180710277557;
        Fri, 01 Jun 2007 08:04:37 -0700 (PDT)
Received: by 10.115.54.13 with HTTP; Fri, 1 Jun 2007 08:04:37 -0700 (PDT)
Message-ID: <58ce48dc0706010804s23a1dc18v8527e92d9d4c6045@mail.gmail.com>
Date: Fri, 1 Jun 2007 11:04:37 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Ben Edwards" <funkytwig@gmail.com>
Subject: Re: pr warn die question
Cc: beginners@perl.org
In-Reply-To: <32b873ff0706010748k176fe43cr3cc9ed06551db126@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <32b873ff0706010748k176fe43cr3cc9ed06551db126@mail.gmail.com>

On 6/1/07, Ben Edwards <funkytwig@gmail.com> wrote:
snip
>     my $ftp = Net::FTP->new( $remote_host ) or {
>       print LOGFILE "failed to connect to $remote_host\n"
>       return(1);
>     };
>
> But this does not work.  So how do I do 2 statements for an or?
snip

my $ftp = Net::FTP->new( $remote_host ) or do {
    print LOGFILE "failed to connect to $remote_host\n"
    return 1;
};

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

98 8/oR =
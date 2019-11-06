From beginners-return-92115-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 14:00:25 2007
Return-Path: <beginners-return-92115-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53I0OhB018172
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 14:00:25 -0400
Received: (qmail 31454 invoked by uid 514); 3 Jun 2007 18:00:14 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31441 invoked from network); 3 Jun 2007 18:00:14 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jun 2007 18:00:14 -0000
Received: (qmail 28815 invoked by uid 225); 3 Jun 2007 18:00:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 28807 invoked by alias); 3 Jun 2007 18:00:13 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.230 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.230)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 03 Jun 2007 10:59:15 -0700
Received: by nz-out-0506.google.com with SMTP id x7so860481nzc
        for <beginners@perl.org>; Sun, 03 Jun 2007 10:59:11 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=enElgBGDDl8CuWd5Koc+FX3RXZC0++npgaBBgOXkPn77dYbxAMllgZh/f4xHIQlTtnygF/iqtiNU7oety+QoOn0A105CB0KqAJCwb6GUHtJiCJIw7bGx5H/AfYuZPcil7QOIOh2+YWZ1TAOunYLbj5KN1e6AK+mtIFS0ppuanxM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=owd+Xzbzk/liqB21/iFYb3ah2SvFv2025SENuSsBEO825eAMvqZsYft2mP+RAF68jdQn9Terjs1knnZ+CNSrVJ4lzVbvusgK+m28M+kfWgEYI08ZlfXa502HfiTIIg/Lmt/clz09eC/LyjPlh+ejMbDvqnZDn6pt6RjBr0Hs1Ms=
Received: by 10.114.73.1 with SMTP id v1mr4037423waa.1180893550810;
        Sun, 03 Jun 2007 10:59:10 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Sun, 3 Jun 2007 10:59:10 -0700 (PDT)
Message-ID: <58ce48dc0706031059m644cebd5t556422d7b6a1f85@mail.gmail.com>
Date: Sun, 3 Jun 2007 13:59:10 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Mike Lesser" <exceptions@earthlink.net>
Subject: Re: Paths, Spaces, Getopt::Long
Cc: "Beginners Perl" <beginners@perl.org>
In-Reply-To: <B10E7F7C-1342-4A53-B4AC-66860F9EC452@earthlink.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <B10E7F7C-1342-4A53-B4AC-66860F9EC452@earthlink.net>

On 6/3/07, Mike Lesser <exceptions@earthlink.net> wrote:
snip
> I have to assume that paths can be converted easily for use in shells
> and such, without resorting to RegEx. Any ideas?
snip

Aside from the multi argument version of system that Tom has already
mentioned, the bigger question is "Why are you running code outside of
Perl?"  Often people think they need to say things like

system "rm -rf $path";
system "mkdir $path";
system "chmod 666 $path";

when they could just as easily say

use File::Path;
use File::chmod;

rmtree $path;
mkpath $path;
chmod 0666, $path;

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

ri/d -iel 
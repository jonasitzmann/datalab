From beginners-return-92063-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 10:35:41 2007
Return-Path: <beginners-return-92063-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51EZehB010981
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 10:35:40 -0400
Received: (qmail 32056 invoked by uid 514); 1 Jun 2007 14:35:22 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32047 invoked from network); 1 Jun 2007 14:35:22 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 14:35:22 -0000
Received: (qmail 9920 invoked by uid 225); 1 Jun 2007 14:35:22 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9893 invoked by alias); 1 Jun 2007 14:35:21 -0000
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from sd-green-bigip-145.dreamhost.com (HELO spaceymail-a3.g.dreamhost.com) (208.97.132.145)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 07:34:49 -0700
Received: from [192.168.1.64] (unknown [89.129.66.195])
	by spaceymail-a3.g.dreamhost.com (Postfix) with ESMTP id 19C751951C5
	for <beginners@perl.org>; Fri,  1 Jun 2007 07:34:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <46603B3F.23143.2A6306BB@dermot.sciencephoto.com>
References: <46603B3F.23143.2A6306BB@dermot.sciencephoto.com>
Content-Type: text/plain; charset=US-ASCII; format=flowed
Message-Id: <C7A9FF9B-F260-4FEA-B276-8E380403D462@hashref.com>
Content-Transfer-Encoding: 7bit
From: Xavier Noria <fxn@hashref.com>
Subject: Re: Algorithm or module needed 
Date: Fri, 1 Jun 2007 16:34:38 +0200
To: Perl List <beginners@perl.org>
X-Mailer: Apple Mail (2.752.3)

On Jun 1, 2007, at 4:29 PM, Beginner wrote:

> Hi,
>
> I am trying to copy some file from a removable HDD to a network
> drive. I want replicate the directory structure and omit un-needed
> files.
>
> The directory paths a 4-5 levels deep and I am trying to work out an
> efficient way to recreate the directory path.
>
> What I've been doing is using File::Find to collect the file and then
> in the coderef calling the following subroutine to check the path but
> i didn't go too far as my method seems....well not well formed.
>
> The path to a source file looks like:
>
> e:/Dir1/Day 1/AM/01/myfile.jpg

I think you want File::Path's mkpath. File::Path is a standard module.

-- fxn




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

02sY/ 8w
	
1c
From beginners-return-92523-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 11:38:03 2007
Return-Path: <beginners-return-92523-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5IFc1L9019061
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 11:38:01 -0400
Received: (qmail 5627 invoked by uid 514); 18 Jun 2007 15:37:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5618 invoked from network); 18 Jun 2007 15:37:54 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 18 Jun 2007 15:37:54 -0000
Received: (qmail 20186 invoked by uid 225); 18 Jun 2007 15:37:53 -0000
Delivered-To: beginners@perl.org
Received: (qmail 20179 invoked by alias); 18 Jun 2007 15:37:52 -0000
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of orasnita@gmail.com designates 66.249.92.168 as permitted sender)
Received: from ug-out-1314.google.com (HELO ug-out-1314.google.com) (66.249.92.168)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 18 Jun 2007 08:37:45 -0700
Received: by ug-out-1314.google.com with SMTP id 80so716417ugb
        for <beginners@perl.org>; Mon, 18 Jun 2007 08:37:39 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:from:to:cc:references:subject:date:mime-version:content-type:content-transfer-encoding:x-priority:x-msmail-priority:x-mailer:x-mimeole;
        b=NXMDI9UqG7GPd3Mhrx685jcC17LJNQFNLkVrQogKxYIq/aoTUj9lkxIWjpl6/kBKC90PcCWv5ee3DWgoEac3klp3TNJ+SFcZUCiRijoqcTjywerEgN5TS1X+nUntfQTdDEClQPZpj3lV7TcQ5ozWWeCxNllF1ugnRtsuc30+SEk=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:from:to:cc:references:subject:date:mime-version:content-type:content-transfer-encoding:x-priority:x-msmail-priority:x-mailer:x-mimeole;
        b=fqDiEzS3V6SRU0aJlRZr3uvbWDkgVWDcTZm77ANKcGYgw33k5wQLgl81ceKdKWePNiOx+kSpKsyItBxNi/TCnU8UU1lB9kntUkTFdCNWMmPWmG8HXV2cDWkQNtPd6S30gCpXb9QoXGYZ9Wz7INiszPNVVCSg2j1Wox6tyT2Y+bc=
Received: by 10.67.19.11 with SMTP id w11mr5097532ugi.1182181059622;
        Mon, 18 Jun 2007 08:37:39 -0700 (PDT)
Received: from teddy ( [81.180.162.194])
        by mx.google.com with ESMTP id 54sm7478149ugp.2007.06.18.08.37.38
        (version=SSLv3 cipher=RC4-MD5);
        Mon, 18 Jun 2007 08:37:38 -0700 (PDT)
Message-ID: <006601c7b1be$98190e70$c2a2b451@teddy>
From: "Octavian Rasnita" <orasnita@gmail.com>
To: "Rob Dixon" <rob.dixon@350.com>, <beginners@perl.org>
Cc: "John Degen" <jeehannes@yahoo.com>
References: <901883.22178.qm@web35712.mail.mud.yahoo.com> <46769B30.9020803@350.com>
Subject: Re: [Perl 5.8.8 on WinXP] Command line usage
Date: Mon, 18 Jun 2007 18:35:35 +0300
MIME-Version: 1.0
Content-Type: text/plain;
	format=flowed;
	charset="iso-8859-1";
	reply-type=response
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3138

A program in command line that works might be too long under Windows, but if 
it is necessary it could be made sending the list of files to the program 
with a pipe, like:

dir /b | perl -e "print <STDIN>;"

This command prints the list of filenames on the console, and the dos 
command dir accepts wildcards, then the perl program could do anything with 
those files, like opening them, modifying....

Octavian

----- Original Message ----- 
From: "Rob Dixon" <rob.dixon@350.com>
To: <beginners@perl.org>
Cc: "John Degen" <jeehannes@yahoo.com>
Sent: Monday, June 18, 2007 5:48 PM
Subject: Re: [Perl 5.8.8 on WinXP] Command line usage


> John Degen wrote:
>>
>> I'm using Perl 5.8.8 from ActiveState on Windows XP. I'm trying to
>> accomplish a search and replace in a number of files in the same
>> directory from the command line (cmd.exe). The problem is that the
>> command perl -i -e "s/old/new/" * fails silently, i.e. no changes
>> take place. My question is: does * indicate all files in the current
>> directory (this did work in the Windows version of sed I tried)? I
>> cannot find this in the docs or using Google. Or am I making another
>> mistake?
>
> Hi John
>
> Three problems here that I can see:
>
> - Perl won't do an in-place edit successfully on a Windows system. You
>  have to specify a name for the old file to be renamed to.
>
> - It is the command shell on Unix systems that expands the wildcard
>  into a list of filenames. On Windows your program sees just the single
>  argument '*'.
>
> - You have written no code to process the arguments passed. You program
>  is simply
>
>    s/old/new/
>
>  which will just try to replace 'old' with 'new' in an uninitialised $_
>  variable (try perl -w -i -e "s/old/new/" * to see the evidence).
>
> I suggest you use something like
>
>  perl -w -i.bak -p -e "s/old/new/"
>
> but I haven't tested this as you already have a directory set up ready to
> try it on :)
>
> HTH,
>
> Rob
>
> -- 
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
>
> 


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

 o=rrtItT.o aQ=
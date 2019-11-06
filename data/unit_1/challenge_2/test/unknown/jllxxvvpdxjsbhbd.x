From beginners-return-92119-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 17:30:19 2007
Return-Path: <beginners-return-92119-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l53LUHhB019887
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 17:30:18 -0400
Received: (qmail 14648 invoked by uid 514); 3 Jun 2007 21:30:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14639 invoked from network); 3 Jun 2007 21:30:07 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jun 2007 21:30:07 -0000
Received: (qmail 19406 invoked by uid 225); 3 Jun 2007 21:30:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 19395 invoked by alias); 3 Jun 2007 21:30:06 -0000
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pop-siberian.atl.sa.earthlink.net (HELO pop-siberian.atl.sa.earthlink.net) (207.69.195.71)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 03 Jun 2007 14:30:03 -0700
Received: from dialup-4.154.255.53.dial1.boston1.level3.net ([4.154.255.53] helo=[10.0.1.3])
	by pop-siberian.atl.sa.earthlink.net with esmtp (Exim 3.36 #1)
	id 1HuxeB-0004HS-00
	for beginners@perl.org; Sun, 03 Jun 2007 17:29:59 -0400
Mime-Version: 1.0 (Apple Message framework v752.2)
References: <5FCBCCAD-3D8D-406F-9CD7-58EB41639D4A@earthlink.net>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <46A730C6-7B28-4C39-8B0A-DDB232CA5880@earthlink.net>
Content-Transfer-Encoding: 7bit
From: Mike Lesser <exceptions@earthlink.net>
Subject: Fwd: Paths, Spaces, Getopt::Long
Date: Sun, 3 Jun 2007 17:32:24 -0400
To: Beginners Perl <beginners@perl.org>
X-Mailer: Apple Mail (2.752.2)



Begin forwarded message:

From: Mike Lesser <exceptions@earthlink.net>
Date: June 3, 2007 3:48:56 PM EDT
To: "Chas Owens" <chas.owens@gmail.com>
Subject: Re: Paths, Spaces, Getopt::Long

On Jun 3, 2007, at 1:59 PM, Chas Owens wrote:

> On 6/3/07, Mike Lesser <exceptions@earthlink.net> wrote:
> snip
>> I have to assume that paths can be converted easily for use in shells
>> and such, without resorting to RegEx. Any ideas?
> snip
>
> Aside from the multi argument version of system that Tom has already
> mentioned, the bigger question is "Why are you running code outside of
> Perl?"  Often people think they need to say things like
>

The script needs to use tidy to strip garbage from an html file prior  
to reading it. It's a file automatically generated by another company  
and it's filled with junk, hence no chance to fix it at the source.

The HTML::Tidy module would be fine but it doesn't pass testing on my  
box, and won't work with a forced install. I took a look and found  
that that seems to be a recurring problem on OS X 10.4. I haven't yet  
looked thru the code to determine the source of the problem as it  
seemed that running either Shell or system () was an interesting  
thing to learn. I might have been wrong there!

I've had success running hard coded paths and stuff, but now see that  
there's this space problem, which I didn't realize since Perl was  
handling paths nicely all by itself!


> system "rm -rf $path";
> system "mkdir $path";
> system "chmod 666 $path";
>
> when they could just as easily say
>
> use File::Path;
> use File::chmod;
>
> rmtree $path;
> mkpath $path;
> chmod 0666, $path;



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

N DwuJ
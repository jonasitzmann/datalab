From beginners-return-92985-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 03:55:50 2007
Return-Path: <beginners-return-92985-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l637tnL9025439
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 03:55:49 -0400
Received: (qmail 9525 invoked by uid 514); 3 Jul 2007 07:55:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9507 invoked from network); 3 Jul 2007 07:55:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 07:55:41 -0000
Received: (qmail 14028 invoked by uid 225); 3 Jul 2007 07:55:41 -0000
Delivered-To: beginners@perl.org
Received: (qmail 14019 invoked by alias); 3 Jul 2007 07:55:40 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HTML_MESSAGE,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from an-out-0708.google.com (HELO an-out-0708.google.com) (209.85.132.244)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 00:53:22 -0700
Received: by an-out-0708.google.com with SMTP id c25so349173ana
        for <beginners@perl.org>; Tue, 03 Jul 2007 00:53:18 -0700 (PDT)
Received: by 10.100.13.12 with SMTP id 12mr4165276anm.1183449198317;
        Tue, 03 Jul 2007 00:53:18 -0700 (PDT)
Received: by 10.100.120.1 with HTTP; Tue, 3 Jul 2007 00:53:18 -0700 (PDT)
Message-ID: <848c3f360707030053l5970998dr1b69f8585163af96@mail.gmail.com>
Date: Tue, 3 Jul 2007 10:53:18 +0300
From: "Amichai Teumim" <amichai@teumim.com>
To: beginners@perl.org
Subject: TWO loops and ONE if statement
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_82658_28811250.1183449198288"

------=_Part_82658_28811250.1183449198288
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi guys

You guys have been giving me some very good ideas. Very efficent ways
of doing things.
For this excercise that I'm trying to figure out I actually need the
following inefficient way:



#!/usr/bin/perl

@array = (5,3,2,1,4);

## include your code here ##

foreach $elem (@array){
  print "$elem";
}

I need to sort the @array from lowest to highest using TWO loops and
ONE if statement. That's why it's so confusing.
I could use a one liner to do all this. I need to do it however as
above mentioned.

How can I do this?

Thanks for all your help

Amihai

------=_Part_82658_28811250.1183449198288--

            

3 tisf
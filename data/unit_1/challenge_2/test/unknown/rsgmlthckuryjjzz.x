From beginners-return-93119-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 22:22:17 2007
Return-Path: <beginners-return-93119-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l662MFL9001855
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 22:22:15 -0400
Received: (qmail 14916 invoked by uid 514); 6 Jul 2007 02:22:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14907 invoked from network); 6 Jul 2007 02:22:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 6 Jul 2007 02:22:06 -0000
Received: (qmail 17102 invoked by uid 225); 6 Jul 2007 02:22:06 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17093 invoked by alias); 6 Jul 2007 02:22:05 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from chilli.pcug.org.au (HELO smtps.tip.net.au) (203.10.76.44)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 05 Jul 2007 19:22:02 -0700
Received: from www.tip.net.au (localhost [127.0.0.1])
	by smtps.tip.net.au (Postfix) with ESMTP id 8B212368008;
	Fri,  6 Jul 2007 12:21:55 +1000 (EST)
Received: from 203.11.71.91
        (SquirrelMail authenticated user rcook)
        by www.tip.net.au with HTTP;
        Fri, 6 Jul 2007 12:21:55 +1000 (EST)
Message-ID: <50359.203.11.71.91.1183688515.squirrel@www.tip.net.au>
In-Reply-To: 
     <80D663F66DF55241BD12E3DB42DDF132045367CCE3@an-ex.ActiveNetwerx.int>
References: 
    <80D663F66DF55241BD12E3DB42DDF132045367CCE3@an-ex.ActiveNetwerx.int>
Date: Fri, 6 Jul 2007 12:21:55 +1000 (EST)
Subject: Re: Proper way to halt a script
From: rcook@pcug.org.au
To: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Cc: "beginners@perl.org" <beginners@perl.org>
User-Agent: SquirrelMail/1.4.9a
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Priority: 3 (Normal)
Importance: Normal

> I am reading perldoc.perl.org and am not understanding exit and die
> clearly.
>
> If I have a conditional in a sub that I want to validate with, what is the
> correct way to do the following:
>
>
> 1.       End the sub and return back to the script without continuing that
> sub.


     if (condition){last}   gets you out of that loop


> 2.       End the entire script without *any* further execution.

     if (condition){exit()}   although you might want to look at 'die' as
well, depends on what you are doing


Owen




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




M1
t0 pdtmea
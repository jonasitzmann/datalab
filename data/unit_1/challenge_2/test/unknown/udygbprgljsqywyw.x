From beginners-return-92731-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 21:35:42 2007
Return-Path: <beginners-return-92731-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P1ZfL9019492
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 21:35:42 -0400
Received: (qmail 980 invoked by uid 514); 25 Jun 2007 01:35:33 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 959 invoked from network); 25 Jun 2007 01:35:33 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 25 Jun 2007 01:35:33 -0000
Received: (qmail 5124 invoked by uid 225); 25 Jun 2007 01:35:32 -0000
Delivered-To: beginners@perl.org
Received: (qmail 5116 invoked by alias); 25 Jun 2007 01:35:32 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from p85-28.acedsl.com (HELO buk.mrbonkers.org) (66.114.85.28)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 18:35:28 -0700
Received: from localhost (localhost.mrbonkers.org [127.0.0.1])
	by buk.mrbonkers.org (Postfix) with ESMTP id BCFE445026;
	Sun, 24 Jun 2007 21:34:14 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mrbonkers.org
Received: from buk.mrbonkers.org ([127.0.0.1])
	by localhost (buk.mrbonkers.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YfXQLiS+aU4; Sun, 24 Jun 2007 21:34:12 -0400 (EDT)
Received: from [192.168.1.103] (p85-28.acedsl.com [66.114.85.28])
	by buk.mrbonkers.org (Postfix) with ESMTP id 03B3645022;
	Sun, 24 Jun 2007 21:34:11 -0400 (EDT)
User-Agent: Microsoft-Entourage/11.3.3.061214
Date: Sun, 24 Jun 2007 21:35:14 -0400
Subject: Re: Conditional in regex
From: Jeff <pl@loserville.org>
To: "nobull67@gmail.com" <nobull67@gmail.com>, <beginners@perl.org>
Message-ID: <C2A49412.7F8B%pl@loserville.org>
Thread-Topic: Conditional in regex
Thread-Index: Ace2yRPJUmh+ZCK8Edy5XAAWy5y+/A==
In-Reply-To: <1182696163.021916.127330@k79g2000hse.googlegroups.com>
Mime-version: 1.0
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit




On 6/24/07 10:42 AM, "nobull67@gmail.com" <nobull67@gmail.com> wrote:


> You don't need to repeat the pattern by hand - the /g will do that for
> you.
> 
Thanks to everyone for the replies.

 I expected what you pointed out above, that /\b(w+)\s+(\w+)\s+/gs would
match every instance of the pattern. Instead I got wildly results, with
random letters in some variables and the values I wanted in a different
offset every time. I cannot explain that, but the pattern works with the
left hand values written as literals (/\b(word)\s+(.*)\s+/)

> Are newlines significant? Or can just treat it as a list of
> alternating keys and values delimited by whitespace?
> 
This can be treated as key/values delimited by whitespace.

I wonder if the unexpected results could be related to tabs or something
else besides \n? How do I see what's used for white space? Shouldn't \s
match any whitespace character?


 > Probably a list of hashes would be the most natural.
> 
> my @LoH = map { { split } } $file_contents =~ /\{(.*?)\}/gs;

Thanks. That's cool. Since this is the beginner's list, I'll just dive in
and ask a(nother) dumb question. I'm not sure I understand the double curly
braces around split. Would you mind showing me that in a less terse form?
 

 



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

og(2
From beginners-return-92710-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 22:32:14 2007
Return-Path: <beginners-return-92710-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5O2WDL9026497
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 22:32:13 -0400
Received: (qmail 10442 invoked by uid 514); 24 Jun 2007 02:32:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 10433 invoked from network); 24 Jun 2007 02:32:06 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 24 Jun 2007 02:32:06 -0000
Received: (qmail 8753 invoked by uid 225); 24 Jun 2007 02:32:06 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8749 invoked by alias); 24 Jun 2007 02:32:05 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from p85-28.acedsl.com (HELO buk.mrbonkers.org) (66.114.85.28)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 23 Jun 2007 19:32:04 -0700
Received: from localhost (localhost.mrbonkers.org [127.0.0.1])
	by buk.mrbonkers.org (Postfix) with ESMTP id 2EDBA45026
	for <beginners@perl.org>; Sat, 23 Jun 2007 22:30:53 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mrbonkers.org
Received: from buk.mrbonkers.org ([127.0.0.1])
	by localhost (buk.mrbonkers.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 70x0HVdKHl9f for <beginners@perl.org>;
	Sat, 23 Jun 2007 22:30:50 -0400 (EDT)
Received: from [192.168.1.103] (p85-28.acedsl.com [66.114.85.28])
	by buk.mrbonkers.org (Postfix) with ESMTP id 4C27C45022
	for <beginners@perl.org>; Sat, 23 Jun 2007 22:30:50 -0400 (EDT)
User-Agent: Microsoft-Entourage/11.3.3.061214
Date: Sat, 23 Jun 2007 22:31:51 -0400
Subject: Conditional in regex
From: Jeff <pl@loserville.org>
To: <beginners@perl.org>
Message-ID: <C2A34FD8.7EBF%pl@loserville.org>
Thread-Topic: Conditional in regex
Thread-Index: Ace2B9IkEP/v0SH7Edy5XAAWy5y+/A==
Mime-version: 1.0
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit


Hi all. I'm new to perl, a new programmer, and I badly need guidance. I'm
trying to parse a config file with key/value pairs seperated by white space
and surrounded by curly brackets. It has multiple fields that look like
this:

{
Key  value
Key   value
}

My solution has been to parse it with something simple --

while ($file_contents =~ /(\w+)\s*\{([^}]*)\}/gs) {
       push @new, $2;
}

foreach (@new){
                  $_  =~ /\b(\w+)\s+(.*)\s+
                          \b(\w+)\s+(.*)/xgs;

My @next_tmp_variable = ($1, $2, etc);
}

-- but the config definitions contained in those curly brackets are
different lengths. Some only have a four left hand values, while others have
six or more. My solution isn't giving me what I really need.

So I have two questions. First, I don't understand how to test this so that
I parse all the values between the curly braces, regardless of how many
items are there. Second, and equally important, what kind of data structure
should I put the results in? I think I need a hash of hashes. What I'd like
to do is assign each left hand value as the key in a hash. Then, in each set
there's a left 'command' where the right hand value will always be unique,
which would be perfect for use as the name of an alias for the hash or as
the key to a reference to a hash of that definition. Is there a better way?
What's the best method for assigning all that stuff?

Thanks!



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

 7pd2
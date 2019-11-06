From beginners-return-92950-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jul  2 09:17:21 2007
Return-Path: <beginners-return-92950-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l62DHKL9014121
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 09:17:20 -0400
Received: (qmail 21256 invoked by uid 514); 2 Jul 2007 13:17:12 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 21245 invoked from network); 2 Jul 2007 13:17:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jul 2007 13:17:12 -0000
Received: (qmail 7738 invoked by uid 225); 2 Jul 2007 13:17:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7733 invoked by alias); 2 Jul 2007 13:17:11 -0000
X-Spam-Status: No, hits=1.4 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_CBL,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from sd-green-bigip-207.dreamhost.com (HELO spaceymail-a3.g.dreamhost.com) (208.97.132.207)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 02 Jul 2007 06:17:09 -0700
Received: from [192.168.1.64] (unknown [89.129.49.33])
	by spaceymail-a3.g.dreamhost.com (Postfix) with ESMTP id 7734E1951AF
	for <beginners@perl.org>; Mon,  2 Jul 2007 06:16:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <2n8nl4-62j.ln1@desktop.gabriel>
References: <2n8nl4-62j.ln1@desktop.gabriel>
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <2A3ED382-C69D-40D0-85C7-59C4E5BA8D4B@hashref.com>
Content-Transfer-Encoding: 7bit
From: Xavier Noria <fxn@hashref.com>
Subject: Re: interpolation of function reference in a here doc
Date: Mon, 2 Jul 2007 15:16:32 +0200
To: Perl List <beginners@perl.org>
X-Mailer: Apple Mail (2.752.3)

On Jul 2, 2007, at 2:46 PM, Gabriel Striewe wrote:

> Dear List,
>
> I wanted to interpolate a function reference in a here doc.
> The following works fine:
>
> my $hello = sub {
>                  return "hello world!";
>                 };
>
> printf "hello $s\n", &$hello();

In Perl printf is rarely used because double-quote strings allow  
interpolation of scalars and arrays, and because print accepts an  
arbitrary number of arguments.

Interpolation does not understand function calls, though, so you  
either use a multi-argument call like this:

   print "hello ", $hello->(), "\n";

or either use this hack:

   print "hello @{[ $hello->() ]}\n";

Here-documents have double-quote semantics unless you put single  
quotes around the terminating string, so that last trick works in  
here-documents as well.

-- fxn


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

0uGg
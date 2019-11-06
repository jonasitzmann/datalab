From beginners-return-93013-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 18:25:33 2007
Return-Path: <beginners-return-93013-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63MPWL9002254
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 18:25:32 -0400
Received: (qmail 31566 invoked by uid 514); 3 Jul 2007 22:25:24 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31557 invoked from network); 3 Jul 2007 22:25:24 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 22:25:24 -0000
Received: (qmail 17611 invoked by uid 225); 3 Jul 2007 22:25:23 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17594 invoked by alias); 3 Jul 2007 22:25:21 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 03 Jul 2007 15:25:19 -0700
Received: (qmail 31546 invoked by uid 515); 3 Jul 2007 22:25:15 -0000
Message-ID: <20070703222515.31545.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <80D663F66DF55241BD12E3DB42DDF132045367CCC4@an-ex.ActiveNetwerx.int> <58ce48dc0707022205m1447da5cxd30fadeefb25cee9@mail.gmail.com>
Subject: Re: Conditional question
Date: Wed, 4 Jul 2007 00:21:32 +0200
Lines: 27
Organization: Chaos rules.
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-Posted-By: 85.144.210.174

"Chas Owens" schreef:
> Joseph L. Casale:

>> I want to script an "if" based on two conditions, var1=0 and var2=1.
>> Is there some quicker way to write this in one "if" statement like:
>>
>> If ($var1=0 ?and? var2=1) {
>>                 Do my stuff
>> }
>>
>> I know I can nest a second if, but just hoped I could do it quicker
>> :)
>
> um, how about
>
> if ($var1 == 0 and $var2) {
>     #do stuff
> }

That will "do stuff" for most values where $var2 <> 0, for example if
$var2 == 2.

-- 
Affijn, Ruud

"Gewoon is een tijger."


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

 tReeSci
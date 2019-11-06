From beginners-return-92293-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 15:47:47 2007
Return-Path: <beginners-return-92293-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BJlkL9018066
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 15:47:46 -0400
Received: (qmail 6599 invoked by uid 514); 11 Jun 2007 19:47:41 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6590 invoked from network); 11 Jun 2007 19:47:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 11 Jun 2007 19:47:41 -0000
Received: (qmail 8665 invoked by uid 225); 11 Jun 2007 19:47:41 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8661 invoked by alias); 11 Jun 2007 19:47:40 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 11 Jun 2007 12:47:38 -0700
Received: (qmail 6584 invoked by uid 515); 11 Jun 2007 19:47:33 -0000
Message-ID: <20070611194733.6583.qmail@lists.develooper.com>
To: beginners@perl.org
From: "Dr.Ruud" <rvtol+news@isolution.nl>
References: <20070608140818.20900.qmail@lists.develooper.com>   <73ddeb6c0706080745j5cc6154etbc7ede63c899ddd5@mail.gmail.com>   <20070610231620.5535.qmail@lists.develooper.com> <1181520286.463610.57740@k79g2000hse.googlegroups.com>
Subject: Re: new vs ->new
Date: Mon, 11 Jun 2007 21:43:29 +0200
Lines: 46
Organization: Chaos rules.
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Newsreader: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-Posted-By: 85.144.210.174

Paul Lalli schreef:
> Dr.Ruud:
>> Adriano Ferreira:

>>> Definitely go with
>>>  my $test = Some::Module->new;
>>
>> or even with:
>>    my $test = Some::Module::->new();
>
> For the love of $DEITY, why?

<quote src="Johan Vromans">

If you use A::B::->new();
you'll get a compile time check on whether module A::B is loaded as a
bonus.

</quote>


<quote src="Elizabeth Mattijsen">

$ perl -wc -e 'Foo->new'
-e syntax OK

$ perl -wc -e 'Foo::->new'
Bareword "Foo::" refers to nonexistent package at -e line 1.
-e syntax OK

$perl -wc -e '$Foo::a = 1; Foo::->new'
Name "Foo::a" used only once: possible typo at -e line 1.
-e syntax OK

So the bonus is not about that the module is loaded, but about the
existence of the namespace.
You need to check %INC to find out whether the system thinks that the
module is loaded.

</quote>

-- 
Affijn, Ruud

"Gewoon is een tijger."


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

r$tm=:"rFh<
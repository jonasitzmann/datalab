From beginners-return-92283-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 04:33:39 2007
Return-Path: <beginners-return-92283-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5B8XcL9012018
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 04:33:39 -0400
Received: (qmail 32539 invoked by uid 514); 11 Jun 2007 08:33:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32530 invoked from network); 11 Jun 2007 08:33:32 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 11 Jun 2007 08:33:32 -0000
Received: (qmail 29024 invoked by uid 225); 11 Jun 2007 08:33:31 -0000
Delivered-To: beginners@perl.org
Received: (qmail 29016 invoked by alias); 11 Jun 2007 08:33:31 -0000
X-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web60814.mail.yahoo.com (HELO web60814.mail.yahoo.com) (209.73.178.237)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 11 Jun 2007 01:33:23 -0700
Received: (qmail 5082 invoked by uid 60001); 11 Jun 2007 08:33:13 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type:Message-ID;
  b=o8yqBwjABgauqpPBlb9LLQXyJvV/phyPGIaZY0io0s2NkDdOJHOJd5C+xstKNQDpl2D9Tw+khLV6sEwQtjA/2516dTe7XEDelf49RmDUExxP4gV3Mf+4T0G3uiYZVZYmtIJ71OeyWBYWEpS4BCdVmRtG1oUpVC8nmyetCFc0X3Y=;
X-YMail-OSG: 7nZ0nrsVM1mldA3us8Kqz0vO78MjzxAJCKiFE7YGCYXF_NDFKj6gVrKwDURORfJhRfPevhf6wN0PhjTiHhaK9JDXlHVo8j0gycNxPYurb3M.baKAGTkN
Received: from [212.241.180.101] by web60814.mail.yahoo.com via HTTP; Mon, 11 Jun 2007 01:33:13 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Mon, 11 Jun 2007 01:33:13 -0700 (PDT)
From: Ovid <publiustemp-beginnerscgi3@yahoo.com>
Subject: Re: Is there a perl equivalent to PHP variables $_POST and $_GET?
To: beginners@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Message-ID: <312092.4558.qm@web60814.mail.yahoo.com>

----- Original Message ----
From: On Ali <onali1811@gmail.com>

> Is there a perl equivalent to PHP variables $_POST and $_GET?

It would be easy to create, but what you really want is the CGI module:

  #!/usr/bin/perl
 
  use strict;
  use warnings;

  use CGI ':standard';
  my $id    = param('id');
  my $name  = param('name');
  my @sports = param('sport');  # e.g. sport=basketball;sport=football

Cheers,
Ovid

-- 
Buy the book -- http://www.oreilly.com/catalog/perlhks/
Perl and CGI -- http://users.easystreet.com/ovid/cgi_course/





-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

cmM0is2gloCCU
From beginners-return-92320-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 15:20:11 2007
Return-Path: <beginners-return-92320-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CJKBL9030845
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 15:20:11 -0400
Received: (qmail 13883 invoked by uid 514); 12 Jun 2007 19:20:05 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13874 invoked from network); 12 Jun 2007 19:20:04 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 19:20:04 -0000
Received: (qmail 11974 invoked by uid 225); 12 Jun 2007 19:20:04 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11961 invoked by alias); 12 Jun 2007 19:20:03 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 204.209.205.52 as permitted sender)
Received: from mx01.telus.net (HELO defout.telus.net) (204.209.205.52)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 12:20:00 -0700
Received: from priv-edmwaa06.telusplanet.net ([154.20.131.28])
          by priv-edmwes34.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070612191956.GCKW26880.priv-edmwes34.telusplanet.net@priv-edmwaa06.telusplanet.net>
          for <beginners@perl.org>; Tue, 12 Jun 2007 13:19:56 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edmwaa06.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id 6C95KB6TXC
	for <beginners@perl.org>; Tue, 12 Jun 2007 13:19:56 -0600 (MDT)
Message-ID: <466EF1DA.3000604@telus.net>
Date: Tue, 12 Jun 2007 12:19:54 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: regex for matching repeated strings
References: <loom.20070612T175837-990@post.gmane.org>	 <58ce48dc0706121049xe249f2eqe0bc86036c4654ba@mail.gmail.com> <ca5781c80706121055i42b6524epbb3d9457ef646170@mail.gmail.com>
In-Reply-To: <ca5781c80706121055i42b6524epbb3d9457ef646170@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

yitzle wrote:
> Issues with both methods:
> 
> John's doesn't work for this data:
> aaaaaa
> aaaaaa
> bbb
> cccccc
> cccccc
> 
> I would expect:
> aaaaaa
> bbb
> cccccc
> 
> I would get:
> aaaaaa
> bbb
> cccccc
> cccccc

It works for me:

$ perl -le'
my $data = q[aaaaaa
aaaaaa
bbb
cccccc
cccccc
];
print $data;
$data =~ s/(.*\n)(?=\1)//g;
print $data;
'
aaaaaa
aaaaaa
bbb
cccccc
cccccc

aaaaaa
bbb
cccccc




John
-- 
use Perl;
program
fulfillment

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

. Uaqo8 / 
From beginners-return-92825-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 01:43:43 2007
Return-Path: <beginners-return-92825-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5S5hgL9005673
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 01:43:42 -0400
Received: (qmail 14078 invoked by uid 514); 28 Jun 2007 05:43:35 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 14069 invoked from network); 28 Jun 2007 05:43:35 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 05:43:35 -0000
Received: (qmail 10987 invoked by uid 225); 28 Jun 2007 05:43:34 -0000
Delivered-To: beginners@perl.org
Received: (qmail 10979 invoked by alias); 28 Jun 2007 05:43:34 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from avs3.arnes.si (HELO avs3.arnes.si) (193.2.1.68)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 22:43:30 -0700
Received: from localhost (avs3.arnes.si [193.2.1.68])
	by avs3.arnes.si (Postfix) with ESMTP id B53B41D7CF9;
	Thu, 28 Jun 2007 07:43:22 +0200 (CEST)
Received: from avs3.arnes.si ([193.2.1.68])
 by localhost (avs3.arnes.si [193.2.1.68]) (amavisd-new, port 10024)
 with ESMTP id 90350-02; Thu, 28 Jun 2007 07:43:22 +0200 (CEST)
Received: from [192.168.5.15] (nefertiti.mf.uni-lj.si [193.2.69.194])
	by avs3.arnes.si (Postfix) with ESMTP id 69EF81D7CF1;
	Thu, 28 Jun 2007 07:43:22 +0200 (CEST)
Message-ID: <46834AF2.3030600@siol.net>
Date: Thu, 28 Jun 2007 07:45:22 +0200
From: Andrej Kastrin <andrej.kastrin@siol.net>
User-Agent: Thunderbird 2.0.0.4 (X11/20070604)
MIME-Version: 1.0
To: Chas Owens <chas.owens@gmail.com>
CC: beginners perl <beginners@perl.org>
Subject: Re: DBI, postgresql and large table
References: <4682C4B9.9050508@siol.net> <58ce48dc0706271337w6b3adea4q4f8b2224864753e8@mail.gmail.com>
In-Reply-To: <58ce48dc0706271337w6b3adea4q4f8b2224864753e8@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: by amavisd-new at arnes.si

Chas Owens wrote:
> On 6/27/07, Andrej Kastrin <andrej.kastrin@siol.net> wrote:
>> Dear all,
>>
>> I need to process postgresql table with DBI module. The script below
>> works well for small tables, but when I want to process larger tables
>> (100000 rows) out-of-memory occurs.
>>
>> Any suggestion? Thanks in advance,
>> Andrej
>>
>> use strict;
>> use warnings;
>> use DBI;
>>
>> my $dbh = DBI->connect("DBI:Pg:dbname=medline;host=localhost",
>> "postgres", "secret", {'RaiseError' => 1});
>> my $sth = $dbh->prepare("SELECT text_a, text_b FROM tmp_table");
>> $sth->execute();
>>
>> while (my $ref = $sth->fetchrow_hashref()) {
>>     my $field_a = $ref->{'text_a'};
>>     my $field_b = $ref->{'text_b'};
>>     print "$field_a \t $field_b\n";
>> }
>
> * When does it fail and what is the exact error message?
> * Have you tried to execute this command in an SQL editor (psql if I
> remember correctly)?
> * How much memory do you have on that box?
>
1. The error message: DBD::Pg::st execute failed: out of memory for 
query result
2. Everything works fine, when I execute the command in psql
3. 4GB RAM on Linux box

Andrej


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

a �Hntap0"
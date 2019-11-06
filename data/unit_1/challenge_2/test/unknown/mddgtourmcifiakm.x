From beginners-return-92815-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 16:13:12 2007
Return-Path: <beginners-return-92815-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RKDAL9031930
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 16:13:11 -0400
Received: (qmail 15030 invoked by uid 514); 27 Jun 2007 20:13:03 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 15020 invoked from network); 27 Jun 2007 20:13:03 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 20:13:03 -0000
Received: (qmail 22245 invoked by uid 225); 27 Jun 2007 20:13:03 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22239 invoked by alias); 27 Jun 2007 20:13:02 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from mta1.siol.net (HELO mta1.siol.net) (193.189.160.86)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 13:12:59 -0700
Received: from edge2.siol.net ([10.10.10.211]) by mta1.siol.net with ESMTP
          id <20070627201244.DDZM21179.mta1.siol.net@edge2.siol.net>
          for <beginners@perl.org>; Wed, 27 Jun 2007 22:12:44 +0200
Received: from [192.168.1.100] (really [193.95.242.186]) by edge2.siol.net
          with ESMTP
          id <20070627201244.BIO1923.edge2.siol.net@[192.168.1.100]>
          for <beginners@perl.org>; Wed, 27 Jun 2007 22:12:44 +0200
Message-ID: <4682C4B9.9050508@siol.net>
Date: Wed, 27 Jun 2007 22:12:41 +0200
From: Andrej Kastrin <andrej.kastrin@siol.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070509)
MIME-Version: 1.0
To: beginners perl <beginners@perl.org>
Subject: DBI, postgresql and large table
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

I need to process postgresql table with DBI module. The script below 
works well for small tables, but when I want to process larger tables 
(100000 rows) out-of-memory occurs.

Any suggestion? Thanks in advance,
Andrej

use strict;
use warnings;
use DBI;

my $dbh = DBI->connect("DBI:Pg:dbname=medline;host=localhost", 
"postgres", "secret", {'RaiseError' => 1});
my $sth = $dbh->prepare("SELECT text_a, text_b FROM tmp_table");
$sth->execute();

while (my $ref = $sth->fetchrow_hashref()) {
    my $field_a = $ref->{'text_a'};
    my $field_b = $ref->{'text_b'};
    print "$field_a \t $field_b\n";
}


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

8rR O 
From beginners-return-92598-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 14:20:20 2007
Return-Path: <beginners-return-92598-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KIKJL9013422
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 14:20:19 -0400
Received: (qmail 8953 invoked by uid 514); 20 Jun 2007 18:20:11 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8932 invoked from network); 20 Jun 2007 18:20:10 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 18:20:10 -0000
Received: (qmail 16718 invoked by uid 225); 20 Jun 2007 18:20:09 -0000
Delivered-To: beginners@perl.org
Received: (qmail 16713 invoked by alias); 20 Jun 2007 18:20:09 -0000
X-Spam-Status: No, hits=1.8 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,RCVD_IN_NERD_NG,SPF_PASS,WEIRD_QUOTING
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of myklass@gmail.com designates 64.233.166.181 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.181)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 11:20:04 -0700
Received: by py-out-1112.google.com with SMTP id f47so555936pye
        for <beginners@perl.org>; Wed, 20 Jun 2007 11:19:58 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        b=FWb128lasMiw/KiBPMR9NWBbnVSX+beNo0kX6rsnrVCnbLRjQ7oW1IPfP6GM3NpDC7u0N+32PfIRVeasetTVH9J25SzNGvErVRv8FAvFYlMqO+vXm4sFeFLTqGy99UbZfbyOBA2C5u0niBDQO2NtOycHwR3Wo9+BlVQdEGhElrQ=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        b=tZvkwlTmbimJoK9gLY8zsjOSC2zirVmWsaO+Re3QSUdpAfYxw3b41Uody1ULX1fae0sZcB6xKTSnt/t6V4Mm0nbz0yAlVjOGy2jclWHnzPpb6PXpTr9JXoqVV5P4wY5I6rqZiwi9GxXEdlJLHXq0Xw6BtLgFzQ72KlsDiUI+AMs=
Received: by 10.65.114.11 with SMTP id r11mr2009286qbm.1182363598010;
        Wed, 20 Jun 2007 11:19:58 -0700 (PDT)
Received: from ?193.220.42.42? ( [193.220.42.42])
        by mx.google.com with ESMTP id e18sm1335613qbe.2007.06.20.11.19.54
        (version=TLSv1/SSLv3 cipher=RC4-MD5);
        Wed, 20 Jun 2007 11:19:57 -0700 (PDT)
Message-ID: <46797093.6010006@gmail.com>
Date: Wed, 20 Jun 2007 19:23:15 +0100
From: Aruna Goke <myklass@gmail.com>
Reply-To: myklass@gmail.com
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: beginners@perl.org, beginners-dbi@perl.org
Subject: the Database is not updated
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Can someone put me thru this?

when I run the script..it bring no error.. however, the table radacct is 
not updated.

what have i done wrong.

Goksie

#!/usr/bin/perl
use strict;
use warnings;
use DBI;

my ($fn, @x);

#define the file
$fn = 'lost.csv';
$/ = "\n";

#prepare a database connection source;
my ($data_source, $user, $pass, $ret, $sql, $dbh, $sth, $row, $port, 
$hostname, $database);
$data_source='dbi:mysql:radonet:localhost';
$user='root';
$pass='junkh1a';
$database='radius';
$hostname='localhost';
$port='3306';
$dbh = DBI->connect($data_source, $user, $pass);
$sql = "UPDATE radacct SET AcctSessionTime = ?, TrunkIdOut = ?, 
TrunkIdIn = ? where AcctUniqueId = ?";
$sth = $dbh->prepare($sql);

#Open the file
open FH, '<', $fn or die "The File $fn Could not be opened: $! \n";
while(<FH>)
{
#split the file into variables
   @x =(split/,/)[0,1,2,3,4,5,6];
  $sth->execute($x[2], $x[5], $x[4], $x[6]);
}

# extract from the lost.csv file

19736873001," """"",1,4/18/2007 22:59, 192.168.44.38, 10.0.11.79, 
1a88e00c34cb30fa
2.34803E+12,2087316954,0,4/18/2007 23:00, 10.0.11.76, 0.0.0.0, 
1ebd35b17bd867f9
2.34803E+12,2087316954,0,4/18/2007 23:00, 10.0.11.76, 0.0.0.0, 
ab3b78424358b27d
12024227659," """"",0,4/18/2007 23:00, 192.168.44.38, 10.0.11.76, 
5a31b839bfc95cd5
4.47904E+11," """"",21,4/18/2007 23:00, 192.168.44.38, 10.0.11.79, 
9e95a7a7b6937ff8
12024227659," """"",0,4/18/2007 23:00, 192.168.44.38, 10.0.11.76, 
0ef7c2048870a6ef
14506708893," """"",211,4/18/2007 22:57, 192.168.44.38, 10.0.11.79, 
6a0056401dcb56a7
12024227659," """"",0,4/18/2007 23:01, 192.168.44.38, 10.0.11.76, 
d6b154140636378b
19736873001," """"",30,4/18/2007 23:00, 192.168.44.38, 10.0.11.79, 
b744ff188ed3c7fc
16304971578," """"",0,4/18/2007 23:01, 192.168.44.38, 10.0.11.76, 
d5d103f66de65ad7
71508831681," """"",0,4/18/2007 23:02, 192.168.44.38, 10.0.11.76, 
a7b2a292af151634
18137318836," """"",0,4/18/2007 23:02, 192.168.44.38, 10.0.11.76, 
e166c3a40a08df26
16304971578," """"",0,4/18/2007 23:02, 192.168.44.38, 10.0.11.76, 
b889cae3a64c3a68
4.47904E+11," """"",81,4/18/2007 23:01, 192.168.44.38, 10.0.11.79, 
2f9d50e741fe5f65



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

 sb1mV33
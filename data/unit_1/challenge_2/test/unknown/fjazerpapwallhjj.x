From beginners-return-92619-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 03:41:27 2007
Return-Path: <beginners-return-92619-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5L7fPL9021084
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 03:41:26 -0400
Received: (qmail 16857 invoked by uid 514); 21 Jun 2007 07:41:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16848 invoked from network); 21 Jun 2007 07:41:18 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 21 Jun 2007 07:41:18 -0000
Received: (qmail 21142 invoked by uid 225); 21 Jun 2007 07:41:17 -0000
Delivered-To: beginners@perl.org
Received: (qmail 21131 invoked by alias); 21 Jun 2007 07:41:17 -0000
X-Spam-Status: No, hits=-0.5 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL,WEIRD_QUOTING
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from ns1.howden.press.net (HELO mx-relay-2.howden.press.net) (213.249.135.39)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 21 Jun 2007 00:41:12 -0700
Received: from [10.253.65.14] (helo=mailrelay0.howden.press.net)
	by mx-relay-2.howden.press.net with esmtp (Exim 4.62)
	(envelope-from <andrew.curry@pa-sport.com>)
	id 1I1HHm-0003sz-00; Thu, 21 Jun 2007 08:40:58 +0100
Received: from pahextemp.howden.press.net ([10.253.71.70])
	by mailrelay0.howden.press.net with esmtp (Exim 4.62)
	(envelope-from <andrew.curry@pa-sport.com>)
	id 1I1HHl-0006FC-Uh; Thu, 21 Jun 2007 08:40:57 +0100
Received: by pahextemp.howden.press.net with Internet Mail Service (5.5.2658.3)
	id <NJS4054D>; Thu, 21 Jun 2007 08:40:58 +0100
Message-ID: <2E40B42809F33D4C9BE204136405B8120B3BD144@pahextemp.howden.press.net>
From: Andrew Curry <andrew.curry@pa-sport.com>
To: myklass@gmail.com, beginners@perl.org
Subject: RE: the Database is not updated
Date: Thu, 21 Jun 2007 08:40:57 +0100
MIME-Version: 1.0
X-Mailer: Internet Mail Service (5.5.2658.3)
Content-Type: text/plain

Do you check for the number of rows updated?
An update will not throw an error even if no rows are updated, have you
tried your values by hand?  

-----Original Message-----
From: Aruna Goke [mailto:myklass@gmail.com] 
Sent: 20 June 2007 19:33
To: beginners@perl.org
Subject: the Database is not updated

hi all,

Can someone put me thru this?

when I run the script..it bring no error.. however, the table radacct is not
updated.

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
$hostname, $database); $data_source='dbi:mysql:radonet:localhost';
$user='root';
$pass='junkh1a';
$database='radius';
$hostname='localhost';
$port='3306';
$dbh = DBI->connect($data_source, $user, $pass); $sql = "UPDATE radacct SET
AcctSessionTime = ?, TrunkIdOut = ?, TrunkIdIn = ? where AcctUniqueId = ?";
$sth = $dbh->prepare($sql);

#Open the file
open FH, '<', $fn or die "The File $fn Could not be opened: $! \n";
while(<FH>)
{
#split the file into variables
   @x =(split/,/)[0,1,2,3,4,5,6];
  $sth->execute($x[2], $x[5], $x[4], $x[6]); }

# extract from the lost.csv file

19736873001," """"",1,4/18/2007 22:59, 192.168.44.38, 10.0.11.79,
1a88e00c34cb30fa
2.34803E+12,2087316954,0,4/18/2007 23:00, 10.0.11.76, 0.0.0.0,
1ebd35b17bd867f9
2.34803E+12,2087316954,0,4/18/2007 23:00, 10.0.11.76, 0.0.0.0,
ab3b78424358b27d 12024227659," """"",0,4/18/2007 23:00, 192.168.44.38,
10.0.11.76,
5a31b839bfc95cd5
4.47904E+11," """"",21,4/18/2007 23:00, 192.168.44.38, 10.0.11.79,
9e95a7a7b6937ff8
12024227659," """"",0,4/18/2007 23:00, 192.168.44.38, 10.0.11.76,
0ef7c2048870a6ef 14506708893," """"",211,4/18/2007 22:57, 192.168.44.38,
10.0.11.79,
6a0056401dcb56a7
12024227659," """"",0,4/18/2007 23:01, 192.168.44.38, 10.0.11.76,
d6b154140636378b 19736873001," """"",30,4/18/2007 23:00, 192.168.44.38,
10.0.11.79, b744ff188ed3c7fc 16304971578," """"",0,4/18/2007 23:01,
192.168.44.38, 10.0.11.76,
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
To unsubscribe, e-mail: beginners-unsubscribe@perl.org For additional
commands, e-mail: beginners-help@perl.org http://learn.perl.org/



This e-mail is from the PA Group.  For more information, see
www.thepagroup.com.

This e-mail may contain confidential information.  Only the addressee is
permitted to read, copy, distribute or otherwise use this email or any
attachments.  If you have received it in error, please contact the sender
immediately.  Any opinion expressed in this e-mail is personal to the sender
and may not reflect the opinion of the PA Group.

Any e-mail reply to this address may be subject to interception or
monitoring for operational reasons or for lawful business practices.





-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

bulpNtt3i. sL
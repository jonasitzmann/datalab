From beginners-return-92576-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 10:02:07 2007
Return-Path: <beginners-return-92576-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KE26L9010756
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:02:06 -0400
Received: (qmail 8368 invoked by uid 514); 20 Jun 2007 14:01:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8357 invoked from network); 20 Jun 2007 14:01:58 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 14:01:58 -0000
Received: (qmail 32160 invoked by uid 225); 20 Jun 2007 14:01:57 -0000
Delivered-To: beginners@perl.org
Received: (qmail 32153 invoked by alias); 20 Jun 2007 14:01:57 -0000
X-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from mail.electro-mecanik.com (HELO FEI_Mail.electro-mecanik.com) (207.134.66.250)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 07:01:54 -0700
Received: from [10.1.200.85] ([10.1.200.85])
	by FEI_Mail.electro-mecanik.com  with ESMTP id l5KE1mtP026199
	for <beginners@perl.org>; Wed, 20 Jun 2007 10:01:48 -0400
Message-ID: <46793224.1020305@feinc.com>
Date: Wed, 20 Jun 2007 09:56:52 -0400
From: Tony marquis <tony.marquis@feinc.com>
User-Agent: Thunderbird 2.0.0.0 (X11/20070326)
MIME-Version: 1.0
To: beginners@perl.org
Subject: parse mime email
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to read the body and the attachment in a mime message. I keep 
getting the folling error.

Use of uninitialized value in pattern match (m//) at 
/usr/share/perl5/Email/MIME/ContentType.pm line 24.


#!/usr/bin/perl -w

use Net::POP3;
use Email::MIME;

my ($mail_server, $username, $password, $parsed, $decoded) = ("xx", 
"xx", "xx", "", "");

$pop = Net::POP3->new($mail_server)
    or die "Can't open connection to $mail_server : $!\n";
defined ($pop->login($username, $password))
    or die "Can't authenticate: $!\n";
$messages = $pop->list
    or die "Can't get list of undeleted messages: $!\n";
foreach $msgid (keys %$messages) {
    $message = $pop->get($msgid);

  $parsed = Email::MIME->new(@$message);
  $decoded = $parsed->body;
  print "$decoded";

    unless (defined $message) {
        warn "Couldn't fetch $msgid from server: $!\n";
        next;
    }
    # $message is a reference to an array of lines
#    $pop->delete($msgid);
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

Fty=sTo.> b>
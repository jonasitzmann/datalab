From beginners-return-92337-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 19:45:08 2007
Return-Path: <beginners-return-92337-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CNj7L9000888
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 19:45:07 -0400
Received: (qmail 8952 invoked by uid 514); 12 Jun 2007 23:44:59 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 8943 invoked from network); 12 Jun 2007 23:44:59 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 23:44:59 -0000
Received: (qmail 8980 invoked by uid 225); 12 Jun 2007 23:44:58 -0000
Delivered-To: beginners@perl.org
Received: (qmail 8976 invoked by alias); 12 Jun 2007 23:44:58 -0000
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_FAIL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: fail (x1.develooper.com: domain of merlyn@stonehenge.com does not designate 63.251.223.186 as permitted sender)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 12 Jun 2007 16:44:55 -0700
Received: (qmail 8932 invoked by uid 515); 12 Jun 2007 23:44:50 -0000
To: beginners@perl.org, p46921x@hotmail.com
Subject: Re: Help creating a random string in Perl
References: <1181677143.777078.102000@g37g2000prf.googlegroups.com>
From: merlyn@stonehenge.com (Randal L. Schwartz)
x-mayan-date: Long count = 12.19.14.7.1; tzolkin = 13 Imix; haab = 9 Zotz
Date: Tue, 12 Jun 2007 16:44:50 -0700
Message-ID: <86ir9s3fgt.fsf@blue.stonehenge.com>
Organization: Stonehenge Consulting Services; Portland, Oregon, USA
User-Agent: Gnus/5.1008 (Gnus v5.10.8) Emacs/21.4 (berkeley-unix)
Cancel-Lock: sha1:O+ww9wwCrRVycBrQHlAuhUaGk6g=
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Posted-By: 209.223.236.162

>>>>> "p46921x" == p46921x  <p46921x@hotmail.com> writes:

p46921x> 1. Only characters in the source string are in the random string
p46921x> meaning if Z is not in my source string, it will not be in my random
p46921x> string. If A and B are in the source string, then at least one of them
p46921x> will be in the random string.
p46921x> 2. Each source string will only contain one of the same characters, ie
p46921x> ABcDeFG is a valid source string but  there will be no source strings
p46921x> like ABBDeFG  (as it contains two "B"s).
p46921x> 3. Each random string has one less character than the source string,
p46921x> ie the source string ABcDeFG has 7 characters but the random strings
p46921x> ABDeFG and GABcDe and AcBeDG have 6 characters.

my $input = "ABcDeFG";
use List::Util qw(shuffle); # core in 5.8, CPAN for earlier
my $output = join "", (shuffle split //, $input)[0..length($input)-2];
print $output, "\n";

-- 
Randal L. Schwartz - Stonehenge Consulting Services, Inc. - +1 503 777 0095
<merlyn@stonehenge.com> <URL:http://www.stonehenge.com/merlyn/>
Perl/Unix/security consulting, Technical writing, Comedy, etc. etc.
See PerlTraining.Stonehenge.com for onsite and open-enrollment Perl training!

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

cr33.d<o
 
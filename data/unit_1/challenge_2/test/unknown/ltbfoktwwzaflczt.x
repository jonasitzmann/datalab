From beginners-return-92355-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 10:23:20 2007
Return-Path: <beginners-return-92355-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DENIL9008557
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 10:23:19 -0400
Received: (qmail 30373 invoked by uid 514); 13 Jun 2007 14:23:12 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 30364 invoked from network); 13 Jun 2007 14:23:12 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 14:23:12 -0000
Received: (qmail 25535 invoked by uid 225); 13 Jun 2007 14:23:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25529 invoked by alias); 13 Jun 2007 14:23:11 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from relay0.mail.ox.ac.uk (HELO relay0.mail.ox.ac.uk) (129.67.1.161)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 07:23:09 -0700
Received: from smtp0.mail.ox.ac.uk ([129.67.1.205])
	by relay0.mail.ox.ac.uk with esmtp (Exim 4.62)
	(envelope-from <gian.sartor@worc.ox.ac.uk>)
	id 1HyTkV-0007cR-29
	for beginners@perl.org; Wed, 13 Jun 2007 15:23:03 +0100
Received: from w32.worc.ox.ac.uk ([129.67.124.32])
	by smtp0.mail.ox.ac.uk with esmtp (Exim 4.63)
	(envelope-from <gian.sartor@worc.ox.ac.uk>)
	id 1HyTkV-0007Su-1J
	for beginners@perl.org; Wed, 13 Jun 2007 15:23:03 +0100
Message-ID: <466FFDD4.5030603@worc.ox.ac.uk>
Date: Wed, 13 Jun 2007 15:23:16 +0100
From: Gian Sartor <gian.sartor@worc.ox.ac.uk>
User-Agent: Thunderbird 2.0.0.0 (X11/20070326)
MIME-Version: 1.0
To: beginners@perl.org
Subject: loop auto-incrementing array elements
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I have a list in the following format ->

room
surname
firstnames

What I would like to is read the file into an array and combine the 
firstname and surname onto the same line and ignore the room. Below is 
an example of what I want to do ->

@line = <>;
$surname = $line[1];
chomp ($surname);
$fname = $line[2];
chomp ($fname);
print "$surname, $fname\n";

this needs to loop through the array till the end but on each loop the 
$surname and $fname elements need to increment by 3, so the next time 
the loop runs it will look something like this ->

@line = <>;
$surname = $line[4];
chomp ($surname);
$fname = $line[5];
chomp ($fname);
print "$surname, $fname\n";

I would like to end up with a list of names only, eg ->

surname, firstname
surname, firstname

i would be grateful if someone could point me in the right direction on 
this one. TIA.

Gian


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

nleoAn
 meiaPma
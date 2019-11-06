From beginners-return-92894-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 08:51:33 2007
Return-Path: <beginners-return-92894-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TCpWL9025828
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:51:33 -0400
Received: (qmail 15156 invoked by uid 514); 29 Jun 2007 12:50:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 25823 invoked from network); 29 Jun 2007 06:12:07 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of jeevan.ingale@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 29 06:11:52 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: jeevs <jeevan.ingale@gmail.com>
Subject: CPU/Memory usage of a process on Windows machine
Date: Thu, 28 Jun 2007 23:11:41 -0700
Organization: http://groups.google.com
Lines: 35
Message-ID: <1183097501.686768.161920@m37g2000prh.googlegroups.com>
NNTP-Posting-Host: 220.225.78.10
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183097502 17716 127.0.0.1 (29 Jun 2007 06:11:42 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 29 Jun 2007 06:11:42 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: m37g2000prh.googlegroups.com; posting-host=220.225.78.10;
   posting-account=aKsCyQ0AAABTnNc8UwGn6p5D5dAANqBj
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Greetings

  I am trying to find CPU and memory usage on a windows machine and i
was able to get through memory usage using Win32::Process::Info
module's GetProcInfo function.
  This code may be helpfull to others which calculate the memory usage
of a particular process on windows


#!c:/perl/bin/perl.exe
# This is a test scrip
use Win32::Process::Info;
use warnings;
use strict;
my  $pi = Win32::Process::Info->new ();
my @process_information  = $pi->GetProcInfo(4488); ## 4488 is pid of a
particular process.
foreach  $info (@process_information) {
		foreach my $key (keys %{$info}) {
							if ($key eq "WorkingSetSize") {
									my $value = ${$info}{$key}/1024;
									print "$key:=>$value \n"
							}

		}
}


However i am struck at the cpu usage part.. If anyone can point me to
some good article or any docs to read for the same would be
appreciated. I have already googled a lot but i think i am missing
something..

Thanks ..


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

h5s /d8 tiU/iV
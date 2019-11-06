From beginners-return-92891-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 08:49:50 2007
Return-Path: <beginners-return-92891-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TCnnL9025792
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:49:50 -0400
Received: (qmail 9716 invoked by uid 514); 29 Jun 2007 12:49:40 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 16469 invoked from network); 28 Jun 2007 19:08:55 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of vedpsingh@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jun 28 19:01:18 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Ved <vedpsingh@gmail.com>
Subject: Adding a line in a file inside many directories
Date: Thu, 28 Jun 2007 19:00:51 -0000
Organization: http://groups.google.com
Lines: 47
Message-ID: <1183057251.906735.37650@i38g2000prf.googlegroups.com>
NNTP-Posting-Host: 121.246.220.9
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183057252 32354 127.0.0.1 (28 Jun 2007 19:00:52 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 28 Jun 2007 19:00:52 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: i38g2000prf.googlegroups.com; posting-host=121.246.220.9;
   posting-account=uw7u7w0AAABoxL-7CddhBRCmlsDhwrr6
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi All,
Situation is bit complex (atleast for a beginer like me).
Directory structure is somewhat like this:
 testcases--> 150 Directories (names starting with mixed or green.) ---
> kat.s
i.e. a directrory named testcases has 150 number of directories in it
and each of those 150 number of directories has a file named kat.s .

Now I have to print a single line at say line number 20 in each of 150
number of  kat.s file.
I also have a list of names of all 150 subdirectories in a text file
named "list_of_files".

I have thought of implementing like this:
Open all kat.s in all the 150 directories using "list_of_files" and
print the line(tried as in  code below).
There is some problem in line where I am trying to open kat.s using
dirIN handle.
What am I doing wrong ?
Is there any better approach ?

#########
use strict;
use warnings;
my $file =  'print.txt';
open my $VEDOUT, '>', $file or die "Could not open '$file':  ";

open (VEDIN, 'list_of_files.txt') or die "Cannot open 'File.txt' $!";
my @rgstr=<VEDIN>;

foreach my $file_list (@rgstr) {
  print $file_list ;	#prints file list
open (dirIN, '$file_list/kat.s') or die "Cannot open 'File.txt' $!";
#How to open kat.s ??

###Further have to add the print statement
}
close (VEDIN);
close ($VEDOUT);

##########



Regards
Ved


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   


0=Iae4 =
From beginners-return-92670-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:50:05 2007
Return-Path: <beginners-return-92670-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMo4L9010191
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:50:04 -0400
Received: (qmail 17235 invoked by uid 514); 22 Jun 2007 17:46:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 31481 invoked from network); 22 Jun 2007 16:04:24 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of dustin.ho@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 22 16:04:07 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: dustin.ho@gmail.com
Subject: How can I compare Bytes in a Binary File?
Date: Fri, 22 Jun 2007 16:03:59 -0000
Organization: http://groups.google.com
Lines: 12
Message-ID: <1182528239.062413.205480@q75g2000hsh.googlegroups.com>
NNTP-Posting-Host: 205.153.101.8
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1182528239 30650 127.0.0.1 (22 Jun 2007 16:03:59 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 22 Jun 2007 16:03:59 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: q75g2000hsh.googlegroups.com; posting-host=205.153.101.8;
   posting-account=jRxxGw0AAAAdf4B0HrJc9UAMltJFwlpd
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi guys/gals, I'm having a bit of a problem and wondering if anyone
can help.

I've got a binary file here that I'm reading byte by byte and I'm
trying to compare the raw binary data... but I'm running into problems
with bytes without an ASCII representation. For example, if I'm
looking for hex value 58 its fine, because I can just read a byte and
see if ($byte eq "X") since 58 is X in ASCII. What if I want to search
for ff or c6 or something which has no ASCII representation?

Thanks!


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

s1taae
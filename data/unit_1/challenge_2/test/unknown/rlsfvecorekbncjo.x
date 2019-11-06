From beginners-return-93041-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 12:41:00 2007
Return-Path: <beginners-return-93041-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64Gf0L9013063
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 12:41:00 -0400
Received: (qmail 6501 invoked by uid 514); 4 Jul 2007 16:40:38 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 27959 invoked from network); 4 Jul 2007 15:24:15 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of kyle.halberstam@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jul 04 15:23:58 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: kyle.halberstam@gmail.com
Subject: Check if file is being modified by another process
Date: Wed, 04 Jul 2007 15:23:40 -0000
Organization: http://groups.google.com
Lines: 20
Message-ID: <1183562620.505242.300810@57g2000hsv.googlegroups.com>
NNTP-Posting-Host: 216.13.12.226
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183562620 31518 127.0.0.1 (4 Jul 2007 15:23:40 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 4 Jul 2007 15:23:40 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: 57g2000hsv.googlegroups.com; posting-host=216.13.12.226;
   posting-account=XowM7w0AAABW69EAwuMRBbBE9SBMadaG
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi,

I have an application that creates and writes to an output file I need
to process. I need to process the file when it is completely written
to. I do not initially know how big the file will be in the end.
Further, the application does NOT put a write lock on the file while
it is writing it. because of the buffering, the program wirtes to the
file in random chunks not continuously. And what is worse, the file
format itself could vary so there is nothing in the actual file that
signals the end of it. Everything is on a linux server.

What's the most efficient way of checking this? - one way is perhaps
inifinite loop checking mmtime until it is stable for a certain amount
of time?? I am not sure.

Any help will be greatly appreciated. Thanks


Kyle


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

>Tso>
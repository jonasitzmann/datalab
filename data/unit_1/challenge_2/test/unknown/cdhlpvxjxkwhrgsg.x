From beginners-return-92341-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 04:54:58 2007
Return-Path: <beginners-return-92341-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D8svL9005670
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 04:54:58 -0400
Received: (qmail 21862 invoked by uid 514); 13 Jun 2007 08:54:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 9997 invoked from network); 13 Jun 2007 05:26:41 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of emenzhaowork@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 13 05:26:25 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: "emenzhaowork@gmail.com" <emenzhaowork@gmail.com>
Subject: Set up env variables on Linux
Date: Wed, 13 Jun 2007 05:26:05 -0000
Organization: http://groups.google.com
Lines: 15
Message-ID: <1181712365.105629.20720@g37g2000prf.googlegroups.com>
NNTP-Posting-Host: 72.163.254.156
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1181712365 8023 127.0.0.1 (13 Jun 2007 05:26:05 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 13 Jun 2007 05:26:05 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: g37g2000prf.googlegroups.com; posting-host=72.163.254.156;
   posting-account=dUoKXQ0AAADD9VQLeVV4ClTgAO6y1SIZ
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi All,

I'm pretty new to Perl. I was trying to write up a perl script that
can help set up my working env, for example, once log into Linux
server, run the perl script, it'll move to another folder and
configure some env variables.

I tried using
`cd dest_folder`                       or
system "cd dest_folder"           or
exec "cd dest_folder"

but after running script, the current folder doesn't change at all.
Anyone please shed some lights on this.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

Dwel2:i6Dw
From beginners-return-92536-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 19 07:22:40 2007
Return-Path: <beginners-return-92536-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5JBMdL9028752
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 07:22:40 -0400
Received: (qmail 22959 invoked by uid 514); 19 Jun 2007 11:22:32 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 10681 invoked from network); 19 Jun 2007 10:32:28 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of pdcooper@blueyonder.co.uk)
To: beginners@perl.org
MBOX-Line: From news@google.com Tue Jun 19 10:32:11 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: pauld <pdcooper@blueyonder.co.uk>
Subject: Re: perl sort query
Date: Tue, 19 Jun 2007 03:32:00 -0700
Organization: http://groups.google.com
Lines: 27
Message-ID: <1182249120.616483.7950@q69g2000hsb.googlegroups.com>
References: <1182177073.163274.231200@x35g2000prf.googlegroups.com>
   <4677017F.5010701@telus.net>
NNTP-Posting-Host: 194.176.105.39
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1182249120 738 127.0.0.1 (19 Jun 2007 10:32:00 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Tue, 19 Jun 2007 10:32:00 +0000 (UTC)
In-Reply-To: <4677017F.5010701@telus.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.0; en-US; rv:1.8.0.12) Gecko/20070508 Firefox/1.5.0.12,gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.1 NTGHPROXY1, 1.1 n3-ld-cache-inetgw-62
Complaints-To: groups-abuse@google.com
Injection-Info: q69g2000hsb.googlegroups.com; posting-host=194.176.105.39;
   posting-account=m6z-BwwAAAAAmfkL1o_E2SA-JaqlZAtm
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.4 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL


> $ perl -le'
> print for @x = qw/200610011733 200610012057 200610011029 200610010928
> 200610011220/, "";
>
> print for sort @x;
> '
> 200610011733
> 200610012057
> 200610011029
> 200610010928
> 200610011220

>
the time is the last 4 digits (hhmm)
so the first is 17:33
then 20:57
then 10:29
then 09:28

i want them chronologically
ie
09:28
10:29
17:33
 20:57


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

mMYB31lo_
From beginners-return-92573-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 09:55:03 2007
Return-Path: <beginners-return-92573-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KDt2L9010657
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 09:55:02 -0400
Received: (qmail 28638 invoked by uid 514); 20 Jun 2007 13:54:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 1239 invoked from network); 20 Jun 2007 12:53:59 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of todeepaksahoo@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 20 12:53:44 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: todeepaksahoo@gmail.com
Subject: Re: Reading a particular line from a file
Date: Wed, 20 Jun 2007 05:53:21 -0700
Organization: http://groups.google.com
Lines: 21
Message-ID: <1182344001.862375.122680@o11g2000prd.googlegroups.com>
References: <C4A55E6959ED6F498EA07FFB09DAB2E007252754@bgeexc04.asiapacific.cpqcorp.net>
NNTP-Posting-Host: 203.124.131.235
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1182344002 24695 127.0.0.1 (20 Jun 2007 12:53:22 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 20 Jun 2007 12:53:22 +0000 (UTC)
In-Reply-To: <C4A55E6959ED6F498EA07FFB09DAB2E007252754@bgeexc04.asiapacific.cpqcorp.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 PC337
Complaints-To: groups-abuse@google.com
Injection-Info: o11g2000prd.googlegroups.com; posting-host=203.124.131.235;
   posting-account=mlsIiA0AAACbhCAaZuEpj_m6kuU8kF8X
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On 20 Jun, 16:42, alok.n...@hp.com (Alok Nath) wrote:
> Hi,
>         Is it possible to read a particular line by line number ?
>
>         For e.g reading line 3 from a file.
>
>         I don't want to read each line and count.
>
> Thanks
> Alok

You can do below to print the 3rd line.

open FILE, "./xyz" or die "can not open file xyz";
while (<FILE>)
{
print if ($.==3)
}

Deepak


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

tab
r:U>
xglWm
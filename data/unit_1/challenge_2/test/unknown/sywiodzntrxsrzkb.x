From beginners-return-92385-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 04:19:00 2007
Return-Path: <beginners-return-92385-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5E8IxL9018993
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 04:19:00 -0400
Received: (qmail 22128 invoked by uid 514); 14 Jun 2007 08:18:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 28434 invoked from network); 13 Jun 2007 23:33:36 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 13 23:33:15 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: usenet@DavidFilmer.com
Subject: Re: Getting a program pid
Date: Wed, 13 Jun 2007 23:32:46 -0000
Organization: http://groups.google.com
Lines: 13
Message-ID: <1181777566.696650.153070@e9g2000prf.googlegroups.com>
References: <20070614091046.1929e57f@owen-desktop>
NNTP-Posting-Host: 170.2.52.28
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181777568 24683 127.0.0.1 (13 Jun 2007 23:32:48 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 13 Jun 2007 23:32:48 +0000 (UTC)
In-Reply-To: <20070614091046.1929e57f@owen-desktop>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.3) Gecko/20070309 Firefox/2.0.0.3,gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 CORPPRX01 (NetCache NetApp/6.0RC2), 1.0 CORPPRX01 (NetCache NetApp/6.0RC2)
Complaints-To: groups-abuse@google.com
Injection-Info: e9g2000prf.googlegroups.com; posting-host=170.2.52.28;
   posting-account=4S8VjQ0AAADDzJIWtP4-hVWHyPlWcjWw
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 13, 4:10 pm, r...@pcug.org.au (Owen) wrote:
> I thought there may have been a perl command like "getpid (program)"
> but it doesn't seem so.

Yeah, sometimes when we make up commands they don't work.

Try the special variable $$ (perldoc perlvar)


--
The best way to get a good answer is to ask a good question.
David Filmer (http://DavidFilmer.com)


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

i. . s
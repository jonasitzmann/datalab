From beginners-return-92294-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 18:32:37 2007
Return-Path: <beginners-return-92294-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BMWZL9019527
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 18:32:36 -0400
Received: (qmail 2808 invoked by uid 514); 11 Jun 2007 22:32:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 27751 invoked from network); 11 Jun 2007 17:47:55 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of ashishrai@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Mon Jun 11 17:47:40 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: ash <ashishrai@gmail.com>
Subject: Re: Writing data row at a time using OLE
Date: 11 Jun 2007 10:46:24 -0700
Organization: http://groups.google.com
Lines: 19
Message-ID: <1181581491.855526.205280@n4g2000hsb.googlegroups.com>
References: <1181570361.854359.196490@p47g2000hsd.googlegroups.com>
   <466D7AD7.5010509@earthlink.net>
NNTP-Posting-Host: 65.209.123.66
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181583984 1707 127.0.0.1 (11 Jun 2007 17:46:24 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Mon, 11 Jun 2007 17:46:24 +0000 (UTC)
In-Reply-To: <466D7AD7.5010509@earthlink.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: n4g2000hsb.googlegroups.com; posting-host=65.209.123.66;
   posting-account=DsIT_A0AAACp9mX9R7NwYZPHEYzsjkXJ
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 11, 12:39 pm, mumia.w.18.spam+nos...@earthlink.net (Mumia W.)
wrote:
> On 06/11/2007 08:59 AM, ash wrote:
>
> > Hi everyone!
>
> > I am using Win32::OLE for writing data in existing Excel file. I would
> > like to know how to write data one row at a time. Writing one cell at
> > a time is too slow, it took 17mins to write 527KB file.
>
> > Thank you all very much for your help :).
>
> You might look into the Spreadsheet::WriteExcel module which has a
> "write_row" method.

Thanks for your feedback! But WrietExcel does not support writing to
existing excel file. I need to open existing excel file and write on
it.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

g  ly>JfFs>t
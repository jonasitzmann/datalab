From beginners-return-92331-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 18:25:21 2007
Return-Path: <beginners-return-92331-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CMPKL9032595
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 18:25:20 -0400
Received: (qmail 6422 invoked by uid 514); 12 Jun 2007 22:24:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 20407 invoked from network); 12 Jun 2007 19:28:34 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of ashishrai@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Tue Jun 12 19:28:18 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: ash <ashishrai@gmail.com>
Subject: Need help for writing attachment saver
Date: 12 Jun 2007 12:27:52 -0700
Organization: http://groups.google.com
Lines: 15
Message-ID: <1181676140.558042.326700@r19g2000prf.googlegroups.com>
NNTP-Posting-Host: 65.209.123.66
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1181676487 2811 127.0.0.1 (12 Jun 2007 19:28:07 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Tue, 12 Jun 2007 19:28:07 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: r19g2000prf.googlegroups.com; posting-host=65.209.123.66;
   posting-account=DsIT_A0AAACp9mX9R7NwYZPHEYzsjkXJ
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi!

I'm trying to write a code to read mail from POP3 server and then save
the attachment in specified folder. I checked the
Email::MIME::Attachment::Stripper which needs to be initialized with
Email::MIME object. I checked the Email::MIME module but I couldn't
understand how to read mail and create new Email::MIME object.

Basically I need code for reading mail with Mail::POP3Client module
then create Email::MIME object and then pass it to
Email::MIME::Attachment::Stripper. Or is there better way to receive
mail and save attachment?

Thank you all.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                 

ri.en wie-4rR
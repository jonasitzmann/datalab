From beginners-return-92096-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 07:14:49 2007
Return-Path: <beginners-return-92096-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52BEmhB022373
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 07:14:48 -0400
Received: (qmail 29710 invoked by uid 514); 2 Jun 2007 11:14:37 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 23815 invoked from network); 2 Jun 2007 07:55:30 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of almatirkey@gmail.com)
To: beginners@perl.org, perl-beginners@moderators.isc.org
MBOX-Line: From news@google.com Sat Jun 02 07:55:11 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Alma <almatirkey@gmail.com>
Subject: Passing arguments
Date: Sat, 02 Jun 2007 00:54:50 -0700
Organization: http://groups.google.com
Lines: 15
Message-ID: <1180770890.347754.322420@i38g2000prf.googlegroups.com>
NNTP-Posting-Host: 121.246.231.221
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1180770890 3717 127.0.0.1 (2 Jun 2007 07:54:50 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Sat, 2 Jun 2007 07:54:50 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070412 Firefox/2.0.0.2,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: i38g2000prf.googlegroups.com; posting-host=121.246.231.221;
   posting-account=L0DpxA0AAACGFIt6bbVaqcLEK6K2SZFe
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi,

I need to pass id as parameters to a subroutine

testsub(35);

sub testsub($)
   {
   my $self = shift;
   my $id = @_;
   print "$id";
}

Its printing 3 . am i going wrong in prototype .


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

I;ild
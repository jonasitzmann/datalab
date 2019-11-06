From beginners-return-92701-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 23 13:26:16 2007
Return-Path: <beginners-return-92701-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5NHQFL9021562
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 23 Jun 2007 13:26:15 -0400
Received: (qmail 28805 invoked by uid 514); 23 Jun 2007 17:26:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 27629 invoked from network); 23 Jun 2007 10:07:13 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of sumonsmailbox@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Sat Jun 23 10:06:55 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: skywriter14 <sumonsmailbox@gmail.com>
Subject: setting a hidden field with WWW::Mechanize
Date: Sat, 23 Jun 2007 10:06:30 -0000
Organization: http://groups.google.com
Lines: 26
Message-ID: <1182593190.556648.22500@g4g2000hsf.googlegroups.com>
NNTP-Posting-Host: 202.56.7.138
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1182593190 9268 127.0.0.1 (23 Jun 2007 10:06:30 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Sat, 23 Jun 2007 10:06:30 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: g4g2000hsf.googlegroups.com; posting-host=202.56.7.138;
   posting-account=Xx1-XA0AAAAp48mz2QpO-1URn-btlnf5
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hello,

I have been trying to set some hidden form fields with WWW::Mechanize,
but I get error that they are read only.
Is it a cannot-be-done case for all hidden input form fields? Does
anyone has some tips for me?

These fields are some times hidden, sometimes visible textfields.
Right now I am going around like this:

my $mech = WWW::Mechanize->new();
my $self = bless {}, $class;
$self->{mech} = $mech;
.........
$self->{aaa} = 'some text';
# these fields sometimes are hidden, don't want to set them if they
are hidden, because that causes error
$self->{mech}->field( 'aaa' => $self->{aaa}, ) if ($self->{aaa}) && !
grep { m'aaa'i } @hidden_fields;
# list @hidden_fields is populated at runtime

But if there is a way to set these hidden fields that would be
helpful. Thanks.

--Sumon.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

dut/etW9
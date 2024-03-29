From beginners-return-92330-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 18:25:02 2007
Return-Path: <beginners-return-92330-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CMP0L9032585
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 18:25:00 -0400
Received: (qmail 6406 invoked by uid 514); 12 Jun 2007 22:24:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 21905 invoked from network); 12 Jun 2007 19:39:37 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-0.5 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FORGED_HOTMAIL_RCVD2,SPF_SOFTFAIL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: softfail (x1.develooper.com: transitioning domain of p46921x@hotmail.com does not designate 63.251.223.186 as permitted sender)
To: beginners@perl.org
MBOX-Line: From news@google.com Tue Jun 12 19:39:22 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: p46921x@hotmail.com
Subject: Help creating a random string in Perl
Date: Tue, 12 Jun 2007 12:39:03 -0700
Organization: http://groups.google.com
Lines: 53
Message-ID: <1181677143.777078.102000@g37g2000prf.googlegroups.com>
NNTP-Posting-Host: 88.144.8.88
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1181677144 32154 127.0.0.1 (12 Jun 2007 19:39:04 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Tue, 12 Jun 2007 19:39:04 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: g37g2000prf.googlegroups.com; posting-host=88.144.8.88;
   posting-account=0AzwOA0AAADVyG6a6Z4zJCGWlZArTBvr
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=1.4 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FORGED_HOTMAIL_RCVD2,SPF_NEUTRAL


Hello, this is perl.beginners and I am really a beginner. This is also
my first Google group post so if I am in the wrong group, I am sorry.

I need to create a random combination of n-1 characters in a source
string. For example if the string is ABcDeFG (7 characters)
* I want to execute my perl script and get ABDeFG (6 characters)
* I execute my perl script a second time and get GABcDe (6 characters)
* I do it a third time and get AcBeDG (6 characters)
* etc

Also

1. Only characters in the source string are in the random string
meaning if Z is not in my source string, it will not be in my random
string. If A and B are in the source string, then at least one of them
will be in the random string.
2. Each source string will only contain one of the same characters, ie
ABcDeFG is a valid source string but  there will be no source strings
like ABBDeFG  (as it contains two "B"s).
3. Each random string has one less character than the source string,
ie the source string ABcDeFG has 7 characters but the random strings
ABDeFG and GABcDe and AcBeDG have 6 characters.

I can see how to generate a random number between 0 and 6 (meaning I
can pick one of the 7 characters in my source string) by using "print
int(rand(6))",  but I don't know where to being on the second and
third and fourth characters to and check that the random number hasn't
already been chosen.


Any help would be welcome. The more cryptic the better as it will
force me to understand what the Perl does ;)

Thank you
Richard

ps: I hope you don't mind but because I don't want spam, I have
created this email address specifically to post to Google groups. If
you are going to reply and I hope you do, please post to the Google
group as my email address will not be monitored.

ps: This isn't for school, it's sort of for fun for a program I am
writing to do crosswords.

ps: When I type perl - version, I see this as my version number
"v5.8.8 built for i486-linux-gnu-thread-multi".

ps: I have "Learning Perl 4th edition from Randal Schwartz". It is a
good book but doesn't describe the type of things I need to do. I have
access to Google but haven't been able to search a good link for the
type of random string code to work from for my problem.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

<lbcL/kT9nMWQo2
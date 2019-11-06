From beginners-return-92332-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 18:49:15 2007
Return-Path: <beginners-return-92332-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CMnEL9000335
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 18:49:14 -0400
Received: (qmail 19561 invoked by uid 514); 12 Jun 2007 22:49:07 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 19552 invoked from network); 12 Jun 2007 22:49:07 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 22:49:07 -0000
Received: (qmail 17486 invoked by uid 225); 12 Jun 2007 22:49:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17479 invoked by alias); 12 Jun 2007 22:49:06 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of rodrick.brown@lehman.com designates 192.147.57.153 as permitted sender)
Received: from extrelay7.lehman.com (HELO extrelay7.lehman.com) (192.147.57.153)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 15:49:03 -0700
Received: from nysmtplxmgmac06.lehman.com (nysmtplxmgmac06.lehman.com [10.12.86.116])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by extrelay7.lehman.com (Postfix) with ESMTP id 62D935C9EAC;
	Tue, 12 Jun 2007 18:48:59 -0400 (EDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by nysmtplxmgmac06.lehman.com (8.12.11/8.12.11) with SMTP id l5CMmm2t012589;
	Tue, 12 Jun 2007 18:48:59 -0400
Received: from nypcmg1exms314.leh.lbcorp.lehman.com ([10.12.98.77]) by njpcmg1excb303.leh.lbcorp.lehman.com with Microsoft SMTPSVC(6.0.3790.1830);
	 Tue, 12 Jun 2007 18:49:03 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="US-ASCII"
Subject: RE: Help creating a random string in Perl
Date: Tue, 12 Jun 2007 18:49:02 -0400
Message-ID: <68CA21987619D242BD45A7E6E44C30E40C1C6A53@nypcmg1exms314.leh.lbcorp.lehman.com>
In-Reply-To: <1181677143.777078.102000@g37g2000prf.googlegroups.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Help creating a random string in Perl
Thread-Index: AcetQIgC6srOHyRBSIKhlKUak+O6NAAAzP/A
References: <1181677143.777078.102000@g37g2000prf.googlegroups.com>
From: "Brown, Rodrick" <rodrick.brown@lehman.com>
To: <p46921x@hotmail.com>, <beginners@perl.org>
X-OriginalArrivalTime: 12 Jun 2007 22:49:03.0099 (UTC) FILETIME=[DFB5B4B0:01C7AD43]
X-messagegate_id: EA37FD16F27
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5CMnEL9000335


Look at crypt();
$ perldoc -f crypt is a good  

-----Original Message-----
From: p46921x@hotmail.com [mailto:p46921x@hotmail.com] 
Sent: Tuesday, June 12, 2007 3:39 PM
To: beginners@perl.org
Subject: Help creating a random string in Perl


Hello, this is perl.beginners and I am really a beginner. This is also
my first Google group post so if I am in the wrong group, I am sorry.

I need to create a random combination of n-1 characters in a source
string. For example if the string is ABcDeFG (7 characters)
* I want to execute my perl script and get ABDeFG (6 characters)
* I execute my perl script a second time and get GABcDe (6 characters)
* I do it a third time and get AcBeDG (6 characters)
* etc

Also

1. Only characters in the source string are in the random string meaning
if Z is not in my source string, it will not be in my random string. If
A and B are in the source string, then at least one of them will be in
the random string.
2. Each source string will only contain one of the same characters, ie
ABcDeFG is a valid source string but  there will be no source strings
like ABBDeFG  (as it contains two "B"s).
3. Each random string has one less character than the source string, ie
the source string ABcDeFG has 7 characters but the random strings ABDeFG
and GABcDe and AcBeDG have 6 characters.

I can see how to generate a random number between 0 and 6 (meaning I can
pick one of the 7 characters in my source string) by using "print
int(rand(6))",  but I don't know where to being on the second and third
and fourth characters to and check that the random number hasn't already
been chosen.


Any help would be welcome. The more cryptic the better as it will force
me to understand what the Perl does ;)

Thank you
Richard

ps: I hope you don't mind but because I don't want spam, I have created
this email address specifically to post to Google groups. If you are
going to reply and I hope you do, please post to the Google group as my
email address will not be monitored.

ps: This isn't for school, it's sort of for fun for a program I am
writing to do crosswords.

ps: When I type perl - version, I see this as my version number
"v5.8.8 built for i486-linux-gnu-thread-multi".

ps: I have "Learning Perl 4th edition from Randal Schwartz". It is a
good book but doesn't describe the type of things I need to do. I have
access to Google but haven't been able to search a good link for the
type of random string code to work from for my problem.


--
To unsubscribe, e-mail: beginners-unsubscribe@perl.org For additional
commands, e-mail: beginners-help@perl.org http://learn.perl.org/



- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

This message is intended only for the personal and confidential use of the designated recipient(s) named above.  If you are not the intended recipient of this message you are hereby notified that any review, dissemination, distribution or copying of this message is strictly prohibited.  This communication is for information purposes only and should not be regarded as an offer to sell or as a solicitation of an offer to buy any financial product, an official confirmation of any transaction, or as an official statement of Lehman Brothers.  Email transmission cannot be guaranteed to be secure or error-free.  Therefore, we do not represent that this information is complete or accurate and it should not be relied upon as such.  All information is subject to change without notice.

--------
IRS Circular 230 Disclosure:
Please be advised that any discussion of U.S. tax matters contained within this communication (including any attachments) is not intended or written to be used and cannot be used for the purpose of (i) avoiding U.S. tax related penalties or (ii) promoting, marketing or recommending to another party any transaction or matter addressed herein.



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



           

erG<e
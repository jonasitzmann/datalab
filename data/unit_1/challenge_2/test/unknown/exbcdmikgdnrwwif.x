From perl6-all-return-81782-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun  3 21:16:45 2007
Return-Path: <perl6-all-return-81782-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l541GihB021593
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 21:16:45 -0400
Received: (qmail 32052 invoked by uid 514); 4 Jun 2007 01:16:36 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 32047 invoked from network); 4 Jun 2007 01:16:36 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
X-Mail-Handler: MailHop Outbound by DynDNS
X-Originating-IP: 200.120.169.16
X-Report-Abuse-To: abuse@dyndns.com (see http://www.mailhop.org/outbound/abuse.html for abuse reporting information)
X-MHO-User: U2FsdGVkX1/AnyWJW7u4EC1J1Q661YM5DigKq9lbopw=
Message-ID: <4247.127.0.0.1.1180919736.squirrel@localhost>
Date: Sun, 3 Jun 2007 21:15:36 -0400 (CLT)
Subject: Cannot find tree rewrite rule
From: "andrew cooke" <andrew@acooke.org>
To: "parrot " <perl6-internals@perl.org>
Reply-To: andrew@acooke.org
User-Agent: SquirrelMail/1.4.9a
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Priority: 3 (Normal)
Importance: Normal
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=2.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_HELO_PASS,SPF_NEUTRAL


Can anyone point out what I'm doing wrong, please?

I'm seeing (first part if output from parsing, which is OK, second part is
failure to apply rewrite rule):
  "VAR1" => PMC 'PGE::Match' => "myfun" @ 0 {
      <alpha> => PMC 'PGE::Match' => "m" @ 0
  }
  transforming
  Cannot find the attribute 'function' (PGE::Match) that you asked for.

When I run
  http://www.acooke.org/andrew/writing/parrot/sfl/v1/past_test.pir
and
  http://www.acooke.org/andrew/writing/parrot/sfl/v1/sfl_past.tg

More info at
http://www.acooke.org/andrew/writing/parrot/sfl.html#ResearchPast

Thanks,
Andrew


   

Whbrlxwsc
BkrrA
From perl6-all-return-81750-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  2 11:37:02 2007
Return-Path: <perl6-all-return-81750-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l52Fb1hB025025
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 11:37:01 -0400
Received: (qmail 9735 invoked by uid 514); 2 Jun 2007 15:36:55 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9730 invoked from network); 2 Jun 2007 15:36:55 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.5 required=8.0
	tests=BAYES_00,DATE_IN_PAST_06_12,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of chromatic@wgz.org designates 63.105.17.39 as permitted sender)
From: chromatic <chromatic@wgz.org>
Organization: Snafu
To: perl6-internals@perl.org
Subject: Re: Relocation of the pod_todo.t test
Date: Fri, 1 Jun 2007 22:19:21 -0700
User-Agent: KMail/1.9.6
Cc: "Paul Cochrane" <paultcochrane@gmail.com>, p2 <parrot-porters@perl.org>
References: <8e8ee0d40705311348p6d667efcqb20cbd233ab5c280@mail.gmail.com>
In-Reply-To: <8e8ee0d40705311348p6d667efcqb20cbd233ab5c280@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706012219.21094.chromatic@wgz.org>
X-Virus-Scanned: by amavisd-new at wgz.org
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.5 required=8.0
	tests=BAYES_00,DATE_IN_PAST_06_12,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On Thursday 31 May 2007 13:48:04 Paul Cochrane wrote:

> I recently added a test for TODO items in the pod source, but added it
> to the t/doc/ test suite.  It is more of a coding standards test
> anyway, and I was wondering if it would be ok if I moved it from the
> doc tests into the coding standards tests.  This would also allow me
> to un-skip the test, removing the extra output skipping the test
> generates in 'make test' output, and allowing people to run the test
> manually as opposed to part of the main test suite.  Is this ok?  If
> noone complains I'll make the change in the next couple of days.

The plan makes sense to me.

-- c

  

inr:s
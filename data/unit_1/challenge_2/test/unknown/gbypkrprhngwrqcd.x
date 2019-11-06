From perl6-all-return-82451-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 14:35:07 2007
Return-Path: <perl6-all-return-82451-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TIZ6L9029492
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 14:35:06 -0400
Received: (qmail 19483 invoked by uid 514); 29 Jun 2007 18:35:02 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 19478 invoked from network); 29 Jun 2007 18:35:02 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <18053.20653.308909.324830@rgrjr.dyndns.org>
Date: Fri, 29 Jun 2007 14:34:21 -0400
From: Bob Rogers <rogers-perl6@rgrjr.dyndns.org>
To: perl6-internals@perl.org
CC: bugs-bitbucket@netlabs.develooper.com
Subject: [perl #43417] Should we change the API of functions just for real_exception()? 
In-Reply-To: <rt-3.6.HEAD-1276-1183054007-1098.43417-72-0@perl.org>
References: <RT-Ticket-43417@perl.org>
	<8e8ee0d40706281106j105380dfx837ded6c17f0230c@mail.gmail.com>
	<rt-3.6.HEAD-1276-1183054007-1098.43417-72-0@perl.org>
X-Mailer: VM 7.19 under Emacs 22.1.50.1
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RCVD_IN_PBL,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_PASS

   From: Paul Cochrane (via RT) <parrotbug-followup@parrotcode.org>
   Date: Thu, 28 Jun 2007 11:06:47 -0700

   # New Ticket Created by  Paul Cochrane 
   # Please include the string:  [perl #43417]
   # in the subject line of all future correspondence about this issue. 
   # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43417 >

   Hi all,

   As part of going through and converting internal_exception()s to
   real_exception()s (see RT#40392) I've found several functions which
   could use real_exception(), but to use this they would have to have
   the interpreter passed in as an argument, hence changing their API.
   Is it worth changing these functions' API just for a real_exception()?

   Comments most definitely welcome!

   Paul

As far as I'm concerned, the only places where we should keep
internal_exception are those where throwing an exception would just make
it worse, e.g. when deep memory corruption is detected and throwing is
so likely to fail that it would only obscure the source of the error.
I've been converting calls to use real_exception one at a time, because
I needed to see the backtrace to debug something else; that alone, IMHO,
is worth API changes.  Using real_exception will become even more
helpful as code gets more complicated and interactive debugging becomes
more powerful.

   So my vote is a resounding YES!

   If you would like to pass some or all of these cases on to me, please
do; just let me know, so I'm not stepping on your toes.

					-- Bob Rogers
					   http://rgrjr.dyndns.org/



Ts1cS:
Br>HfnSr
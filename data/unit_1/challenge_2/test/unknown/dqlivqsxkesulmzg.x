From beginners-return-92993-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 07:09:15 2007
Return-Path: <beginners-return-92993-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63B9EL9027733
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 07:09:15 -0400
Received: (qmail 13417 invoked by uid 514); 3 Jul 2007 11:09:04 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13408 invoked from network); 3 Jul 2007 11:09:04 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 11:09:04 -0000
Received: (qmail 13255 invoked by uid 225); 3 Jul 2007 11:09:03 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13244 invoked by alias); 3 Jul 2007 11:09:02 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Tue, 03 Jul 2007 04:08:48 -0700
Received: (qmail 13340 invoked by uid 515); 3 Jul 2007 11:08:43 -0000
To: beginners@perl.org
MBOX-Line: From news@google.com Tue Jul 03 11:08:42 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 13320 invoked from network); 3 Jul 2007 11:08:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 11:08:41 -0000
Received: (qmail 12970 invoked by uid 225); 3 Jul 2007 11:08:40 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 12956 invoked by alias); 3 Jul 2007 11:08:39 -0000
Received-SPF: neutral (x1.develooper.com: 130.133.4.7 is neither permitted nor denied by domain of news@google.com)
Received: from moderators.individual.net (HELO moderators.individual.net) (130.133.4.7)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 03 Jul 2007 04:08:34 -0700
Received: from proxy.google.com ([66.102.14.241])
          by moderators.individual.net (Exim 4.67)
          for perl-beginners@moderators.isc.org with esmtp
          (envelope-from <news@google.com>)
          id <1I5gFA-0002W2-LU>; Tue, 03 Jul 2007 13:08:29 +0200
Received: from AR020007
	by proxy.google.com with ESMTP id l63B8RU0018154
	for <perl-beginners@moderators.isc.org>; Tue, 3 Jul 2007 04:08:27 -0700
Received: (from news@localhost)
	by Google Production id l63B8D01019765
	for perl-beginners@moderators.isc.org; Tue, 3 Jul 2007 04:08:13 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: my deck of cards (once again)
Date: Tue, 03 Jul 2007 04:08:13 -0700
Organization: http://groups.google.com
Lines: 31
Message-ID: <1183460893.317542.207980@w5g2000hsg.googlegroups.com>
References: <848c3f360707030023nea50b4em207b453ce7a0db77@mail.gmail.com>
NNTP-Posting-Host: 74.70.185.44
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1183460893 19764 127.0.0.1 (3 Jul 2007 11:08:13 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Tue, 3 Jul 2007 11:08:13 +0000 (UTC)
In-Reply-To: <848c3f360707030023nea50b4em207b453ce7a0db77@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: w5g2000hsg.googlegroups.com; posting-host=74.70.185.44;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jul 3, 3:23 am, amic...@teumim.com (Amichai Teumim) wrote:
> Subject: my deck of cards (once again)

Are you aware that you're reinventing a wheel?
http://search.cpan.org/~akarger/Games-Cards-1.45/lib/Games/Cards.pm

That module already has methods to shuffle a deck, deal cards out to
hands, and pretty much anything else you'd want to do with a deck of
cards.

> The following shuffles up my deck of card

For extraordinarily loose definitions of "shuffles".  There is no
randomness involved in your algorithm at all.  You're far better off
using Games::Cards as referenced above, or at least List::Util's
shuffle() function.

> and then prints out the top
> five cards. I need it to work somehwhat differently.
>
> When I shift or pop an element, I need to
> store it as a variable, then push it on to the array in a different
> order from the original order.

Well... *what* order?  And what is preventing you from doing that?
Save off each pop() or shift(), and then put it onto an array in
whatever order you like.  Could you explain what part of this is
giving you difficulties?

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

  U0/Y:wje
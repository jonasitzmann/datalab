From perl6-all-return-82200-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 17:04:23 2007
Return-Path: <perl6-all-return-82200-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LL4ML9029271
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 17:04:22 -0400
Received: (qmail 14877 invoked by uid 514); 21 Jun 2007 21:04:19 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 14872 invoked from network); 21 Jun 2007 21:04:19 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Thu, 21 Jun 2007 19:36:12 +0100
From: Smylers <Smylers@stripey.com>
To: perl6-language@perl.org
Subject: Re: Quirky comments
Message-ID: <20070621183612.GP6900@stripey.com>
References: <ef30550b0706161211s513c3de3r7682ae278cd6e1ca@mail.gmail.com> <20070616232406.GA3134@wall.org> <ef30550b0706162045w200665f4s195e7eda22ba6e63@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef30550b0706162045w200665f4s195e7eda22ba6e63@mail.gmail.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Jonathan Lang writes:

> The only other thing that I'll continue to lobby for is that the line
> starting with a block comment's termination tag should _not_ be
> considered part of the comment, save for the termination tag itself.
> Programmers are likely to be surprised when text that follows a
> closing bracket is treated as being included within it.

They would be, if they spotted that it's a closing bracket.  The trouble
with the current specification is that it draws attention to this
'exception'!  Whereas in practice I suspect most people will find it
natural, because in the process of 'commenting out' a large block of
code they won't even spot that they've got a mixture of single-line and
block comments.

Certainly on first reading Larry's recent changes in this area my
initial thoughts were:

* Oh, he's removed the exception from matched-bracket comments which
  will allow for commenting-out lots of lines by putting hashes at the
  beginning of them.  That'll surprise people when they try to do that
  and it doesn't work.  I should object!

* Hmmm, now there's this third type of comment as well.  What on earth
  is that for?

Until it twigged.  If I hadn't read the spec then everything would just
have worked naturally!

Smylers



/b">cmkV4cnr
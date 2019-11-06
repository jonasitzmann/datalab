From perl6-all-return-82177-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 12:14:26 2007
Return-Path: <perl6-all-return-82177-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LGEPL9026237
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 12:14:26 -0400
Received: (qmail 582 invoked by uid 514); 21 Jun 2007 16:14:23 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 577 invoked from network); 21 Jun 2007 16:14:22 -0000
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
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of brian.d.foy@gmail.com)
To: perl6-language@perl.org
Subject: Re: Referring to source code within Perldoc: the new A<> code
Date: Thu, 21 Jun 2007 11:14:07 -0500
From: brian d foy <brian.d.foy@gmail.com>
Message-ID: <210620071114079448%brian.d.foy@gmail.com>
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621074400.GA32129@earth.overmeer.net> <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit
User-Agent: Thoth/1.7.2 (Carbon/OS X)
X-Posted-By: 24.148.86.38
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

In article
<832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com>, Damian
Conway <damian@conway.org> wrote:

> Mark Overmeer wrote:
> 
> [...yet another honest and heartfelt plea for Pod 6 to be something
> entirely different from what it is currently designed to be.]
> 
> The solution is simple, you know, Mark. Why not just write up your own
> alternate S26, redesigning Pod 6 the way you think it should work, and
> then publish your proposal for consideration here?

Couldn't most of this be figured out by making Pod6 extensible (or
whatever the right term is). Pod6 would be more of the syntax and basic
operation, but other people could have custom directives that their
Pod6 translators and formatters could then use. That is, not all of
this has to be in the spec if the spec has a way to make it possible
later. :)

And, as far as writing a new S26, does this mean that this really isn't
open to discussion? That is, if we want something different than you
want we have to have competing specs and there won't be any compromise?

         

rrW1g>
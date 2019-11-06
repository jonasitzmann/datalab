From perl6-all-return-81970-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 16:18:36 2007
Return-Path: <perl6-all-return-81970-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EKIZL9026048
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 16:18:36 -0400
Received: (qmail 2641 invoked by uid 514); 14 Jun 2007 20:18:33 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2636 invoked from network); 14 Jun 2007 20:18:33 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-ID;
  b=Z3Tf4QCt464ynEmqd8DYFgMG4GND1o0hRLud7QO4ib9aUTAqIxgROfh1YmruMp6gFixWanJBBWfdkGCwWrZ/0EE341eo5Bujs3w6Yh5WQeZUfrrqofkmasvSHu7LdLqqRIyOoRsat9wZeLCk+mZpueZf7fFAkdOSJUZOGuG3Oio=;
X-YMail-OSG: uzMUkx4VM1nuc7kKPYLnqzEvYBXAufrBNg3Gz0o5yHRyEOqD7AdUcyLbk3dKfhcrs0esNH4rThsB3KLnlyYgArinMdbjmJhVi8H31LOBCf2V4OGG0EujyOvyyDXvnw--
Date: Thu, 14 Jun 2007 13:18:05 -0700 (PDT)
From: Paul Hodges <ydbxmhc@yahoo.com>
Reply-To: Hodges@WriteMe.com
Subject: Re: Is Perl 6 too late? (an aside)
To: perl6-language@perl.org
In-Reply-To: <20070514184346.GA17054@wall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Message-ID: <744451.75561.qm@web31608.mail.mud.yahoo.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS


It's a valid aside to note that, while people know what singular and
plural are, few people use or even refer much to the Greek use of a
special intermediary (the dual) when there were exectly two of
something...but the basic mindest of dichotomy is a fundament of the
language. (c.f. the men/de construct so basic to the language).

Perl is like that. There are a lot of little corner cases that are
distinctly Perl, things unlikely to be seen elsewhere, and sometimes
hardly ever even used in Perl.... but the mindset that is Perl is a
beautiful thing, and that's still there. 

Besides, if you don't get the aesthetics of the Schwartzian Transform,
then you should probably be using python or java anyway, hm?

Let's let Perl be Perl. It's a new Perl, but it's still a pearl. =o)

*Paul

--- Larry Wall <larry@wall.org> wrote:

> On Mon, May 14, 2007 at 02:21:47PM -0400, Ryan Richter wrote:
> : In Perl 6, the & sigil is used to distinguish between
> : 
> : foo bar
> : 
> : which calls bar and passes the return value to foo, and
> : 
> : foo &bar
> : 
> : which passes bar as a Code object to foo.
> 
> In other words, the sigil is consistently a noun marker in Perl 6,
> even when a sigil is used on a verb.  In Perl 6, where sigils
> distinguish nouns not only from verbs, but also from adjectives (if
> you count types as adjectival).  With a glance you can tell which
> are the nouns and which are the types here:
> 
>     multi CatDog sub make_catdog (Cat $cat, Dog $dog) {...}
>     multi CatDog sub make_catdog (Cat Dog $catdog) {...}
> 
> While Gabor is correct that in Perl 5 removing the sigils from verbs
> made some verbal collisions happen that otherwise wouldn't have, in
> Perl 6 we've mostly fixed that by essentially getting rid of most
> reserved words, and making even the builtin functions participate
> as normal multis and methods.  For that reason, and because verbs
> linguistically tend to be disambiguated by the nouns fed to them as
> argements, verbs don't need to be conjugated nearly as badly as nouns
> need to be declined.  A lot of nouns typically don't have arguments
> to disambiguate them with, at least until you start subscripting
> them,
> and we don't do multiple dispatch on subscripts.
> 
> As for the original complaint, we long ago decided to ignore people
> who
> are prejudiced against languages that mark nouns.  Greek wouldn't be
> Greek if you couldn't decline your nouns.  (In my estimation, it's
> the conjugated verbs that make Greek so difficult to learn, really.
> On the other hand, once you learn them they're very expressive in
> tense and aspect.  It's all tradeoffs.)
> 
> Larry
> 



 
____________________________________________________________________________________
The fish are biting. 
Get more visitors on your site using Yahoo! Search Marketing.
http://searchmarketing.yahoo.com/arp/sponsoredsearch_v2.php

    

1FsLk
From perl6-all-return-82365-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 14:34:31 2007
Return-Path: <perl6-all-return-82365-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5PIYTL9032475
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 14:34:30 -0400
Received: (qmail 28963 invoked by uid 514); 25 Jun 2007 18:34:26 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28958 invoked from network); 25 Jun 2007 18:34:26 -0000
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
Date: Mon, 25 Jun 2007 20:30:36 +0200
From: Juerd Waalboer <juerd@convolution.nl>
To: perl6-language@perl.org
Subject: Re: Web Module (Was: Perl6 new features)
Message-ID: <20070625183036.GG31139@c4.convolution.nl>
References: <4676D013.6020708@perl.org> <200706221043.55600.chromatic@wgz.org> <58ce48dc0706221107i54eb457od81af207cf519344@mail.gmail.com> <200706221526.31234.chromatic@wgz.org> <82cfa8030706250057q2b59a313n4e4288b73993676@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82cfa8030706250057q2b59a313n4e4288b73993676@mail.gmail.com>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Hakim Cassimally skribis 2007-06-25  9:57 (+0200):
> Releasing a language without a useful, easily installable library bundle
> could quite reasonably be construed as a stupid business practice.

A useful, easily installable library bundle does not have to be in the
core distribution.

Debian already has its own split between perl and perl-modules. This is
a great scheme that allows Debian to use Perl in the base system,
without requiring the loads of unused modules that usually come with it.
If you need those modules, though, you can easily install them.

It would be great if Perl had this by default, because it would make it
easier for vendors to choose to use Perl in their base system. It would
also make Perl a more attractive choice for embedded systems.
-- 
korajn salutojn,

  juerd waalboer:  perl hacker  <juerd@juerd.nl>  <http://juerd.nl/sig>
  convolution:     ict solutions and consultancy <sales@convolution.nl>

        

tip.t/T
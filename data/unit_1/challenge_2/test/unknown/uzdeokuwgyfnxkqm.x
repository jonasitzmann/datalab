From perl6-all-return-82425-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 15:36:29 2007
Return-Path: <perl6-all-return-82425-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SJaSL9014729
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 15:36:28 -0400
Received: (qmail 22779 invoked by uid 514); 28 Jun 2007 19:36:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 22773 invoked from network); 28 Jun 2007 19:36:24 -0000
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
Received-SPF: pass (x1.develooper.com: domain of Bernhard.Schmalhofer@gmx.de designates 213.165.64.20 as permitted sender)
X-Authenticated: #5068625
X-Provags-ID: V01U2FsdGVkX18lwC8YZDslnAAvebcRKS0e4zawYUsI/7GiP1mSxx
	SfzmYgvxJTkc4G
Message-ID: <46840D90.3000001@gmx.de>
Date: Thu, 28 Jun 2007 21:35:44 +0200
From: Bernhard Schmalhofer <Bernhard.Schmalhofer@gmx.de>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: perl6-internals@perl.org
Subject: Re: [perl #43413] [TODO] Pass options to policies from perlcritic.t
 command line
References: <RT-Ticket-43413@perl.org> <8e8ee0d40706280722u693cf763uef5aeef7c75f1947@mail.gmail.com> <rt-3.6.HEAD-1276-1183040559-1321.43413-72-0@perl.org>
In-Reply-To: <rt-3.6.HEAD-1276-1183040559-1321.43413-72-0@perl.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Y-GMX-Trusted: 0
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Paul Cochrane (via RT) schrieb:
> # New Ticket Created by  Paul Cochrane 
> # Please include the string:  [perl #43413]
> # in the subject line of all future correspondence about this issue. 
> # <URL: http://rt.perl.org/rt3/Ticket/Display.html?id=43413 >
>
>
> Hi,
>
> In perlcritic.t i'd like to find a way to pass options to perlcritic
> policies from the command line.  Options are passed as anonymous
> hashes.  Basically, we want to be able to do something like:
>
> perl t/codingstd/perlcritic.t --list
> --policy=CodeLayout::ProhibitHardTabs=>{'allow_leading_tabs'=>0}
>
> and it to give the output:
>
> CodeLayout::ProhibitHardTabs => \{
>    'allow_leading_tabs' => 0
>  }
>   
Isn't that reimplementing 'perlcritic' ?
If somebody wants to work on satisfying a new policy one can set up a
my_perlcriticrc file and call

   perlcritic --profile my_perlcriticrc

Another question. Can we simplify perlcritic.t by using Test::Perl::Critic?

Just my $0.02,
  Bernhard

              

adfmng
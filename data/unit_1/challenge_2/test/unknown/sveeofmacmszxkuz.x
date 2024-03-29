From perl6-all-return-82359-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 11:28:25 2007
Return-Path: <perl6-all-return-82359-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5PFSOL9030387
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 11:28:25 -0400
Received: (qmail 9897 invoked by uid 514); 25 Jun 2007 15:28:15 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9892 invoked from network); 25 Jun 2007 15:28:14 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: moderator for perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
To: perl6-language@perl.org
From: Peter Scott <Peter@PSDT.com>
Organization: Pacific Systems Design Technologies
Subject: Re: Web Module (Was: Perl6 new features)
Date: Mon, 25 Jun 2007 06:18:22 -0700
Message-Id: <pan.2007.06.25.13.18.21.431665@PSDT.com>
References: <4676D013.6020708@perl.org> <200706221043.55600.chromatic@wgz.org> <58ce48dc0706221107i54eb457od81af207cf519344@mail.gmail.com> <200706221526.31234.chromatic@wgz.org> <82cfa8030706250057q2b59a313n4e4288b73993676@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Posted-By: 24.108.81.143
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Mon, 25 Jun 2007 09:57:18 +0200, Hakim Cassimally wrote:
> On 23/06/07, chromatic <chromatic@wgz.org> wrote:
>> On Friday 22 June 2007 11:07:35 Chas Owens wrote:
>>
>> > Please, god, no. Or at least make two distributions: Bare Perl 6 and
>> > Perl 6. Many companies have a "Only Core Perl" policy. They refuse
>> > to install CPAN modules because "We don't trust them".
>>
>> I think of this the same way I think of "Do not drink even if you mix with
>> beer" labels on bleach bottles.  Stupid people often remove their genes from
>> the pool.  We should not discourage stupid business practices from doing the
>> same.
> 
> Releasing a language without a useful, easily installable library bundle
> could quite reasonably be construed as a stupid business practice.

I will just voice my support for putting best-of-breed modules for very
common tasks (CGI, DBI for sure) in the core.  It may not be elegant, but
it is practical... and Perl has weighed in on that side of the dilemma
before.  I think part of Perl 4's success was the "one stop shopping"
availability of numerous useful functions that would otherwise have
required linking in a library, e.g. dbmopen, crypt, shmget, gethostbyaddr,
math functions, etc.  I think the synergistic effect of the combination of
all these functions being so readily available helped Perl take off. 
Please continue the tradition of tending to err on the side of "practical"
over "elegant".  It may not seem rational that avoiding the need to type
"cpan Foo::Bar" makes a huge difference, but I believe it does, for
certain modules.

-- 
Peter Scott
http://www.perlmedic.com/
http://www.perldebugged.com/

     

j/a4
From perl6-all-return-81717-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 13:10:24 2007
Return-Path: <perl6-all-return-81717-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51HANhB012557
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 13:10:24 -0400
Received: (qmail 16628 invoked by uid 514); 1 Jun 2007 17:10:17 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 16623 invoked from network); 1 Jun 2007 17:10:17 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,KARMA_CONNECT_NEGATIVE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: neutral (x1.develooper.com: local policy)
X-ORBL: [71.139.8.243]
Date: Fri, 1 Jun 2007 10:08:11 -0700
From: Larry Wall <larry@wall.org>
To: perl6-language@perl.org
Subject: Re: propose renaming Hash to Dict
Message-ID: <20070601170811.GA30376@wall.org>
Mail-Followup-To: perl6-language@perl.org
References: <p06240801c28510be620c@192.168.1.101> <20070601041717.GA7934@wall.org> <f60fe000706010352r1e4445c1ua7a1e6e652dcda87@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f60fe000706010352r1e4445c1ua7a1e6e652dcda87@mail.gmail.com>
User-Agent: Mutt/1.4.2.2i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.4 required=8.0
	tests=BAYES_05,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Fri, Jun 01, 2007 at 06:52:37AM -0400, Mark J. Reed wrote:
: On 6/1/07, Larry Wall <larry@wall.org> wrote:
: >Nope.  Hash is mostly about meaning, and very little about implementation.
: >Please don't assume that I name things according to Standard Names in
: >Computer Science.  I name things in English.
: 
: Then why did we need a separate "use English" pragma? :)

We needed "use English" because I was temporarily drawn to the shell
side of the Force.  I have repented.

: Are you the one who originally came up with "hash" for %vars?  IIRC,
: they were officially called just "associative arrays" through Perl4,
: but "hash" was a well-understood community nickname for them for some
: time before you canonized it with ref($var) eq 'HASH' in Perl5...

Yes, I believe I was the one who decided that associative arrays needed
a shorter name, and after a period of discussion on perl5-porters,
settled on "hash" as the new technical term in Perl culture.  But I'm
not sure the mailing list archive goes back far enough to verify the
exact sequence of events.  Certainly I made the final decision, but
it's quite possible someone else suggested it first.  But I seem to
recall getting extremely tired of typing "associative array" while
working on Camel II, and that was likely the instigation.

Larry



plc�keq
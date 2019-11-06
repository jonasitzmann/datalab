From perl6-all-return-82183-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 14:10:16 2007
Return-Path: <perl6-all-return-82183-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LIAFL9027372
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 14:10:16 -0400
Received: (qmail 7860 invoked by uid 514); 21 Jun 2007 18:10:13 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 7855 invoked from network); 21 Jun 2007 18:10:12 -0000
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
Received-SPF: pass (x1.develooper.com: domain of david.green@telus.net designates 204.209.205.52 as permitted sender)
Mime-Version: 1.0
Message-Id: <a0623090cc2a06354a1ba@[172.27.1.7]>
In-Reply-To: <210620071114079448%brian.d.foy@gmail.com>
References: <4678B887.8090303@conway.org>
 <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org>
 <20070621074400.GA32129@earth.overmeer.net>
 <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com>
 <210620071114079448%brian.d.foy@gmail.com>
Date: Thu, 21 Jun 2007 12:09:27 -0600
To: perl6-language@perl.org
From: David Green <david.green@telus.net>
Subject: Re: Referring to source code within Perldoc
Content-Type: text/plain; charset="us-ascii" ; format="flowed"
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On 6/21/07, brian d foy wrote:
>Couldn't most of this be figured out by making Pod6 extensible (or 
>whatever the right term is). Pod6 would be more of the syntax and 
>basic operation, but other people could have custom directives that 
>their Pod6 translators and formatters could then use.

Yeah, then you could write in Kwid/HTML/etc. or C<use> custom parsers 
or whatever....  I bet Damian wishes he'd thought of that!  =)
Seriously, I think POD is as extensible as it's supposed to be, and I 
like what Damian has done.  I also share MarkOv's sentiments, but I 
think there's less opposition here than it may seem because there are 
really two (almost) separate issues here.  (Of course, if human 
nature didn't tend to polarise every discussion, how would we have 
fun??)

>That is, if we want something different than you want we have to 
>have competing specs and there won't be any compromise?

I think he's saying we actually need some competing specs if there is 
to be anything to compromise on.  I also think that if we did start 
spec'ing out what many people (including me) are looking for, we'd 
find that we're adding something else rather than compromising on 
anything.

Part of the issue is that "POD" seems to be two things: there's POD 
the markup format, analogous to Kwid or RTF, which when given a chunk 
of text applies certain meanings to sequences like "B<>", etc.
Then there's POD the (dis)integration standard that consists of rules 
("=" in the first column!) to distinguish POD-markup from non-markup 
(source code or anything else).

I want to be able to have documentation that "belongs" to Perl 
objects (probably something like an "is documented" trait), so I can 
say things like "perldoc Some::Module --sub=foo --param=size" and get 
back a piece of text specifically applying to that one parameter. 
The piece of text could consist of POD-markup (or Kwid or HTML), but 
it couldn't use POD-integration because there's no way to "attach" a 
section of POD to a specific piece of Perl syntax.
(Unless I'm missing something, which is always possible; you can put 
a piece of POD geographically next to a Perl declaration, but I'm not 
sure that's unambiguous enough.  Hm, why not?  POD doesn't know 
what's going on around it, but Perl does, and could say, "I've just 
declared $size, and the next line starts a chunk of POD, so I'll 
simply copy it into $size's 'documented' trait... would that work??)



-David

    

C< � X
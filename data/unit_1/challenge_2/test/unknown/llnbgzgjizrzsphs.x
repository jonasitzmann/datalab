From perl6-all-return-82227-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 04:38:48 2007
Return-Path: <perl6-all-return-82227-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5M8cjL9003942
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 04:38:46 -0400
Received: (qmail 2836 invoked by uid 514); 22 Jun 2007 08:38:43 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 2831 invoked from network); 22 Jun 2007 08:38:42 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 64.233.162.230 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=fixjTalDk66XVE4hizfkEyZjDAf+VqWkcWM0xk6OCG+dAEtVhEZft2FlcWCQD6BY13M3N/JF+CP50l4jyekt3+kTj0Huo7XDrJLO5jK1owFwRKahgUbBS26tIWE5SwNzbP9FqYNCA9JM4bXttKBU0mApMEhypTzZq+MmLG4ia0U=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:to:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=Bf5upFJeGPE+QCX1q45rfhy3F8tm1+g9YaeGJqF6x5Cyn8lABZ6W22a5AO/kjO72KaZxLpcisSk2Kwqr6PrqyjrFcSK1NIOXo68Ec4rvNd3oZUwZY5TKQIGf3NOifXBaZvSdWq1q59VHjs3COugpWWfGM8sgiT5okSVFKuZbYk4=
Message-ID: <467B8A6C.8080702@conway.org>
Date: Fri, 22 Jun 2007 18:38:04 +1000
From: Damian Conway <damian@conway.org>
Reply-To: damian@conway.org
User-Agent: Thunderbird 2.0.0.4 (Macintosh/20070604)
MIME-Version: 1.0
To: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: Referring to source code within Perldoc: the new A<> code
References: <4678B887.8090303@conway.org> <20070620083220.GX16156@earth.overmeer.net> <4679D850.7000906@conway.org> <20070621074400.GA32129@earth.overmeer.net> <832f158a0706210107j18194932r1713aeb43604fce9@mail.gmail.com> <20070622080857.GI16156@earth.overmeer.net>
In-Reply-To: <20070622080857.GI16156@earth.overmeer.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Damian Conway <thoughtstream@gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Mark Overmeer wrote:

> You may remember that I repeatedly asked @Larry not to forget the
> documentation aspect in the redesign of Perl, in person during various
> YAPCs and Workshops.  Then, when you finally took the challenge, I have
> send you a extensive email showing various alternative syntaxes for
> condensed, integrated documentation strategies. (2 nov 2005)

Yes. You did all that. I was extremely grateful for that input. And I took it 
(and many other's people's feedback) and created the current design...in such 
a way--I believe--that you *will* be able to easily and extensibly use the new 
Pod and Perl parsers to implement such integrated documentation strategies.


> I have already proven that adding some simple logical markup to the POD(5)
> syntax can simplify the documentation process enormously, with my OODoc
> (::Parser::Markov).  

Agreed. And I made sure that Pod 6 could be easily extended with such markup. 
Moreover I added in the concept of "semantic blocks", which directly mirror 
many of your MARKOV language notations, often right down to the actual names 
chosen (albeit in capitalized form).


> As I already reported in one of the initial messages
> of this (long) thread, the tool saved me to type 700.000 characters of
> (needed dupplicated) text for my MailBox suite alone.  That was a simple
> gain within the classical POD dogma; with real integration, we can
> reduce our documentation efforts much further.
> [Shall I give a lightning talk on OODoc in action, at upcoming YAPC::EU?]

By all means. But not for my sake. I have already studied and understood your 
tool and the advantages it provides for certain types of documentation tasks. 
That's why I designed Pod 6 specifically to support such tools.


>> After all, Larry's track record is clear: he's never once allowed
>> someone's reputation or status (even his own!) to deter him from
>> replacing an existing design with someone else's superior one.
> 
> True.  However, when the common @Larry believe is that POD6 should build
> on POD(5) ideas of orthodox orthogonalism, then it is a waste of my
> sparse time.  I am not afraid to take such challange, opposit of that:
> otherwise this discussion probably had died out days ago.  But I do have
> a number of large Perl(5) projects on my hands already.

Understood. But you keep saying we're not giving you what you want, without 
showing us specific examples of what it is you want that we're not giving you. 
What else can we do but ask you to provide specifications for the pieces you 
think are missing?

And, no, I don't consider the pointers to your excellent module to be suitable 
specific examples of what we're not giving you...mainly because I believe that 
the Pod 6 documentation language I've designed (in conjunction with the 
ability for Perl 6 to parse Perl 6) *does* give you what you need to build 
such tools.

So it seems we're still at an impasse. I fully respect your decision not to 
attempt a full alternative design (if anything, your estimate of it only 
taking "weeks" is optimistic ;-), but unless someone is willing to step up and 
suggest some specific improvements to the current proposal, how can we move 
forward towards the best possible result?

Damian

 

8tft u50 n /g
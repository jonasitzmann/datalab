From perl6-all-return-82531-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 18:38:09 2007
Return-Path: <perl6-all-return-82531-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l63Mc8L9002389
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 18:38:08 -0400
Received: (qmail 6163 invoked by uid 514); 3 Jul 2007 22:38:03 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6150 invoked from network); 3 Jul 2007 22:38:02 -0000
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
Received-SPF: neutral (x1.develooper.com: local policy)
Delivered-To: perlmail-parrot-porters@onion.perl.org
Delivered-To: parrot-porters@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <468ACFA0.6040203@jnthn.net>
Date: Tue, 03 Jul 2007 23:37:20 +0100
From: Jonathan Worthington <jonathan@jnthn.net>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Allison Randal <allison@perl.org>
CC: p2 <parrot-porters@perl.org>
Subject: Re: find_method changes look wrong
References: <468A1A7A.2020707@jnthn.net> <468AA38D.9090905@perl.org>
In-Reply-To: <468AA38D.9090905@perl.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Allison Randal wrote:
> There currently isn't any way to add vtable overrides to the class's 
> list of vtable overrides, so this is temporary (and actually, I 
> thought you put it in).
That was implemented earlier today. I wrote the email before I'd 
implemented it. I think I've implemented what you meant in PDD15, but 
please check.

> The problem is that Object was poking directly into the internals of 
> Class, which definitely breaks encapsulation between the two. Object 
> needs a standard interface in Class that it can query for methods. It 
> doesn't have to be find_method.
I thought we had this discussion a while back and agreed that Object 
could know about the internals of Class, because any different class 
would implement and instantiate its own object anyway? In principle, 
encapsulation is nice, though.

I ended up pulling the lookup code back into Object for now, because you 
need to have the instances of the PMCs we are inheriting from available 
during method lookup to call find_method on.

Technically we do have a way to write Object's find_method independent 
of the class: use inspect_str("methods"). Problems are performance 
(which is second to correct behavior, of course, but still...) and that 
the values that inspect_str takes and is expected to respond to aren't 
actually standardized anywhere.

Jonathan


     

n4>iU>ez4CQ3v
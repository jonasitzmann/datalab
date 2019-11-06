From perl6-all-return-82280-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:45:51 2007
Return-Path: <perl6-all-return-82280-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNjoL9011211
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:45:51 -0400
Received: (qmail 3381 invoked by uid 514); 22 Jun 2007 23:45:48 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3367 invoked from network); 22 Jun 2007 23:45:47 -0000
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
Received-SPF: pass (x1.develooper.com: domain of david.green@telus.net designates 199.185.220.222 as permitted sender)
Mime-Version: 1.0
Message-Id: <a06230917c2a20d647d6e@[172.27.1.7]>
In-Reply-To: <20070622083032.GC6900@stripey.com>
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
 <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
 <467073C4.6020708@conway.org> <20070614082341.GU31918@earth.overmeer.net>
 <832f158a0706141717j7accfb36w92bf3a2ed7a8e115@mail.gmail.com>
 <20070615075949.GR31918@earth.overmeer.net>
 <20070616090944.GG6900@stripey.com>
 <20070616103358.GB10601@earth.overmeer.net>
 <20070621180226.GK6900@stripey.com> <a0623090fc2a0a993187e@[172.27.1.7]>
 <20070622083032.GC6900@stripey.com>
Date: Fri, 22 Jun 2007 17:45:58 -0600
To: perl6-language@perl.org
From: David Green <david.green@telus.net>
Subject: Re: documentation standards (was "[svn:perl6-synopsis] r14421 -
 doc/trunk/design/syn")
Content-Type: text/plain; charset="us-ascii" ; format="flowed"
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

On 6/22/07, Smylers wrote:
>David Green writes:
>>  Well, clutter like "Blah: none" seems to me to be more the fault of
>>  the doc-formatter for not hiding lines like that.
>
>It's more the repetition in the lines you snipped that I really object to:

Ah. (That was sneaky of me.)  I agree with that -- the older I get, 
the more allergic I become to typing the same thing more than once. 
(That's why we like Perl, for it's DRY wit!)

>given the function's name, the name(s) of its parameter(s), and the 
>short description of what it does, it's obvious what the 
>parameter(s) are for and what it returns; repeating that information 
>doesn't help anybody.
>(It may help computers, though.)

I'm wholly in favour of some syntactic sugar so such repetition isn't 
necessary (which doesn't mean redefining Pod, of course, but rather 
coming up with some alternative that would work this way).


-David

          

lbsM  >
Noe 
-2a
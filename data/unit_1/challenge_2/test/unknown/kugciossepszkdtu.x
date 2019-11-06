From perl6-all-return-82189-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 16:16:00 2007
Return-Path: <perl6-all-return-82189-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LKFxL9028709
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 16:15:59 -0400
Received: (qmail 25368 invoked by uid 514); 21 Jun 2007 20:15:53 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 25337 invoked from network); 21 Jun 2007 20:15:52 -0000
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
Date: Thu, 21 Jun 2007 19:17:01 +0100
From: Smylers <Smylers@stripey.com>
To: perl6-language@perl.org
Subject: Re: = at Start of Line ([svn:perl6-synopsis] r14421 - doc/trunk/design/syn)
Message-ID: <20070621181701.GM6900@stripey.com>
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com> <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com> <150620070756055824%brian.d.foy@gmail.com> <20070616084404.GF6900@stripey.com> <20070616110346.GC10601@earth.overmeer.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070616110346.GC10601@earth.overmeer.net>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Mark Overmeer writes:

> * Smylers (Smylers@stripey.com) [070616 08:44]:
> 
> > With these new Pod rules it's possible to entirely remove Pod from a
> > file without knowing _anything_ about the host language.  That
> > permits Pod to be used to document just about anything; all you need
> > to allow it is a filter that strips off all Pod before you do
> > anything else with the file.
> 
> And then the main point: if you write documentation which is not
> related to Perl6 coding itself, do we really need to create just
> another text processor?  There are already so many sofisticated
> text processors available!

Sure, but some people like Pod.  Lots of things other than Perl 5 have
been documented with POD, so lets continue to make this kind of thing
easier.

> And why do you want easy to remove docs?

I didn't mean remove them for human (non-)consumption, but filtering
them out from, say, a shell script so that what remains is a
syntactically valid script which can be run in the shell.

> Other languages already have their own documentation system. Why do
> you expect them to use POD6?

Most people won't.  But that's no reason to make it hard.

Smylers

                 

 1t:The l Ecc
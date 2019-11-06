From perl6-all-return-82000-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 16 07:04:28 2007
Return-Path: <perl6-all-return-82000-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5GB4RL9013088
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 16 Jun 2007 07:04:27 -0400
Received: (qmail 28834 invoked by uid 514); 16 Jun 2007 11:04:24 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28829 invoked from network); 16 Jun 2007 11:04:24 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Date: Sat, 16 Jun 2007 13:03:46 +0200
From: Mark Overmeer <mark@overmeer.net>
To: Smylers <Smylers@stripey.com>
Cc: perl6-language@perl.org
Subject: Re: = at Start of Line ([svn:perl6-synopsis] r14421 - doc/trunk/design/syn)
Message-ID: <20070616110346.GC10601@earth.overmeer.net>
Mail-Followup-To: Smylers <Smylers@stripey.com>, perl6-language@perl.org
References: <20070613205525.7ECA0CB9B8@x12.develooper.com> <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com> <467073C4.6020708@conway.org> <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com> <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com> <150620070756055824%brian.d.foy@gmail.com> <20070616084404.GF6900@stripey.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070616084404.GF6900@stripey.com>
Organization: MARKOV Solutions
User-Agent: Mutt/1.5.9i
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

> brian d foy writes:
>> I doubt other languages will want to deal with this situation.

* Smylers (Smylers@stripey.com) [070616 08:44]:
> With these new Pod rules it's possible to entirely remove Pod from a
> file without knowing _anything_ about the host language.  (It could
> straightforwardly be done as an editor macro, for example.)  That
> permits Pod to be used to document just about anything; all you need to
> allow it is a filter that strips off all Pod before you do anything else
> with the file.

And then the main point: if you write documentation which is not
related to Perl6 coding itself, do we really need to create just
another text processor?  There are already so many sofisticated
text processors available!

Well, ok, if you "get it for free", like with POD(5), then take
that opportunity.  But if the life of ordinary programmers who write
documentation is complicated just to provide this feature, we are IMO
on the wrong path.

And why do you want easy to remove docs?  Perl6 is even nicer: you can
distribute it compiled; no program text and no docs!  Docs in code
files are much less of a "burden" than in Perl5, so the need to strip
them from the code has deminished.

> If Pod were to take notice of the host language's context throughout the
> file then this would not be possible: every language which wished to
> have Pod support would require its own Pod parser embedded within the
> languge parser.  _That_ is orders of magnitude more complex than the
> simplicity of filtering off all Pod first, and strikes me as something
> other languages are much less likely to be bothered to do.

Other languages already have their own documentation system. Why do you
expect them to use POD6?  Why should we design POD6 with this endlessly
open requirement in mind?  Let's rule the World!

All I try to achieve is the best possible set of documentation for
end-users: consistent in structure and correct in content.  To achieve
this, I wish to keep the freedom and avoid the anacharchy.  Correctness
automatically improves where redundancy is removed.  But that requires
a closer doc/code entanglement than a lot of the experienced Perl people
like (==are used to).
-- 
               MarkOv

------------------------------------------------------------------------
       Mark Overmeer MSc                                MARKOV Solutions
       Mark@Overmeer.net                          solutions@overmeer.net
http://Mark.Overmeer.net                   http://solutions.overmeer.net

   


38tFKaiWmoe
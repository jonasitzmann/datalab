From beginners-return-92784-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 02:57:24 2007
Return-Path: <beginners-return-92784-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5R6vML9022954
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 02:57:23 -0400
Received: (qmail 12487 invoked by uid 514); 27 Jun 2007 06:57:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12478 invoked from network); 27 Jun 2007 06:57:14 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 06:57:14 -0000
Received: (qmail 18631 invoked by uid 225); 27 Jun 2007 06:57:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18620 invoked by alias); 27 Jun 2007 06:57:14 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from agena.lunarpages.com (HELO agena.lunarpages.com) (216.227.218.118)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 26 Jun 2007 23:57:02 -0700
Received: from [203.166.195.238] (helo=mymandriva)
	by agena.lunarpages.com with esmtpa (Exim 4.63)
	(envelope-from <patrikh@penguin-teknologi.com>)
	id 1I3RSP-0006kU-9y
	for beginners@perl.org; Tue, 26 Jun 2007 23:56:57 -0700
Date: Wed, 27 Jun 2007 13:52:08 +0700
From: Patrik Hasibuan <patrikh@penguin-teknologi.com>
To: beginners@perl.org
Subject: Re: Inherit a database connection object
Message-Id: <20070627135208.3b85b6f6.patrikh@penguin-teknologi.com>
In-Reply-To: <31086b240706241133i5518dde9l11ce003c2d53ca7c@mail.gmail.com>
References: <20070625011436.b9f45aef.patrikh@penguin-teknologi.com>
	<31086b240706241133i5518dde9l11ce003c2d53ca7c@mail.gmail.com>
Organization: PT.PENGUIN Teknologi
X-Mailer: Sylpheed 2.3.0 (GTK+ 2.10.11; i586-mandriva-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - agena.lunarpages.com
X-AntiAbuse: Original Domain - perl.org
X-AntiAbuse: Originator/Caller UID/GID - [0 0] / [47 12]
X-AntiAbuse: Sender Address Domain - penguin-teknologi.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Dear my friend, Tom Phoenix...

I read the reference you told me. And now I am informing you that my problem is solved. I found the solution in the manuals.

Thank you very...very....much.
====
On Sun, 24 Jun 2007 11:33:52 -0700
"Tom Phoenix" <tom@stonehenge.com> wrote:

> On 6/24/07, Patrik Hasibuan <patrikh@penguin-teknologi.com> wrote:
> 
> > I want to write once a script as a part of building a connection to my MySQL
> > DB server. The parts only use a kind of vabiable such as "$dbh". Is it possible?
> 
> It's possible. In fact, that's what most of us do with objects.
> 
> > #!/usr/bin/perl -w
> 
> That's a good start. You could also use "use warnings" instead of -w,
> and adding "use strict" will prevent some common mistakes.
> 
>   use strict;
>   use warnings;
> 
> > use iterdir;
> 
> What's this? Module names in all lower case are reserved for pragmas.
> In the privacy of your own home directory, of course, you can name
> things whatever you want. But normal modules, and the package names
> they use, begin with a capital letter.
> 
> > Can't call method "prepare" on an undefined value at iterdir.pm line 22.
> 
> That means that the expression to the left of "->prepare" near line 22
> turned out to be undef instead of an object.
> 
> > Please tell me how a class inherits connection object to the another class.
> 
> Perl objects use the @ISA mechanism, documented in the perlobj manpage.
> 
>     http://search.cpan.org/~nwclark/perl-5.8.8/pod/perlobj.pod
> 
> But it may help to start in the barnyard:
> 
>     http://search.cpan.org/~nwclark/perl-5.8.8/pod/perlboot.pod
> 
> Hope this helps!
> 
> --Tom Phoenix
> Stonehenge Perl Training
> 
> -- 
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
> 
> 
> 
> 


-- 
Patrik Hasibuan <patrikh@penguin-teknologi.com>
Junior Programmer

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

eirHset
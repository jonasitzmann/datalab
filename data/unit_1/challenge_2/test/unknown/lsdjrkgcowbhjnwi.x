From beginners-return-92055-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 08:43:00 2007
Return-Path: <beginners-return-92055-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51CgvhB009824
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 08:42:58 -0400
Received: (qmail 12122 invoked by uid 514); 1 Jun 2007 12:42:42 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12113 invoked from network); 1 Jun 2007 12:42:41 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 12:42:41 -0000
Received: (qmail 15729 invoked by uid 225); 1 Jun 2007 12:42:41 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15723 invoked by alias); 1 Jun 2007 12:42:40 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Fri, 01 Jun 2007 05:42:26 -0700
Received: (qmail 12082 invoked by uid 515); 1 Jun 2007 12:42:22 -0000
To: beginners@perl.org, perl-beginners@moderators.isc.org
MBOX-Line: From news@google.com Fri Jun 01 12:42:21 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 12069 invoked from network); 1 Jun 2007 12:42:21 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 12:42:21 -0000
Received: (qmail 15599 invoked by uid 225); 1 Jun 2007 12:42:20 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 15585 invoked by alias); 1 Jun 2007 12:42:19 -0000
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
Received: from trinity.supernews.net (HELO trinity.supernews.net) (216.168.1.22)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 05:42:05 -0700
Received: from proxy.google.com ([64.233.177.4]:39220)
	by trinity.supernews.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.66 (FreeBSD))
	(envelope-from <news@google.com>)
	id 1Hu6S8-0005aj-E2
	for perl-beginners@moderators.isc.org; Fri, 01 Jun 2007 12:42:00 +0000
Received: from AR020007
	by proxy.google.com with ESMTP id l51Cfjs5025320
	for <perl-beginners@moderators.isc.org>; Fri, 1 Jun 2007 05:41:45 -0700
Received: (from news@localhost)
	by Google Production id l51Cfj5b010333
	for perl-beginners@moderators.isc.org; Fri, 1 Jun 2007 05:41:45 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Simplest hash initialization with no value
Date: Fri, 01 Jun 2007 05:41:45 -0700
Organization: http://groups.google.com
Lines: 54
Message-ID: <1180701705.121280.12380@g4g2000hsf.googlegroups.com>
References: <C4A55E6959ED6F498EA07FFB09DAB2E007252726@bgeexc04.asiapacific.cpqcorp.net>
   <465FEBE8.6020004@earthlink.net>
   <C4A55E6959ED6F498EA07FFB09DAB2E007252728@bgeexc04.asiapacific.cpqcorp.net>
   <1180696114.138700.158500@g4g2000hsf.googlegroups.com>
   <C4A55E6959ED6F498EA07FFB09DAB2E00725272A@bgeexc04.asiapacific.cpqcorp.net>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1180701705 10332 127.0.0.1 (1 Jun 2007 12:41:45 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 1 Jun 2007 12:41:45 +0000 (UTC)
In-Reply-To: <C4A55E6959ED6F498EA07FFB09DAB2E00725272A@bgeexc04.asiapacific.cpqcorp.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: g4g2000hsf.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 1, 8:02 am, alok.n...@hp.com (Alok Nath) wrote:
> -----Original Message-----
> From: Paul Lalli [mailto:mri...@gmail.com]
> Sent: Friday, June 01, 2007 4:39 PM
> To: beginn...@perl.org; perl-beginn...@moderators.isc.org
> Subject: Re: Simplest hash initialization with no value
>
> On Jun 1, 6:08 am, alok.n...@hp.com (Alok Nath) wrote:
>
> > Why it gives syntax error when -
> >         my @myhash{qw/A B/} = ();
>
> Er... because it's not valid syntax.  That's why you'd get a syntax
> error. Not sure what you're asking. You can't "declare" a hash slice.
> You declare variables.
>
> > It works when I say -
> >         my %myhash ;
> >         @myhash{qw/A B/} = ();
>
> Right.  Because that is valid syntax.  First you declare %myhash, then
> you initialize two keys of that hash using a slice.
>
> Your original question was "how to initialize a hash".  It's apparent
> now that you wanted to know how to "declare and initialize a hash in one
> step".  This question comes up so frequently that it really should be a
> FAQ.  The way you did so was fine originally.  What's wrong with it?  If
> you have a longer list of keys, you could use the map operator as a
> shortcut, so you don't write 'undef' multiple times:
>
> my %myhash = map { $_ => undef } qw/A B C D E F G H I J K/;

>  But when decalared this way it gives a warning message :"Use of
> uninitialized value in concatenation (.) or string at"
>
> in a print statement which is something like this :
>
>                 my %myhash = map { $_ => undef } qw/A B C D E F G H I J
> K/;
>                 foreach my $key (%myhash){
>                         print $myhash{$key}
>                 }
>

Of course it does.  You said you wanted the values to be undefined.
You're printing an undefined value.

This has nothing to do with the way it was assigned.  It has to do
with what you assigned it to.  Every other method discussed in this
thread will produce the same results when you try to print
$myhash{$key}.

Paul Lalli


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

Du: Kn
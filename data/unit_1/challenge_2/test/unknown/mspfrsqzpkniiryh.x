From beginners-return-92059-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 09:19:18 2007
Return-Path: <beginners-return-92059-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51DJHhB010186
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 09:19:18 -0400
Received: (qmail 2263 invoked by uid 514); 1 Jun 2007 13:19:06 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2254 invoked from network); 1 Jun 2007 13:19:05 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 13:19:05 -0000
Received: (qmail 4902 invoked by uid 225); 1 Jun 2007 13:19:04 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4890 invoked by alias); 1 Jun 2007 13:19:03 -0000
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of mritty@gmail.com)
Received: from x6.develooper.com (HELO lists.develooper.com) (63.251.223.186)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Fri, 01 Jun 2007 06:17:03 -0700
Received: (qmail 31771 invoked by uid 515); 1 Jun 2007 13:16:56 -0000
To: beginners@perl.org, perl-beginners@moderators.isc.org
MBOX-Line: From news@google.com Fri Jun 01 13:16:54 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Received: (qmail 31749 invoked from network); 1 Jun 2007 13:16:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 13:16:53 -0000
Received: (qmail 3612 invoked by uid 225); 1 Jun 2007 13:16:53 -0000
Delivered-To: news-moderator-perl.beginners@perl.org
Received: (qmail 3553 invoked by alias); 1 Jun 2007 13:16:48 -0000
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
Received: from pinatubo-2.switch.ch (HELO pinatubo.switch.ch) (130.59.1.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 06:16:19 -0700
Received: from [66.102.14.241] (helo=proxy.google.com)
	by pinatubo.switch.ch with esmtp (Exim 4.50)
	id 1Hu6zB-0004H7-M7
	for perl-beginners@moderators.isc.org; Fri, 01 Jun 2007 15:16:09 +0200
Received: from AR019023
	by proxy.google.com with ESMTP id l51DG9wB014599
	for <perl-beginners@moderators.isc.org>; Fri, 1 Jun 2007 06:16:09 -0700
Received: (from news@localhost)
	by Google Production id l51DG9Ev009922
	for perl-beginners@moderators.isc.org; Fri, 1 Jun 2007 06:16:09 -0700
From: Paul Lalli <mritty@gmail.com>
Subject: Re: Error:Can't locate object method "prepare" via package "abc" at xyz.pm
Date: Fri, 01 Jun 2007 06:16:08 -0700
Organization: http://groups.google.com
Lines: 49
Message-ID: <1180703768.870002.199210@q69g2000hsb.googlegroups.com>
References: <1180617470.727212.109630@q19g2000prn.googlegroups.com>
   <ef30550b0705311618v1af7f40fl9462b0d3852f20ea@mail.gmail.com>
NNTP-Posting-Host: 204.97.183.31
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1180703769 9921 127.0.0.1 (1 Jun 2007 13:16:09 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 1 Jun 2007 13:16:09 +0000 (UTC)
In-Reply-To: <ef30550b0705311618v1af7f40fl9462b0d3852f20ea@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1),gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.0 mndnetcachea (NetCache NetApp/6.0.5)
Complaints-To: groups-abuse@google.com
Injection-Info: q69g2000hsb.googlegroups.com; posting-host=204.97.183.31;
   posting-account=p3DCbw0AAAAc32agNMy1mXKInuw5KHP_
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On May 31, 7:18 pm, datawea...@gmail.com (Jonathan Lang) wrote:
> > abc.pm
> > --------------------------------------
> > my $databasehandle;
>
> Note that this establishes a single $databasehandle for every object
> of type 'abc' that you create; it does not create a separate one for
> each object.
>
> > sub new($){
>
> >     my ($self,$usr,$pwd) = @_;
>
> Again, you have a signature problem.  'sub new($)' says that 'new'
> will take a single scalar as a parameter; as such, @_ will only ever
> have one value in it: $usr and $pwd will always be set to null.

False.  Prototypes are *always* ignored on method calls, and can be
ignored on any other subroutine call by providing the & before the
subroutine name.  Therefore, there is no way of knowing from the above
what will be in $usr or $pwd.

> Also, read up on the syntax of 'bless' a bit more.  IIRC, saying
> 'bless $self;' is not enough.

You should *really* follow your own advice.  While not preferred, a
single arg bless() is perfectly legitamite.
$ perldoc -f bless
     bless REF,CLASSNAME
     bless REF
             This function tells the thingy referenced by REF
             that it is now an object in the CLASSNAME package.
             If CLASSNAME is omitted, the current package is
             used.

> >     $usr||= "test";
> >     $pwd ||= "test123";
>
> ...and thus $usr and $pwd will always equal "test" and "test123",
> respectively.

No, they will be set to "test" and "test123", respectively, if and
only if they had a false value prior to this step.  As discussed,
there is no way of knowing that from the above code.

Paul Lalli




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

C<p 5EB2<ohpp
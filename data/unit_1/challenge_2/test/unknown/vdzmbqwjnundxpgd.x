From beginners-return-92146-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 03:39:17 2007
Return-Path: <beginners-return-92146-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l557dGhB005562
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 03:39:16 -0400
Received: (qmail 30970 invoked by uid 514); 5 Jun 2007 07:39:01 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 5164 invoked from network); 4 Jun 2007 23:34:43 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of eishbut@googlemail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Mon Jun 04 23:34:20 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: "eishbut@googlemail.com" <eishbut@googlemail.com>
Subject: Re: Annoying HASH(0x...) in Output
Date: Mon, 04 Jun 2007 23:32:36 -0000
Organization: http://groups.google.com
Lines: 91
Message-ID: <1180999956.828359.283570@k79g2000hse.googlegroups.com>
References: <1180971296.378503.268270@k79g2000hse.googlegroups.com>
NNTP-Posting-Host: 91.104.58.142
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1180999957 5896 127.0.0.1 (4 Jun 2007 23:32:37 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Mon, 4 Jun 2007 23:32:37 +0000 (UTC)
In-Reply-To: <1180971296.378503.268270@k79g2000hse.googlegroups.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: k79g2000hse.googlegroups.com; posting-host=91.104.58.142;
   posting-account=MBop_A0AAABV_N1mFDUhveuiEprI7ufc
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL


GMan wrote:

> I am trying to teach myself Perl Objects.
>
> I have a Person object with a name and a list of friends.
>
> Here is a test program that uses it.
>
> #! /usr/bin/perl
>
> use Person;
>
> $p = new Person;
>
> $p->setname("Gary");
> $p->addfriend("Bill");
> $p->addfriend("John");
> $p->print();
>
> Here is the output from the test program.
>
> perl testfriends.pl
> Name Gary
> Friends URLs
>         HASH(0x86ea69c)
>         Bill
>         John
>
>
> How do I get rid of the Annoying HASH(0x86ea69c) in my output?
>
> Here is the code to the object (Person.pm)
>
> #! /usr/bin/perl
>
> package Person;
>
> sub new {
>     my ($class) = @_;
>     my ($self) = { };
>     bless $self, $class;
>     $self->{'_name'} = "";
>     @friends = { };

@friends is an array, not a hash....change @friends = {} to @friends =
();


>     $self->{'_friends'} = \@friends;
>     return $self;
> }
>
>
> sub getname {
>     my ($self) = @_;
>     return $self->('_name');
> }
>
>
> sub setname {
>     my ($self,$name) = @_;
>     $self->{'_name'} = $name if defined($name);
> }
>
>
> sub addfriend {
>     my ($self,$f) = @_;
>     #dereference the array from the hash
>     $fr = $self->{'_friends'};
>     @friends = @$fr;
>     push @friends,$f;
>     $self->{'friends'} = \@friends;
> }
>
>
> sub print {
>     my ($self) = @_;
>     printf("Name %s\n",$self->{'_name'});
>     printf("Friends URLs\n");
>     #dereference the array from the hash
>     $fr = $self->{'_friends'};
>     @u = @$fr;
>     for $u (@u) {
> 	printf("\t%s\n",$u);
>     }
> }
>
>
> 1;


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

l�akr<e
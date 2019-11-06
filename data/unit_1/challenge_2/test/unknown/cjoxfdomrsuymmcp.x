From beginners-return-92145-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 03:17:34 2007
Return-Path: <beginners-return-92145-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l557HXhB005378
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 03:17:34 -0400
Received: (qmail 23713 invoked by uid 514); 5 Jun 2007 07:17:23 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 4642 invoked from network); 4 Jun 2007 23:30:57 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of grgies@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Mon Jun 04 16:23:48 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: GMan <grgies@gmail.com>
Subject: Annoying HASH(0x...) in Output
Date: Mon, 04 Jun 2007 15:34:56 -0000
Organization: http://groups.google.com
Lines: 83
Message-ID: <1180971296.378503.268270@k79g2000hse.googlegroups.com>
NNTP-Posting-Host: 69.243.220.165
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1180971296 19937 127.0.0.1 (4 Jun 2007 15:34:56 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Mon, 4 Jun 2007 15:34:56 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.0.10) Gecko/20070510 Fedora/1.5.0.10-6.fc6 Firefox/1.5.0.10,gzip(gfe),gzip(gfe)
X-HTTP-Via: 1.1 c-69-243-220-165.hsd1.va.comcast.net:3128 (squid/2.5.STABLE1)
Complaints-To: groups-abuse@google.com
Injection-Info: k79g2000hse.googlegroups.com; posting-host=69.243.220.165;
   posting-account=Zco5eg0AAADEv9Hws0aiYPHz4lnKKhdU
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

I am trying to teach myself Perl Objects.

I have a Person object with a name and a list of friends.

Here is a test program that uses it.

#! /usr/bin/perl

use Person;

$p = new Person;

$p->setname("Gary");
$p->addfriend("Bill");
$p->addfriend("John");
$p->print();

Here is the output from the test program.

perl testfriends.pl
Name Gary
Friends URLs
        HASH(0x86ea69c)
        Bill
        John


How do I get rid of the Annoying HASH(0x86ea69c) in my output?

Here is the code to the object (Person.pm)

#! /usr/bin/perl

package Person;

sub new {
    my ($class) = @_;
    my ($self) = { };
    bless $self, $class;
    $self->{'_name'} = "";
    @friends = { };
    $self->{'_friends'} = \@friends;
    return $self;
}


sub getname {
    my ($self) = @_;
    return $self->('_name');
}


sub setname {
    my ($self,$name) = @_;
    $self->{'_name'} = $name if defined($name);
}


sub addfriend {
    my ($self,$f) = @_;
    #dereference the array from the hash
    $fr = $self->{'_friends'};
    @friends = @$fr;
    push @friends,$f;
    $self->{'friends'} = \@friends;
}


sub print {
    my ($self) = @_;
    printf("Name %s\n",$self->{'_name'});
    printf("Friends URLs\n");
    #dereference the array from the hash
    $fr = $self->{'_friends'};
    @u = @$fr;
    for $u (@u) {
	printf("\t%s\n",$u);
    }
}


1;


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                

aeearz3l5oD35tb
From beginners-return-92666-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 18:36:52 2007
Return-Path: <beginners-return-92666-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MMapL9009949
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 18:36:51 -0400
Received: (qmail 24563 invoked by uid 514); 22 Jun 2007 15:51:11 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 24554 invoked from network); 22 Jun 2007 15:51:11 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 15:51:11 -0000
Received: (qmail 18443 invoked by uid 225); 22 Jun 2007 15:51:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18433 invoked by alias); 22 Jun 2007 15:51:10 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.239 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.239)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 08:51:07 -0700
Received: by nz-out-0506.google.com with SMTP id x7so946015nzc
        for <beginners@perl.org>; Fri, 22 Jun 2007 08:51:03 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Sr/u2c6XpiOE/F8afR4MlHhUxRg40lcUKjae5yV0ywP5pftCAYgmd78gyuRkQylayjfc8/mOHRRlo42spUSHLP2kNLQbzbexKzv6bhm/2oC3BfHXWHMyiNMLrMTUEJBUlmRYOKC5g8DMOmklQVBxm5mTlHFS9UKMOR3JP8kNzho=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gPMXboX5dgHJFdXrbR8TuvTmwPl1QA6eKPD0ljqkZFMd3sx43eJWTCgNU3jzTD+22pO3hDgCIw5PrFZqg0X3oCblIe0EKBWlQgPXhzHGe7Du1a88pySsor24OV1tVwxrcJ0F8rGuWAcd75NG8P96YTuIwmAw1kqV01EuO3tqYwg=
Received: by 10.114.107.19 with SMTP id f19mr3092117wac.1182527462823;
        Fri, 22 Jun 2007 08:51:02 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 22 Jun 2007 08:51:02 -0700 (PDT)
Message-ID: <58ce48dc0706220851m1b1f84ebrd479ce768c94c648@mail.gmail.com>
Date: Fri, 22 Jun 2007 11:51:02 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Mathew Snyder" <theillien@yahoo.com>
Subject: Re: Proper class setup?
Cc: "Dr.Ruud" <rvtol+news@isolution.nl>, beginners@perl.org
In-Reply-To: <467B9D8C.2050703@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <467B89CE.7080106@yahoo.com>
	 <20070622092747.18820.qmail@lists.develooper.com>
	 <467B9D8C.2050703@yahoo.com>

On 6/22/07, Mathew Snyder <theillien@yahoo.com> wrote:
snip
> I'm not sure what you mean by "Change your new() in a new() and init()".
snip
> What do you mean by "set/get approach"?
snip

Some people believe that new should just create a new blank object and
call an init method to do setup.  There are good arguments both ways.

Manually writing Accessor, Mutator, Getter, or Setter methods sucks
and is error prone.  It is often better to write one getter and one
setter that gets or sets the field(s) passed to it.  Another method is
to use Perl's autoload capability to magically create subroutines for
you.  Starting with some Perl in the 5.8 line the autoload function
gained the ability to be an lvalue, so I have written it that way.

Perl script:
#!/usr/bin/perl

use strict;
use warnings;
use Report;

my $rpt = Report->new;

$rpt->set({id => 5, queue => 10});
print $rpt->printable;

my ($id, $queue) = $rpt->get(qw(id queue));

print "id is $id and queue is $queue\n";

#same thing, but I like the => better
$rpt->set("id", 6);
$rpt->set(id => 6);

print "id is now ", $rpt->get("id"), "\n";

$rpt->id = 7;
print "id is now ", $rpt->id, "\n";

Module:
package Report;

use strict;
use warnings;
use Carp;

our $AUTOLOAD;
our %fields = (
        _id       => 1,
        _queue    => 1,
        _owner    => 1,
        _priority => 1,
        _worked   => 1,
        _timeLeft => 1,
        _due      => 1,
        _created  => 1,
        _updated  => 1,
        _severity => 1,
        _ccl      => 1,
);

#minimal new
sub new {
       my $class = shift;
       my $self  = bless {}, $class;
       $self->init(@_);
       return $self;
}

#real object creation happens here
sub init {
        my $self   = shift;
        my @fields = keys %fields;
        @{$self}{@fields} = (undef) x @fields;
}

sub _validate_field {
        my ($self, $k) = @_;
        croak "$k is not a valid field for " . ref $self
                unless $fields{"_$k"};
}

#Getter/setter method 1
sub get {
        my ($self, @k) = @_;
        my @ret;
        for my $k (@k) {
                $self->_validate_field($k);
                push @ret, $self->{"_$k"};
        }
        local $" = ' ::: ';
        return @ret
}

sub set {
        my $self = shift;
        croak "bad number of arguments" unless @_ == 2 or @_ == 1;
        if (@_ == 2) {
                $self->_validate_field($_[0]);
                return $self->{"_$_[0]"} = $_[1];
        }
        croak "not a hash reference" unless ref $_[0] eq 'HASH';
        my $h = $_[0];
        my @ret;
        for my $k (keys %$h) {
                $self->_validate_field($k);
                push @ret, $self->{"_$k"} = $h->{$k};
        }
        return @ret;
}

#another form of setter/getter

sub AUTOLOAD : lvalue {
        my ($k) = $AUTOLOAD =~ /::(.*?)$/;
        return if $k eq 'DESTROY';
        my $self = shift;
        $self->_validate_field($k);
        $self->{"_$k"};
}

sub printable {
       my ($self) = @_;

       # return Printable Report info
       return $self->id . " " . $self->queue . "\n";
}

1;

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


             

7 
qaef;0In
ni.b
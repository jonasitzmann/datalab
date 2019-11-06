From beginners-return-93026-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 03:28:53 2007
Return-Path: <beginners-return-93026-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l647SpL9007276
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 03:28:52 -0400
Received: (qmail 12185 invoked by uid 514); 4 Jul 2007 07:28:42 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12137 invoked from network); 4 Jul 2007 07:28:42 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 07:28:42 -0000
Received: (qmail 29901 invoked by uid 225); 4 Jul 2007 07:28:41 -0000
Delivered-To: beginners@perl.org
Received: (qmail 29887 invoked by alias); 4 Jul 2007 07:28:41 -0000
X-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FH_HAS_XID,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from mailout05.sul.t-online.com (HELO mailout05.sul.t-online.com) (194.25.134.82)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 00:28:39 -0700
Received: from fwd30.aul.t-online.de 
	by mailout05.sul.t-online.com with smtp 
	id 1I5zHs-0001sf-01; Wed, 04 Jul 2007 09:28:32 +0200
Received: from SONNE.gw.bringe.net (rIp-XqZQweloiIuRYN6WqJld22DBJv5-tM3GqjRT2TBEMl1Z6T3+oj@[84.163.241.250]) by fwd30.aul.t-online.de
	with smtp id 1I5zHe-0J2UxU0; Wed, 4 Jul 2007 09:28:18 +0200
Content-class: urn:content-classes:message
Subject: RE: foreach broken in my script
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Date: Wed, 4 Jul 2007 09:28:02 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
Message-ID: <E350C77ABFDBD242BDD51F5DA07905C101887886@SONNE.gw.bringe.net>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: foreach broken in my script
Thread-Index: Ace+BK/q27rmOZhMSTy0JsyVViGoVwABiZng
From: =?iso-8859-1?Q?Thomas_B=E4tzler?= <t.baetzler@bringe.com>
To: <beginners@perl.org>
X-ID: rIp-XqZQweloiIuRYN6WqJld22DBJv5-tM3GqjRT2TBEMl1Z6T3+oj@t-dialin.net
X-TOI-MSGID: 428137d6-ecd3-4c1f-8998-4867b0f421c4
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l647SpL9007276

Joseph L. Casale <JCasale@ActiveNetwerx.com> wrote:

> I  have a list:
> @list = ('Exchange','Filter','DNS','Domain');
> This is a list of arrays I also have of course to leverage 
> this I am trying to . the @ symbol on it during use.
> 
> foreach $vm (@list) {
>                 my_sub("@" . "$vm");
>                 print "@" . "$vm\n";
> }
> 
> The print likes this, but the my_sub doesn't? Why not?

If you're trying to use symbolic references, well, please
don't. They are evil.

Instead, structure your data into a hash of lists, like

#!/usr/bin/perl

use strict;
use warnings;

# initialize a hash with "array names" as keys and
# anonymous hash references as their value.

my %host = (
	'Exchange' => [ 'foo', 'baz', 'bar' ],
	'Filter' => [ 'foo2', 'baz2', 'bar2' ],
	'DNS' => [ 'foo3', 'baz3', 'bar3' ],
	'Domain' => [ 'blerg' ],
);

# the argument passed to this sub is not an array, but
# an array reference.

sub my_sub {
  my $array_ref = shift;

  # array in scalar context == number of elements
  if( @$array_ref > 1 ){
    # note -> syntax used to dereference the reference
    print "the second element is " . $array_ref->[1] . "\n";
  } else {
    print "the passed array has less than 2 elements\n";
  }
}

# keys %host is the most flexible way to specify a list of all
# key values. The order of the values is indeterminate, so you
# might have to sort to get them in the same order every time.
foreach my $vm ( keys %host ){
  print "values for $vm: " . join(', ', @{$host{$vm}} ) . "\n";
  my_sub( $host{$vm} );
}

__END__

HTH,
Thomas

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



                  

vr*yxoGa
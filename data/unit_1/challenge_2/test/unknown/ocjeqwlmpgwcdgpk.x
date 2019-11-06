From beginners-return-92143-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun  4 20:24:02 2007
Return-Path: <beginners-return-92143-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l550O1hB001983
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 20:24:01 -0400
Received: (qmail 20462 invoked by uid 514); 5 Jun 2007 00:23:49 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 20453 invoked from network); 5 Jun 2007 00:23:49 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jun 2007 00:23:49 -0000
Received: (qmail 13726 invoked by uid 225); 5 Jun 2007 00:23:49 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13720 invoked by alias); 5 Jun 2007 00:23:48 -0000
X-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,KARMA_CONNECT_NEGATIVE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.229 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.229)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 04 Jun 2007 17:23:25 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1461408wxc
        for <beginners@perl.org>; Mon, 04 Jun 2007 17:23:21 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=j0zs836MVuftHhePR0FZlRscLZlpEC0MTdfD0w1cr7S5tBHG++VJYDkr6qq9ilIydDkky2TLw6eWrJpCsKY2YSFgpvU3mEBPnTpAf04KGwufAX7Bhs+nKTpnK+K6/8ipV1KiC0Qvfn7iuR2hY+BJFzIc8kMHmaVesS35wQEcJI8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=e3XjUODwMaIZrfy8HvbY0q1A/1kGSeOZ5NitHIpDzC7ht4dVwDWjWTLGWZQbhJcJa8HwokQ3apSVYZ5vDRD60BLHxKaKyPaDfbKegWWL/43Zboc7hxMpxWejFenTrmTg/oAkbmhM4Tr9VJFEInQwYb5VROqDxsJhsISjSyCHXqc=
Received: by 10.90.118.8 with SMTP id q8mr4380239agc.1181002401595;
        Mon, 04 Jun 2007 17:13:21 -0700 (PDT)
Received: by 10.90.113.16 with HTTP; Mon, 4 Jun 2007 17:13:21 -0700 (PDT)
Message-ID: <31086b240706041713j71f017b8h15606d4f0a80806d@mail.gmail.com>
Date: Mon, 4 Jun 2007 17:13:21 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: GMan <grgies@gmail.com>
Subject: Re: Annoying HASH(0x...) in Output
Cc: beginners@perl.org
In-Reply-To: <1180971296.378503.268270@k79g2000hse.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1180971296.378503.268270@k79g2000hse.googlegroups.com>
X-Google-Sender-Auth: 5a5a5eaff5d064b5

On 6/4/07, GMan <grgies@gmail.com> wrote:

> sub new {
>     my ($class) = @_;
>     my ($self) = { };
>     bless $self, $class;
>     $self->{'_name'} = "";
>     @friends = { };

Wait, what was that? Where did this @friends variable come from? It
should probably be a 'my' variable; if you have 'use strict' and 'use
warnings' enabled, Perl will tell you if you forget a 'my'.

But what were you assigning to it? A reference to an empty hash? I
think you meant this:

  my @friends = ( );    # an empty list - no friends :-(

And that's the same as this:

  my @friends;  # think I can really dance :-)

>     $self->{'_friends'} = \@friends;
>     return $self;
> }

Things go smoothly for a while, and things seem quiet. Too quiet. Then...

> sub addfriend {
>     my ($self,$f) = @_;
>     #dereference the array from the hash
>     $fr = $self->{'_friends'};
>     @friends = @$fr;
>     push @friends,$f;
>     $self->{'friends'} = \@friends;
> }

It looks as if (for lack of 'my') this subroutine is also using the
same @friends that we saw earlier, the package variable also known as
@Person::friends. If that doesn't sell you on 'use strict', nothing
will.

But 'strict' won't tell you when you write 'friends' instead of
'_friends' for a hash key, and 'warnings' won't say that your code
could be written more simply. I think this is it:

        sub addfriend {
           my ($self, $newfriend) = @_;
           # dereference the array from the hash
           my $friendsref = $self->{'_friends'};
           push @$friendsref, $newfriend;
        }

> sub print {
>     my ($self) = @_;
>     printf("Name %s\n",$self->{'_name'});
>     printf("Friends URLs\n");

Using printf is a sure sign of an unreformed C programmer. C uses
printf because C doesn't have string interpolation. Unless you're
using printf for columnar formatting, it has the undocumented side
effect of making other Perl programmers snicker at you behind your
back. But although there's no justification for the second one, the
first printf at least avoids the problem of trying to interpolate a
dereferencing expression, which I'd avoid like this:

    print "Name ", $self->{'_name'}, "\n";

Do these suggestions get you on the road to success? Good luck with it!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

 hYetfZwb0O e#
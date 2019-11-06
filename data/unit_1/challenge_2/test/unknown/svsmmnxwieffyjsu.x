From beginners-return-92303-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 09:49:03 2007
Return-Path: <beginners-return-92303-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CDn0L9026951
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 09:49:01 -0400
Received: (qmail 9685 invoked by uid 514); 12 Jun 2007 13:48:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9669 invoked from network); 12 Jun 2007 13:48:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 13:48:53 -0000
Received: (qmail 22034 invoked by uid 225); 12 Jun 2007 13:48:53 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22009 invoked by alias); 12 Jun 2007 13:48:51 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h205.core.ignum.cz (HELO h205.core.ignum.cz) (217.31.49.205)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 06:48:45 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id 405C658CF8D
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:23 +0200 (CEST)
Received: from kartac.core.ignum.cz (kartac.local.ignum.cz [192.168.1.62])
	by hroch.core.ignum.cz (Postfix) with ESMTP id E152158D0B7
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:22 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by kartac.core.ignum.cz (Postfix) with ESMTP id AA4F52D6341
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:35 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: beginners@perl.org
Date: Tue, 12 Jun 2007 15:48:35 +0200
MIME-Version: 1.0
Subject: Re: Annoying HASH(0x...) in Output
Message-ID: <466EC053.3846.109267A@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <31086b240706041713j71f017b8h15606d4f0a80806d@mail.gmail.com>
References: <1180971296.378503.268270@k79g2000hse.googlegroups.com>, <31086b240706041713j71f017b8h15606d4f0a80806d@mail.gmail.com>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

From: "Tom Phoenix" <tom@stonehenge.com>
> On 6/4/07, GMan <grgies@gmail.com> wrote:
> Things go smoothly for a while, and things seem quiet. Too quiet. Then...
> 
> > sub addfriend {
> >     my ($self,$f) = @_;
> >     #dereference the array from the hash
> >     $fr = $self->{'_friends'};
> >     @friends = @$fr;
> >     push @friends,$f;
> >     $self->{'friends'} = \@friends;
> > }
> 
> It looks as if (for lack of 'my') this subroutine is also using the
> same @friends that we saw earlier, the package variable also known as
> @Person::friends. If that doesn't sell you on 'use strict', nothing
> will.
> 
> But 'strict' won't tell you when you write 'friends' instead of
> '_friends' for a hash key, and 'warnings' won't say that your code
> could be written more simply. I think this is it:
> 
>         sub addfriend {
>            my ($self, $newfriend) = @_;
>            # dereference the array from the hash
>            my $friendsref = $self->{'_friends'};
>            push @$friendsref, $newfriend;
>         }

Or even just

         sub addfriend {
            my ($self, $newfriend) = @_;
            # dereference the array from the hash
            push @{$self->{'_friends'}}, $newfriend;
         }

Just like you use () to make sure mathematical operators are applied 
the way you want you use {} to make sure dereferencing is done right.

You might also change the subroutine a little to allow for

  $obj->addfriend( 'Tom', 'Jenda')

like this:

         sub addfriend {
            my ($self, @newfriends) = @_;
            # dereference the array from the hash
            push @{$self->{'_friends'}}, @newfriends;
         }


Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

YnnE, o5f=Lu6A,
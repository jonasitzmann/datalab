From beginners-return-92588-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 11:11:01 2007
Return-Path: <beginners-return-92588-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KFB0L9011509
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 11:11:01 -0400
Received: (qmail 29190 invoked by uid 514); 20 Jun 2007 15:10:52 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 29181 invoked from network); 20 Jun 2007 15:10:52 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 15:10:52 -0000
Received: (qmail 7605 invoked by uid 225); 20 Jun 2007 15:10:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7598 invoked by alias); 20 Jun 2007 15:10:51 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.178 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 08:10:48 -0700
Received: by wa-out-1112.google.com with SMTP id v27so154014wah
        for <beginners@perl.org>; Wed, 20 Jun 2007 08:10:43 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=AaGRGiFvdMf0vrMclcAIlbaYfu8bXAE7vplsEQnwuJPhWXo5VbVfdtQs1KA83AZCOHVvaE50JdT62kW+SLRScJKywD9Q2TDh2alm0NQiJUYdw9OOp3WQhdRhiMbwG2jNH0bDQwwsFGyNbYONhbULEWHE5L9thBKamF6ZiSdNTxY=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Q43KA6POZ0J1sNvSoSkql8SFSiiknQkJ+Bjo8tBEzTnKOTUSmpW1p6LdlIRQ3Rur8v6jg0yxsaMxThgfne0FXa0enONudzb789gWFl+QIB1BW7AQDmLcEO58H4iLeoKiMrABCboPbKfaNXjzJOzFw874GdFLHN4bseQgHY1pU58=
Received: by 10.114.176.1 with SMTP id y1mr402556wae.1182352243798;
        Wed, 20 Jun 2007 08:10:43 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Wed, 20 Jun 2007 08:10:43 -0700 (PDT)
Message-ID: <58ce48dc0706200810i74bbf948x6636236a9e9a8052@mail.gmail.com>
Date: Wed, 20 Jun 2007 11:10:43 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: yitzle <yitzle@users.sourceforge.net>
Subject: Re: Simple Encryption - what function/module could I use?
Cc: "Perl List" <beginners@perl.org>
In-Reply-To: <ca5781c80706200758t36509321ge3cb7bf5b62d5e1c@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <ca5781c80706192110r10db6ff2h978b4e5ac2fa35a5@mail.gmail.com>
	 <58ce48dc0706200736w184c73d6yd4642bba5b3ccee8@mail.gmail.com>
	 <ca5781c80706200758t36509321ge3cb7bf5b62d5e1c@mail.gmail.com>

On 6/20/07, yitzle <yitzle@users.sourceforge.net> wrote:
> > Without more information about why you want to encrypt something we
> > can give no good advice; so here's some bad advice
> >
> > #!/usr/bin/perl
> >
> > use strict;
> > use warnings;
> >
> > my $plaintext = do { local $/ = undef; <> };
> > my $pad = "X" x length $plaintext;
> >
> > my $encryptedtext = $plaintext      ^ $pad;
> > my $decryptedtext = $encryptedtext  ^ $pad;
> > print "plaintext:\n$plaintext\n\nencryptedtext:\n$encryptedtext\n\n",
> >         "decryptedtext:\n$decryptedtext\n";
> >
>
> I like it! I just need a simple way to encypt text to store in a text
> file. To protect sensitive info.
> Thanks
>

Please note that obscuring the text with xor* is less effective than
using file permissions.  If you are just trying to convince your boss
that the information is "safe" then this might be an acceptable
solution; however, the information is not safe.  Any attacker could
easily undo the encryption in a short period of time and if the
attacker has access to the source code then he/she will be able to
break it instantly.  If there are legal reasons for encrypting the
data, then this will not stand up in court as a reasonable attempt to
secure the data.

* unless you are using a truly randomly generated one-time-pad that is
used once and then thrown away, in which case it is the strongest form
of encryption.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

ohtl40til:=.ISi
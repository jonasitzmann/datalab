From beginners-return-92890-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 29 08:49:04 2007
Return-Path: <beginners-return-92890-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5TCn3L9025784
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 29 Jun 2007 08:49:03 -0400
Received: (qmail 7027 invoked by uid 514); 29 Jun 2007 12:48:55 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7018 invoked from network); 29 Jun 2007 12:48:55 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 29 Jun 2007 12:48:55 -0000
Received: (qmail 7633 invoked by uid 225); 29 Jun 2007 12:48:54 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7620 invoked by alias); 29 Jun 2007 12:48:54 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.227 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.227)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 29 Jun 2007 05:48:50 -0700
Received: by nz-out-0506.google.com with SMTP id v1so126844nzb
        for <beginners@perl.org>; Fri, 29 Jun 2007 05:48:46 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=CzG2Z+Z6xqcxdNqEMrvOypQ3MPmf9feELjv3UrQpmqXVDdp+VMJhlNdHfDfbDjzhzhaINLydR9HYUmmVZXHFCo5Rjgx1YWrSse3J0Kg1mApUoLNm1geFxv25/pcxVetxYchS950uMbM57nsslAGmO8QlLkI/HTc7Lhi7tEb+ILM=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=sfZ0EMb9J+75DpEX5RJ9uAiV/GED089FWg/Xofw/mMXF5HxdWoU2EkV/j+4e961zWBsoQa8Ri7Rpms2ZEEJHqPRYYtsYBT2DAtpdQKu5uy7XH9pgujXTmwwkUYKgjXY/92NLqCpBlMIc4c6csRsy4Z9jjzvwQEyNTsz4tgM02r8=
Received: by 10.114.77.1 with SMTP id z1mr2580949waa.1183121325668;
        Fri, 29 Jun 2007 05:48:45 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Fri, 29 Jun 2007 05:48:45 -0700 (PDT)
Message-ID: <58ce48dc0706290548j3d308173u931267278f8b8307@mail.gmail.com>
Date: Fri, 29 Jun 2007 08:48:45 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "geek.not@gmail.com" <geek.not@gmail.com>
Subject: Re: parse help
Cc: beginners@perl.org
In-Reply-To: <1182997021.965645.287470@q75g2000hsh.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182737622.314446.91750@g4g2000hsf.googlegroups.com>
	 <58ce48dc0706250412n7876d572xcfc99f85f2b69a0d@mail.gmail.com>
	 <1182997021.965645.287470@q75g2000hsh.googlegroups.com>

On 6/27/07, geek.not@gmail.com <geek.not@gmail.com> wrote:
> > I would suggest splitting each record on "\n", looping
> > over the results checking to see if the first character is a space,
> > and appending that line to the last field if it is or creating a new
> > key/value pair if it isn't.
>
> thank you. Would you mind posting sample code that does this trick?

There is nothing tricky about it. (warning untested code)

my @records;
local $/ = "\n\n"; #records are separated by two line feeds
while (<>) {
    my %rec;
    my $name;
    for my $field (split /\n/) {
        if ($field =~ /^ /) { #or if (substr($field,0, 1) eq ' ') { your choice
            $rec{$name} .= $field;
            next;
        }
        ($name, my $value) = split /=/, $field;
        $rec{$name} = $value;
    }
    push @records, \%rec;
}

for my $rec (@records) {
    print "$rec->{host} is owned by $rec->{owner}\n";
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

..aonEJ4
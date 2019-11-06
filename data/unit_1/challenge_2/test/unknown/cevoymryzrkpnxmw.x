From beginners-return-92417-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 09:27:19 2007
Return-Path: <beginners-return-92417-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EDRIL9022129
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:27:19 -0400
Received: (qmail 1605 invoked by uid 514); 14 Jun 2007 13:27:13 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 1596 invoked from network); 14 Jun 2007 13:27:13 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 14 Jun 2007 13:27:13 -0000
Received: (qmail 25016 invoked by uid 225); 14 Jun 2007 13:27:11 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24933 invoked by alias); 14 Jun 2007 13:27:07 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.176 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.176)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 14 Jun 2007 06:27:00 -0700
Received: by wa-out-1112.google.com with SMTP id v27so670345wah
        for <beginners@perl.org>; Thu, 14 Jun 2007 06:26:40 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Vx6qzGuZobSRSOwSSDb0Ta1h7I2RTIi8N5xaaHlfyffsoqKBrhaBtadC2pJ08vNFpBqjBOkWwDDkjssEmdsvSXMe5UqStSDVB36ehe7VK+n3XsyhL3z/I+0COmmceLwZX32/FNfMPys1gqBNkOJKdrJis1+aC/JfSR6eas4OKKA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=L6dw2ZQ//05a7/AH+4SGJ+/D40NBdRq3Z17xFIjloHT1BtySWD9TUwY0BRgG/QemURIzzd/CPUPrFx+6pKVCVdNRInEJG7EADRZ/MT94tKDqr8euNvNxbityULFRgNc+y5K5QT52Erw0oG6lFPyJaX5vCPCl8R/BmPIOdBDbtXg=
Received: by 10.115.92.2 with SMTP id u2mr1792457wal.1181827599707;
        Thu, 14 Jun 2007 06:26:39 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Thu, 14 Jun 2007 06:26:39 -0700 (PDT)
Message-ID: <58ce48dc0706140626g600353abya4aa99bb65c7c846@mail.gmail.com>
Date: Thu, 14 Jun 2007 09:26:39 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "olson.ray@gmail.com" <olson.ray@gmail.com>
Subject: Re: Iterate through a hashref using XML::Simple (real post)
Cc: beginners@perl.org
In-Reply-To: <1181779885.793692.315010@n15g2000prd.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181779885.793692.315010@n15g2000prd.googlegroups.com>

On 6/13/07, olson.ray@gmail.com <olson.ray@gmail.com> wrote:
> Hi
> I'm struggling with the use of XML::Simple so was hoping that someone
> might be able to help me. I'm kind of new to perl, especially when
> dealing with hash references. I would like to iterate through the hash
> that is created by the XMLIn function. Here is my code:
snip
>     $FirstReject = $ref->{RejectRecord}->[0]->{Reason};
>     print "First Reject is $FirstReject \n";
snip

So, $ref is a reference to a hash of arrays of hashes.  You have three
things that can be iterated over.  You can iterate over all three like
this:

for my $k (sort keys %$ref) {
        for my $i (0 .. $#{$ref->{$k}}) {
                for my $k2 (sort keys %{$ref->{$k}[$i]}) {
                        print "$k:$i:$k2 is $ref->{$k}[$i]{$k2}\n";
                }
        }
}

However, I bet you want to iterator over all of the contents of the
RejectRecord key like this

my $max = @{$ref->{RejectRecord}};
for my $i (1 .. $max) {
    print "record $i of $max failed because
$ref->{RejectRecord}[$i-1]{Reason}\n";
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




6"yt11A
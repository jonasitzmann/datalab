From beginners-return-92334-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 19:34:57 2007
Return-Path: <beginners-return-92334-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CNYuL9000751
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 19:34:57 -0400
Received: (qmail 32011 invoked by uid 514); 12 Jun 2007 23:34:52 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32002 invoked from network); 12 Jun 2007 23:34:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 23:34:51 -0000
Received: (qmail 4355 invoked by uid 225); 12 Jun 2007 23:34:51 -0000
Delivered-To: beginners@perl.org
Received: (qmail 4350 invoked by alias); 12 Jun 2007 23:34:50 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 64.233.162.233 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.233)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 16:34:49 -0700
Received: by nz-out-0506.google.com with SMTP id x7so20904nzc
        for <beginners@perl.org>; Tue, 12 Jun 2007 16:34:45 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=E+rsv6ZWJBodBjIEk5/mIe1IG6SNVYOI9NvxjfaYpXSVa/nfPsoNLOI4MnOfiEG1Q6uK72RyzY24BBPjd026nDa3RScjeBAjuiEQdsxSrgFBGhQMjc4DsE6ZawVbko66R7wPJ6bDHKQbDHboUPzpYsHaTZXCl2BC7TlqjTuacHI=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=oTia1JMgqTS+HaofIAxUouRY5wuUdxOnp1vp/7g+Vs4aykCSEOrBS1h03oY5078zfT5W/4M1WmqUQLEtUrVspaY4bKCgXCbZatFSVKgWPeMT8V6+1fU/mpt35w5K6EF6PbZEoj3pzV5wVPWDZux/CzdJSdO1aIIrNJFaeZuHEwE=
Received: by 10.115.111.1 with SMTP id o1mr7194816wam.1181691284709;
        Tue, 12 Jun 2007 16:34:44 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Tue, 12 Jun 2007 16:34:41 -0700 (PDT)
Message-ID: <58ce48dc0706121634p4ada2d51i676dd5aa29b412e6@mail.gmail.com>
Date: Tue, 12 Jun 2007 19:34:41 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: Northstardomus <northstardomus@gmail.com>
Subject: Re: Database insertion, escape issue
Cc: beginners@perl.org
In-Reply-To: <1181666033.860047.209590@g37g2000prf.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181605976.566716.57440@g4g2000hsf.googlegroups.com>
	 <466E87DF.3000500@earthlink.net>
	 <466EC053.23788.1092561@Jenda.Krynicky.cz>
	 <1181666033.860047.209590@g37g2000prf.googlegroups.com>

On 6/12/07, Northstardomus <northstardomus@gmail.com> wrote:
snip
>         $dbh->prepare('INSERT INTO area_status (areaID, survey_date,
> update_time, status ) VALUES (?,?,?,?)');
>         $dbh->execute('$values[0]', '$values[1]', '$values[2]',
> '$values[3]');
snip

You are getting an error because $dbh->prepare returns a statement
handle that can be executed.  The code should be written like this:

my $sth = $dbh->prepare('
    INSERT INTO area_status (areaID, survey_date, update_time, status )
        VALUES (?,?,?,?)
');
$sth->execute(@values[0 .. 3]);

Also, connecting to the database every time you want to do something
is expensive.  You should connect once near the beginning of the
script and use that connection for the rest of the script.  The
statement handle may also be reused, so you might want to name it with
a better name than $sth* like this:

my $dbh = DBI->connect(...);

my $insert_area_status_sth = $dbh->prepare(...);

while (<DATA>) {
    my @rec = split /,/;
    $insert_area_status_sth->execute(@rec) if $rec[0] eq 'Y';
}


* for handles that have a limited scope $sth is perfectly fine

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

haZ > h
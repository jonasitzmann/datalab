From beginners-return-93073-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 23:23:01 2007
Return-Path: <beginners-return-93073-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l653N0L9020682
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 23:23:00 -0400
Received: (qmail 6691 invoked by uid 514); 5 Jul 2007 03:22:51 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6672 invoked from network); 5 Jul 2007 03:22:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 03:22:51 -0000
Received: (qmail 23721 invoked by uid 225); 5 Jul 2007 03:22:50 -0000
Delivered-To: beginners@perl.org
Received: (qmail 23716 invoked by alias); 5 Jul 2007 03:22:50 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.178 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.178)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 20:22:48 -0700
Received: by wa-out-1112.google.com with SMTP id v27so2973841wah
        for <beginners@perl.org>; Wed, 04 Jul 2007 20:22:45 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=gM+KRHLEkz0TFZOTg8V4pgr1gJ6W73758WjSCMiKRkgkmLbnSahIEAxSMicqzZjov+zGAGyqkWX+dMpxtmbRZeyQjzjzT8T2eaTTRB6at2j4UmCh6V0bl2PRXU5VBuVXH7BhvPyInKhjR94Lmquk6fsA6qoswgvigod62P/U5Bo=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=TB3LALUZgKDwPQmrqtV3Ob16Src842cA5bhXmeCOI2u4K7Fo8oHfwsnjliaZdqelaRiqNfTz2c91QDI2rbthUmgaDijJE9VoDPaEfRE1OVq56hioVL+UNdTtgb7gyzdgKdYt8T3vhf1P6xGVmadf9Rq6Gm7tMdYEZc4VWXjtLEQ=
Received: by 10.114.56.1 with SMTP id e1mr7707462waa.1183605764843;
        Wed, 04 Jul 2007 20:22:44 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Wed, 4 Jul 2007 20:22:44 -0700 (PDT)
Message-ID: <58ce48dc0707042022q1dffe7e9r81eefc34440866c8@mail.gmail.com>
Date: Wed, 4 Jul 2007 23:22:44 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Joseph L. Casale" <JCasale@activenetwerx.com>
Subject: Re: syntax error of some sort?
Cc: "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCD9@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCD9@an-ex.ActiveNetwerx.int>

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:
> Heh, I am running out of hair:P
> I get two errors to start, one is the warning that is better write:
> my ($vm) = $_[0];
> instead of
> my ($vm) = @_[0];

The proper way to say this is

my ($vm) = @_;

And looking at your data I would suggest

my ($vm, @disks) = @_;

snip
> @list = (Exchange,Filter,DNS,Domain)
snip
> And there are unspecified errors at 9 and 13?
> I cant see what else is wrong in the sub?
snip

You are missing quotes and a semicolon.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

sn0apBiv"
From beginners-return-93065-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 22:15:07 2007
Return-Path: <beginners-return-93065-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l652F5L9020028
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 22:15:06 -0400
Received: (qmail 10143 invoked by uid 514); 5 Jul 2007 02:14:56 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 10134 invoked from network); 5 Jul 2007 02:14:55 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jul 2007 02:14:55 -0000
Received: (qmail 26903 invoked by uid 225); 5 Jul 2007 02:14:55 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26898 invoked by alias); 5 Jul 2007 02:14:54 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.177 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.177)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 19:14:52 -0700
Received: by wa-out-1112.google.com with SMTP id v27so2959189wah
        for <beginners@perl.org>; Wed, 04 Jul 2007 19:14:51 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=I5eb5fruDLOllDAM0+uM3lE4IgTaZG3+e+pxXkuM5aDQX9ORdGNTRgVSIYaSfFrvCMn4UU5zCzoAwbc0wLr8TLAAUOANb/zaGTLCDO7wfuQT+9RD9n5vqBeGyjI54cfRVDGu6hqvPWJW2DR7qfV+GyOHSpvdygvPiShmtd9uqeY=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=j+P0NOE96fzKXW5fPyC4bJkYGPAO3XmCXqqWCkFvYPB5p+rzX7whI4VVpnUhA3DiDlhYvxsI4JGhVtM0CqUY9FlLWaPvN2T7rOQDvOiiD3/ruGeBd5QAhA60DBLC88mt22UTzAY8cxjqyyYqh60F6UIrgDXuPHN3getzyQmwFMQ=
Received: by 10.114.196.1 with SMTP id t1mr7713795waf.1183601691841;
        Wed, 04 Jul 2007 19:14:51 -0700 (PDT)
Received: by 10.114.79.3 with HTTP; Wed, 4 Jul 2007 19:14:51 -0700 (PDT)
Message-ID: <58ce48dc0707041914r146b94b9l8731d2477e0cb2e3@mail.gmail.com>
Date: Wed, 4 Jul 2007 22:14:51 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: "Joseph L. Casale" <JCasale@activenetwerx.com>
Subject: Re: syntax error of some sort?
Cc: "beginners@perl.org" <beginners@perl.org>
In-Reply-To: <80D663F66DF55241BD12E3DB42DDF132045367CCD5@an-ex.ActiveNetwerx.int>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <80D663F66DF55241BD12E3DB42DDF132045367CCD5@an-ex.ActiveNetwerx.int>

On 7/4/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:
snip
>                 if ($state == 'on') {
>                                 'vmware-cmd $_[0] stop soft';
>                                 my $tools = `/usr/bin/vmware-cmd \"$_[0]\" gettoolslastactive -q`;
>                                 chomp($tools);
>                 }
>                 while (($state == 'on') && ($tools == 1)) {
>                                 sleep 30;
>                                 my $tools = `/usr/bin/vmware-cmd \"$_[0]\" gettoolslastactive -q`;
>                                 chomp($tools);
>                 }
> }
snip
> I am getting two errors I think, and I don't understand them.
> The first is the second use of my $tools, how can I do this
> without causing an error? Can I just start using $tools right after without my?

The while belongs inside of the if like this:

               if ($state == 'on') {
                               'vmware-cmd $_[0] stop soft';
                               my $tools = `/usr/bin/vmware-cmd
\"$_[0]\" gettoolslastactive -q`;
                               chomp($tools);

                               while ($tools == 1) {
                                              sleep 30;
                                              $tools =
`/usr/bin/vmware-cmd \"$_[0]\" gettoolslastactive -q`;
                                              chomp($tools);
                              }
               }

snip
> The second I am sure is the darn () in the file names I am feeding
> into the function. Can someone shed some light :) I need to call the
> first indices of many arrays that get passed into this function, so I
> was thinking $_[0] was what I need. Problem is that the execution
> of vmware-cmd needs the value of $_[0] passed to it inside quotes.
snip

In your example $_[0] is
"/vmfs/volumes/467f06a5-7d59c067-35cb-0007e9153886/Web & DNS (Win2003
Std x32)/Web & DNS (Win2003 Std x32).vmx"

If you want to perform stop_it on or with many values you will need to
put a loop outside or inside the sub.  Given the way your code is
currently written this should work:

stop_it($_) for @DNS;

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

iTge
/
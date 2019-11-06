From beginners-return-92821-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 27 18:11:37 2007
Return-Path: <beginners-return-92821-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5RMBaL9000691
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 18:11:36 -0400
Received: (qmail 28512 invoked by uid 514); 27 Jun 2007 22:11:29 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 28503 invoked from network); 27 Jun 2007 22:11:28 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 27 Jun 2007 22:11:28 -0000
Received: (qmail 22345 invoked by uid 225); 27 Jun 2007 22:11:28 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22339 invoked by alias); 27 Jun 2007 22:11:28 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.183 as permitted sender)
Received: from wa-out-1112.google.com (HELO wa-out-1112.google.com) (209.85.146.183)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 27 Jun 2007 15:11:23 -0700
Received: by wa-out-1112.google.com with SMTP id v27so37433wah
        for <beginners@perl.org>; Wed, 27 Jun 2007 15:11:18 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BpQ2nZZtW12nqKVNdaOc1ltSZ08yX3KU5sS/NUzgAQlA4flSHTJOHiWEE4WUtuCoZC7Cx4RvgoYMQtaAsFNgCokX27oobwsyUU0DtgMNj4T4F6tbMC4ApfenneTt7VwUvNxJDeipEbXzRXnIkRw06Ku3SS8O4LERt3ocZez0m8U=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=I7H8GLsGag+9FZ4zh9meTNNk67PBZ1ZLtGARj4taTFbWDI5FaHzArzni2NQ5Uo6QJ8+SgBB8AjOCg10A5d117lbZnqPJqVYjukkfmbFvdD2Ehee9tkTit7CRV+faZdayTMPf4cVWxMvO8bpCjIWOc3RoHVY3OpPyS+DaBS7wU5o=
Received: by 10.114.12.9 with SMTP id 9mr939864wal.1182982278796;
        Wed, 27 Jun 2007 15:11:18 -0700 (PDT)
Received: by 10.114.102.6 with HTTP; Wed, 27 Jun 2007 15:11:18 -0700 (PDT)
Message-ID: <58ce48dc0706271511u72cd17eage2f59f8288b3c70f@mail.gmail.com>
Date: Wed, 27 Jun 2007 18:11:18 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: Rick <rbw940@yahoo.com>
Subject: Re: Beginner needs help
Cc: beginners@perl.org
In-Reply-To: <58ce48dc0706271507t6e0e6730x56ede71eb5fd5e2a@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182970914.291118.241060@o61g2000hsh.googlegroups.com>
	 <58ce48dc0706271507t6e0e6730x56ede71eb5fd5e2a@mail.gmail.com>

On 6/27/07, Chas Owens <chas.owens@gmail.com> wrote:
> On 6/27/07, Rick <rbw940@yahoo.com> wrote:
> > Ok so the boss wants me to create two scripts in perl and I don't even
> > know where to begin.
> >
> > One is to copy a log file to a backup server every hour.
> >
> > And the second is to restore the backup from one server from the
> > previous night to the backup server every morning.
> >
> > Any ideas on where to start would be greatly appreciated.
> snip
>
> A lot depends on your knowledge of Perl.  Given that you have no idea
> where to begin I assume you know nothing.  Run out and buy Learning
> Perl.  Read the first few chapters and then take a look at Net::FTP*
> or Net::SCP*.  If you still have questions how things work then post
> them with the code you are trying to make work to the list.
>
> * http://search.cpan.org/~gbarr/libnet-1.21/Net/FTP.pm
> * http://search.cpan.org/~ivan/Net-SCP-0.07/SCP.pm
>


Specifically chapters 2 Scalar Data, 4 Subroutines, 6 I/O Basics, and
11 Filehandles and File Tests.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

Y)on3uV>
vp<


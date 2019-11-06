From beginners-return-92676-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:13:11 2007
Return-Path: <beginners-return-92676-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MNDAL9010767
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:13:10 -0400
Received: (qmail 3780 invoked by uid 514); 22 Jun 2007 18:04:51 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 3771 invoked from network); 22 Jun 2007 18:04:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 22 Jun 2007 18:04:51 -0000
Received: (qmail 30960 invoked by uid 225); 22 Jun 2007 18:04:50 -0000
Delivered-To: beginners@perl.org
Received: (qmail 30886 invoked by alias); 22 Jun 2007 18:04:47 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.228 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.228)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 22 Jun 2007 11:04:43 -0700
Received: by wx-out-0506.google.com with SMTP id r21so945048wxc
        for <beginners@perl.org>; Fri, 22 Jun 2007 11:04:12 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=QGrhmf7SSP4j87VgvXV8BkpPv66pbpxWRXmlrAVHJs6J9KYklTWCjS6C9M1tZqjw6z30E0IuXPLEg+0uoRJSZK2/sr2btQDrF+MWjo1SXyYU72puipmFczxQ4P1FnGasfv20xg8T1zi61ay6RiTmJT2nKHwqytEVDpK1WGWjl3M=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=rqHRNxQNTsHTcMOx9d6MNYEgEnlilFUTh9u6LN9aAY4Q8zZ+n9kaVBLov3p5rwmxt7E2GDU8HHIQWosSuT/XVd556UdX+Wm/JIm9c6laSehnqWua3DR86WOB5+ZqGhfGcLSR5y7C18lGr1Kb+nlUpJeVIMjc7a7SJjXdo48E0m8=
Received: by 10.90.119.15 with SMTP id r15mr2970950agc.1182535452116;
        Fri, 22 Jun 2007 11:04:12 -0700 (PDT)
Received: by 10.90.116.9 with HTTP; Fri, 22 Jun 2007 11:04:12 -0700 (PDT)
Message-ID: <31086b240706221104y227e6bd3r9c232eac2b402137@mail.gmail.com>
Date: Fri, 22 Jun 2007 11:04:12 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "dustin.ho@gmail.com" <dustin.ho@gmail.com>
Subject: Re: How can I compare Bytes in a Binary File?
Cc: beginners@perl.org
In-Reply-To: <1182528239.062413.205480@q75g2000hsh.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1182528239.062413.205480@q75g2000hsh.googlegroups.com>
X-Google-Sender-Auth: 53344572f0993861

On 6/22/07, dustin.ho@gmail.com <dustin.ho@gmail.com> wrote:

> I've got a binary file here that I'm reading byte by byte and I'm
> trying to compare the raw binary data... but I'm running into problems
> with bytes without an ASCII representation. For example, if I'm
> looking for hex value 58 its fine, because I can just read a byte and
> see if ($byte eq "X") since 58 is X in ASCII. What if I want to search
> for ff or c6 or something which has no ASCII representation?

Maybe you don't want binary data, but hex data?

  my $hex = unpack "H*", $data;

Or maybe you want bytes?

  my @bytes = unpack "C*", $data;

You could do a substring search:

  my $location = index $data, "X\xff\xc6";

Or maybe you want regular expressions?

  if ($data =~ /X\xff\xc6/) { print "hmmm...\n" }

Does anything there look useful?

But if you've got a kind of binary file that anybody else might have
wanted to use Perl to look at more than once in the past decade,
there's probably a module on CPAN for you. For example, if you were
trying to find the xy dimensions of an image file, that's easy with
the right module, with no need to muck about in the bytes from within
your own code.

    http://search.cpan.org

Hope this helps!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

ri5n5lx.tsl+
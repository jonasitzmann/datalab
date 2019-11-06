From beginners-return-92957-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jul  2 12:55:45 2007
Return-Path: <beginners-return-92957-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l62GthL9016359
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 12:55:44 -0400
Received: (qmail 17116 invoked by uid 514); 2 Jul 2007 16:55:34 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 17107 invoked from network); 2 Jul 2007 16:55:34 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jul 2007 16:55:34 -0000
Received: (qmail 26933 invoked by uid 225); 2 Jul 2007 16:55:33 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26893 invoked by alias); 2 Jul 2007 16:55:32 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.229 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.229)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 02 Jul 2007 09:55:31 -0700
Received: by wx-out-0506.google.com with SMTP id t11so538205wxc
        for <beginners@perl.org>; Mon, 02 Jul 2007 09:55:26 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=U98noqBJURBHZ/O3LA6T6MztyJlHNj9LZ3wzmBoEAO83rGqN+oAjTNLA64zsPbhNlnfW1JvSXqKJJ2wSIYJC0CU3KWNWBh+rVSAbhtJClV5f0KmQkZPKRbZOMLAmT0qCBRn4o6NkEGQwjAWKPnkMh4cfEninAwxgIRzYkopUepU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=Na8MJiSR6CZs7N7Stxnyw5VXcX6dqE8dAh6+ytyLldWNRLwaBYiGTgP/DlMk+gt9SZz3TjVPnqaeqYUY2AlDXR/R14ndlFi8KHyUsc5vBdqQfgOMSU3Vlq95UjVn1rV00o1birKCvCXgVbRqG6bG/62Qgvf3KemKG3IerH1UI9Y=
Received: by 10.90.97.11 with SMTP id u11mr5201072agb.1183395326712;
        Mon, 02 Jul 2007 09:55:26 -0700 (PDT)
Received: by 10.90.116.2 with HTTP; Mon, 2 Jul 2007 09:55:26 -0700 (PDT)
Message-ID: <31086b240707020955s6de7c84fhc988155e44cb1de1@mail.gmail.com>
Date: Mon, 2 Jul 2007 09:55:26 -0700
From: "Tom Phoenix" <tom@stonehenge.com>
Sender: tom.phoenix@gmail.com
To: "nagandla@gmail.com" <nagandla@gmail.com>
Subject: Re: sorted hash positions
Cc: beginners@perl.org
In-Reply-To: <1183382426.084705.116910@d30g2000prg.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1183382426.084705.116910@d30g2000prg.googlegroups.com>
X-Google-Sender-Auth: d304daebd53c511b

On 7/2/07, nagandla@gmail.com <nagandla@gmail.com> wrote:

> %coins = ( "12345" , 91,
>            "987658" ,35.5,
>            "wer123", 99.8,
>                     "456hn",56.4,
>                         "34567",78.9,
>                         "00000",99.9,
>                         "yui345",45.4);

> wat i need is for ex if i gave 34567 it has to tell the position of
> the hash 4th position...

It's not the fourth position; it's the value filed under key "34567".
And that's here:

    $coins{"34567"}

That's part of the elegance of a hash; direct access to any element.

Hope this helps!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

rs(1oiDttSo
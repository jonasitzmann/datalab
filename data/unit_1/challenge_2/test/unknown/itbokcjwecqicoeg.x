From beginners-return-92267-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun  9 17:34:14 2007
Return-Path: <beginners-return-92267-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l59LYDL9014319
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 17:34:13 -0400
Received: (qmail 431 invoked by uid 514); 9 Jun 2007 21:34:09 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 421 invoked from network); 9 Jun 2007 21:34:08 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 9 Jun 2007 21:34:08 -0000
Received: (qmail 9504 invoked by uid 225); 9 Jun 2007 21:34:07 -0000
Delivered-To: beginners@perl.org
Received: (qmail 9485 invoked by alias); 9 Jun 2007 21:34:07 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of tom.phoenix@gmail.com designates 66.249.82.230 as permitted sender)
Received: from wx-out-0506.google.com (HELO wx-out-0506.google.com) (66.249.82.230)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 09 Jun 2007 14:34:03 -0700
Received: by wx-out-0506.google.com with SMTP id r21so1244910wxc
        for <beginners@perl.org>; Sat, 09 Jun 2007 14:33:59 -0700 (PDT)
Received: by 10.90.49.1 with SMTP id w1mr3594442agw.1181349810452;
        Fri, 08 Jun 2007 17:43:30 -0700 (PDT)
Received: by 10.90.113.16 with HTTP; Fri, 8 Jun 2007 17:43:30 -0700 (PDT)
Message-ID: <31086b240706081743k37c5239r4bc8af6b6a65b976@mail.gmail.com>
Date: Fri, 8 Jun 2007 17:43:30 -0700
From: "Tom Phoenix" <rootbeer@redcat.com>
Sender: tom.phoenix@gmail.com
To: ash <ashishrai@gmail.com>
Subject: Re: Removing decimal points
Cc: beginners@perl.org
In-Reply-To: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <1181332379.563611.75210@p77g2000hsh.googlegroups.com>
X-Google-Sender-Auth: 894a92e1cc04bed7

On 6/8/07, ash <ashishrai@gmail.com> wrote:

> I need to remove decimal points from numbers. For eg 1.23 or 1.77
> would be just 1. Any suggestion is appreciated. Thank you.

Sounds as if you're looking for int, which is documented in the
perlfunc manpage. If that's not it, someone can show you how to round,
floor, ceil, or whatever you need. Cheers!

--Tom Phoenix
Stonehenge Perl Training

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

/y $<
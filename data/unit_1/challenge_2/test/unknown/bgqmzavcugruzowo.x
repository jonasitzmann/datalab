From beginners-return-92518-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 10:51:05 2007
Return-Path: <beginners-return-92518-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5IEp4L9018665
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 10:51:05 -0400
Received: (qmail 12970 invoked by uid 514); 18 Jun 2007 14:50:58 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12954 invoked from network); 18 Jun 2007 14:50:57 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 18 Jun 2007 14:50:57 -0000
Received: (qmail 25634 invoked by uid 225); 18 Jun 2007 14:50:57 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25622 invoked by alias); 18 Jun 2007 14:50:56 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web35702.mail.mud.yahoo.com (HELO web35702.mail.mud.yahoo.com) (66.163.179.156)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 18 Jun 2007 07:50:50 -0700
Received: (qmail 53967 invoked by uid 60001); 18 Jun 2007 14:50:45 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type:Message-ID;
  b=chJ1oxYokhMMLT7m7zKeiNpY0pAaeeNsfFG+e/kk0wDU0qiwIXbJnOhWX2SYO2YRsLsXDcFn1sZUtoCLeJ/OccbRWHFbrrNITTk3ksUJBcTlZZGEdMOMbuz/DIWfnvCnOzruEhumRpSnRCZxLLSomRyM+gFTW+xPUAGEfzq5kT8=;
X-YMail-OSG: A5cV5sIVM1kBfMKm1SubXdUpUA0szqoIpZyjfPrisb6SooUphnIjEJMv77PiEJOl2WqlBwPYwtSgBlJ7wlRVgP9jkSivZqqozyCWyly4puKwBPvSLEl5saWrtYbNag--
Received: from [209.191.106.127] by web35702.mail.mud.yahoo.com via HTTP; Mon, 18 Jun 2007 07:50:45 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Mon, 18 Jun 2007 07:50:45 -0700 (PDT)
From: John Degen <jeehannes@yahoo.com>
Subject: Re: Command line usage
To: Paul Lalli <mritty@gmail.com>, beginners@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Message-ID: <864184.53174.qm@web35702.mail.mud.yahoo.com>


-- 
Sane sicut lux seipsam, & tenebras manifestat, sic veritas norma sui, & falsi est. -- Spinoza
>
>
>----- Original Message ----
>From: Paul Lalli <mritty@gmail.com>
>To: beginners@perl.org
>Sent: Monday, June 18, 2007 3:56:04 PM
>Subject: Re: Command line usage
>
>On Jun 18, 8:40 am, jeehan...@yahoo.com (John Degen) wrote:
>> Thanks for your speedy reply Bob. I tried your suggestion, but the same outcome: the command fails without any complaints. BTW, the files didn't have extensions. They are three test files (plain text) containing respectively "love, live and luve". The actual command that I tried was perl -i -e "s/ve/ver/" *.*
>> Any other ideas I might try?
>
>Windows has never let me replace files inline - that is, you can't not
>give an extension for the -i option.  You have to provide it with an
>extension so that the original files are saved as backups.  (However,
>it's always given me an error when I've tried - not sure why you're
>not getting one).
>
>try:
>perl -i.bkp -e"s/ve/ver/" *.*
>
>You can also run a quick test to determine what * and *.* mean in
>Windows by something like this:
>
>perl -le"print for @ARGV" *
>perl -le"print for @ARGV" *.*
>
>Paul Lalli

Thanks Paul,

I think I'm out of luck with this OS;) Your suggestion for creating a backup file gave the same result: no error, no change in the files. The output of 'perl -le"print for @ARGV" *'  is * and the other is *.*. Funny though that sed *does* work.

Best regards,

John Degen
-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/







       
____________________________________________________________________________________
Take the Internet to Go: Yahoo!Go puts the Internet in your pocket: mail, news, photos & more. 
http://mobile.yahoo.com/go?refer=1GNXIC

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                  

 lagA(.vm
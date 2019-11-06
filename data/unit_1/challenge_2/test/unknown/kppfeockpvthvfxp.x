From beginners-return-92530-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 18 17:54:48 2007
Return-Path: <beginners-return-92530-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5ILslL9022275
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 17:54:47 -0400
Received: (qmail 11214 invoked by uid 514); 18 Jun 2007 21:54:40 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 11205 invoked from network); 18 Jun 2007 21:54:40 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 18 Jun 2007 21:54:40 -0000
Received: (qmail 544 invoked by uid 225); 18 Jun 2007 21:54:39 -0000
Delivered-To: beginners@perl.org
Received: (qmail 535 invoked by alias); 18 Jun 2007 21:54:38 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from web35710.mail.mud.yahoo.com (HELO web35710.mail.mud.yahoo.com) (66.163.179.164)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 18 Jun 2007 14:54:30 -0700
Received: (qmail 65247 invoked by uid 60001); 18 Jun 2007 21:54:26 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type:Message-ID;
  b=x6q1ZJsp4OvrMy9TJYgycFLKkWGPvMDoUcX0gz6UCIaJDo0GuWy927oyN+5+uVCwppEqJ+OMusAyc5X5LoDIRUnvodtdFpLLbmFGCbWaJfpfawKgJwH5b4QXgw8VLzMB8vaaYs8nX8LR4usiBXIw8mXWxfze1cN84liCHpsxu0g=;
X-YMail-OSG: FtDsp3IVM1m4WbDO5_E_N7aZY3OfZi4w6rht.oi0.suXae2_MveJbva6uecYVLVWP.U96j8dR6UG1UNv7PgD6_E8UUkla967JgLn0mR17m27pUum6HA-
Received: from [68.142.201.145] by web35710.mail.mud.yahoo.com via HTTP; Mon, 18 Jun 2007 14:54:25 PDT
X-Mailer: YahooMailRC/651.29 YahooMailWebService/0.7.41.16
Date: Mon, 18 Jun 2007 14:54:25 -0700 (PDT)
From: John Degen <jeehannes@yahoo.com>
Subject: Re: Command line usage [solved]
To: Paul Lalli <mritty@gmail.com>, beginners@perl.org
MIME-Version: 1.0
Content-Type: text/plain; charset=ascii
Message-ID: <1068.64986.qm@web35710.mail.mud.yahoo.com>

>
>
>----- Original Message ----
>From: Paul Lalli <mritty@gmail.com>
>To: beginners@perl.org
>Sent: Monday, June 18, 2007 6:47:05 PM
>Subject: Re: Command line usage
>
>On Jun 18, 10:50 am, jeehan...@yahoo.com (John Degen) wrote:
>
>> I think I'm out of luck with this OS;) Your suggestion for creating a backup
>> file gave the same result: no error, no change in the files. The output of
>> 'perl -le"print for @ARGV" *'  is * and the other is *.*. Funny though that
>> sed *does* work.
>
>Ah.  Well there's your problem.  The command line interpreter you're
>running doesn't expand wildcards.  That's why Perl wasn't giving you
>any errors - it had nothing to do because there was no file named "*"
>that it could find...   You'll have to expand the wildcard from within
>Perl.
>
>perl -pi.bkp -e"BEGIN { @ARGV = glob($ARGV[0]); }  s/old/new/;" *
>
>Hope this helps,
>Paul Lalli

Thank you all for your responses. Paul's suggestion above is the winner. The command works, creates a neat backup file and does what it's told. I'll be checking the docs to see *why* it works:)

Best regards,

John Degen


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/







 
____________________________________________________________________________________
Get your own web address.  
Have a HUGE year through Yahoo! Small Business.
http://smallbusiness.yahoo.com/domains/?p=BESTDEAL

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

cUAf/=ne f